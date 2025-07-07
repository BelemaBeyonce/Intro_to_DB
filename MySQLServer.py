import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL Server
        connection = mysql.connector.connect(
            host="localhost",      # change if your MySQL is hosted elsewhere
            user="root",           # replace with your username
            password="root"  # replace with your actual password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as e:
        print(f"Error: Could not connect to the database. \nDetails: {e}")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

if __name__ == "__main__":
    create_database()