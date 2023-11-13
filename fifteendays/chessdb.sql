CREATE TABLE IF NOT EXISTS chessproblems (
    average_time TEXT NOT NULL,
    date TEXT NOT NULL,
    fen TEXT NOT NULL,
    flip_board BOOLEAN NOT NULL,
    id INT NOT NULL,
    is_provisional BOOLEAN NOT NULL,
    is_passed BOOLEAN NOT NULL,
    code INT NOT NULL,
    rating INT NOT NULL,
    rating_change INT NOT NULL,
    my_rating INT NOT NULL,
    my_time TEXT NOT NULL,
    move_count INT NOT NULL DEFAULT 0,
    correct_move_count INT NOT NULL DEFAULT 0,
    score INT NOT NULL,
    target_time TEXT NOT NULL
);
