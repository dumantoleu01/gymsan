CREATE TABLE liked (
    user_id INTEGER NOT NULL,
    workout_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (workout_id) REFERENCES workouts(id)
);