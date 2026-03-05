-- V9__Import_Python_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Python: Basic List Comprehension', 'Creates a list of squares.', 'numbers = [1, 2, 3, 4, 5]
squares = [x**2 for x in numbers]
print(squares)', 'Python', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Dictionary Comprehension', 'Maps names to lengths.', 'names = ["Alice", "Bob", "Charlie"]
name_lengths = {name: len(name) for name in names}
print(name_lengths)', 'Python', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Simple Decorator', 'A function that wraps another function.', 'def debug(func):
    def wrapper(*args, **kwargs):
        print(f"Calling {func.__name__}")
        return func(*args, **kwargs)
    return wrapper

@debug
def say_hello(name):
    print(f"Hello {name}")', 'Python', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Context Manager (with)', 'Safely handling file operations.', 'with open("test.txt", "w") as f:
    f.write("Hello Python!")', 'Python', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Generator Function', 'Memory-efficient iteration.', 'def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

for num in fibonacci(10):
    print(num)', 'Python', 'Techniques', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Type Hinting', 'Modern type annotations.', 'def greet(name: str, age: int) -> str:
    return f"Hello {name}, you are {age} years old."', 'Python', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Argument Parsing', 'Using argparse for CLI tools.', 'import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--name", help="Your name")
args = parser.parse_args()
print(f"Hello {args.name}")', 'Python', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Requests HTTP Get', 'Fetching data from an API.', 'import requests

response = requests.get("https://api.github.com")
data = response.json()
print(data["repository_url"])', 'Python', 'Networking', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Lambda and Map', 'Functional programming style.', 'nums = [1, 2, 3, 4]
doubled = list(map(lambda x: x * 2, nums))', 'Python', 'Techniques', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Class with Property', 'Encapsulation using @property.', 'class Circle:
    def __init__(self, radius):
        self._radius = radius

    @property
    def radius(self):
        return self._radius', 'Python', 'OOP', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Flask Hello World', 'Minimal web application.', 'from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"', 'Python', 'Frameworks', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Fast API Starter', 'Modern async web API.', 'from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}', 'Python', 'Frameworks', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Try Except Finally', 'Robust error handling.', 'try:
    x = 1 / 0
except ZeroDivisionError:
    print("Cannot divide by zero")
finally:
    print("Execution complete")', 'Python', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: JSON Serialization', 'Converting objects to JSON.', 'import json

data = {"id": 1, "active": True}
json_string = json.dumps(data, indent=4)
print(json_string)', 'Python', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: OS List Directory', 'Working with the filesystem.', 'import os

files = os.listdir(".")
for file in files:
    print(file)', 'Python', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Pandas CSV Read', 'Data analysis basics.', 'import pandas as pd

df = pd.read_csv("data.csv")
print(df.head())', 'Python', 'Data Science', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Numpy Array creation', 'Mathematical array processing.', 'import numpy as np

arr = np.array([1, 2, 3])
print(arr * 2)', 'Python', 'Data Science', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Threading Basics', 'Simple concurrent execution.', 'import threading

def worker():
    print("Worker running")

t = threading.Thread(target=worker)
t.start()', 'Python', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: Abstract Base Class', 'Enforcing interface implementation.', 'from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self): pass', 'Python', 'OOP', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: List Filtering (Filter)', 'Functional list filtering.', 'nums = [1, 2, 3, 4, 5, 6]
evens = list(filter(lambda x: x % 2 == 0, nums))', 'Python', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
