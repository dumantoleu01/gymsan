CREATE TABLE workout_detail (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    workout_id INT NOT NULL,
    name TEXT NOT NULL,
    image TEXT,
    description TEXT NOT NULL,
    time INTEGER,
    rep INTEGER,
    FOREIGN KEY (workout_id) REFERENCES workouts(id)
);