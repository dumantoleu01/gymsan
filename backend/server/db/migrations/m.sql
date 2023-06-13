CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    token TEXT,
    expiry DATETIME
);

CREATE TABLE workouts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL
);

CREATE TABLE categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE liked (
    user_id INTEGER NOT NULL,
    workout_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (workout_id) REFERENCES workouts(id)
);

CREATE TABLE workout_detail (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    workout_id INT NOT NULL,
    name TEXT NOT NULL,
    image TEXT,
    description TEXT NOT NULL,
    time TIMESTAMP,
    rep INTEGER,
    FOREIGN KEY (workout_id) REFERENCES workouts(id)
);

CREATE TABLE categories_workouts (
    category_id INTEGER PRIMARY KEY AUTOINCREMENT,
    workout_id INTEGER NOT NULL,
    FOREIGN KEY (workout_id) REFERENCES workouts(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);