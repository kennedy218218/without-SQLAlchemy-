from lib.db.connection import get_connection

def run_schema():
    conn = get_connection()
    with open("lib/db/schema.sql") as f:
        conn.executescript(f.read())
    conn.commit()
    conn.close()

if __name__ == "__main__":
    run_schema()
    print("Database schema created.")