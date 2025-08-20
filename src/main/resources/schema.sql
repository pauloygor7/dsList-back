CREATE TABLE tb_game (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    game_year INTEGER NOT NULL,
    genre VARCHAR(255) NOT NULL,
    platforms VARCHAR(255) NOT NULL,
    score DOUBLE NOT NULL,
    img_url VARCHAR(255) NOT NULL,
    short_description TEXT NOT NULL,
    long_description TEXT NOT NULL
);

CREATE TABLE tb_game_list (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE tb_belonging (
    list_id BIGINT,
    game_id BIGINT,
    position INTEGER NOT NULL
);