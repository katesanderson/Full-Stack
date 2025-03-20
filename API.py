from flask import Flask, jsonify, request
from db_utils import get_all_books, add_new_book, delete_book


app = Flask(__name__)

@app.route("/books", methods=["GET"])
def get_all_books_view():
    return jsonify(get_all_books())

@app.route("/books/add", methods=["POST"])
def add_new_book_view():
    new_book = request.get_json()
    return jsonify(add_new_book(new_book))

@app.route("/books/remove/<int:id>", methods=["DELETE"])
def delete_book_view(id):
    return jsonify(delete_book(id))


if __name__ == "__main__":
    app.run(debug=True)