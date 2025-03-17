import mysql.connector
import sys
import logging
from sentence_transformers import SentenceTransformer, util

# Configure logging
logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

# Load the BERT-based model for semantic similarity
model = SentenceTransformer("all-mpnet-base-v2")

# Database configuration
DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "1234",
    "database": "mock_interview"
}

def get_correct_answer(question_id, skill):
    """Fetches the correct answer from the appropriate skill table."""
    try:
        with mysql.connector.connect(**DB_CONFIG) as conn, conn.cursor(dictionary=True) as cursor:
            query = f"SELECT answer FROM {skill}_questions WHERE id = %s"
            cursor.execute(query, (question_id,))
            result = cursor.fetchone()
            return result["answer"].strip() if result and result["answer"] else None
    except mysql.connector.Error as err:
        logging.error(f"Database error while fetching answer for QID {question_id}, Skill {skill}: {err}")
        return None

def evaluate_answer(user_answer, correct_answer):
    """Evaluates using cosine similarity and converts to an integer score (0-100)."""
    if not user_answer.strip():
        return 0  # Empty answers should get 0 score
    embeddings = model.encode([user_answer, correct_answer])
    similarity = util.cos_sim(embeddings[0], embeddings[1])
    return round(similarity.item() * 100)  # Convert to percentage

def get_feedback(score):
    """Returns feedback based on the score."""
    if score >= 90:
        return "Excellent!"
    elif score >= 75:
        return "Good!"
    elif score >= 50:
        return "Needs Improvement!"
    else:
        return "Almost there, keep trying!"

def process_and_evaluate(user_id):
    """Fetches all answers submitted by a user, evaluates, and updates the table."""
    try:
        with mysql.connector.connect(**DB_CONFIG) as conn, conn.cursor(dictionary=True) as cursor:
            cursor.execute("SELECT question_id, skill, user_answer FROM user_answers WHERE user_id = %s", (user_id,))
            user_answers = cursor.fetchall()

            if not user_answers:
                logging.info(f"No answers found for User ID: {user_id}")
                return

            for record in user_answers:
                question_id = record["question_id"]
                skill = record["skill"]
                user_answer = record["user_answer"].strip()

                correct_answer = get_correct_answer(question_id, skill)
                if not correct_answer:
                    logging.warning(f"Correct answer not found for QID {question_id}, Skill {skill}. Skipping.")
                    continue

                score = evaluate_answer(user_answer, correct_answer)
                feedback = get_feedback(score)

                cursor.execute(
                    "UPDATE user_answers SET score = %s, feedback = %s WHERE user_id = %s AND question_id = %s",
                    (score, feedback, user_id, question_id)
                )
                conn.commit()

                logging.info(f"✅ Evaluated QID {question_id} (Skill: {skill}) for User {user_id} | Score: {score} | Feedback: {feedback}")
 
    except mysql.connector.Error as err:
        logging.error(f"Database error while processing evaluation for User ID {user_id}: {err}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        logging.error("❌ Error: User ID not provided.")
        sys.exit(1)
    
    user_id = sys.argv[1]
    process_and_evaluate(user_id)
    logging.info(f"✅ Evaluation complete for User ID: {user_id}")
