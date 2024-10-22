CREATE TABLE categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  TYPE TEXT CHECK(TYPE IN ('income', 'expense')) NOT NULL
);

CREATE TABLE transactions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  TYPE TEXT CHECK(TYPE IN ('income', 'expense')) NOT NULL,
  category INTEGER,
  amount REAL NOT NULL,
  date TEXT NOT NULL,
  description TEXT,
  FOREIGN KEY (category) REFERENCES categories(id)
);