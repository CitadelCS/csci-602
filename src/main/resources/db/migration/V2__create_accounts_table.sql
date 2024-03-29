CREATE TABLE accounts
(
    user_id    serial PRIMARY KEY,
    username   VARCHAR(50) UNIQUE  NOT NULL,
    password   VARCHAR(50)         NOT NULL,
    email      VARCHAR(255) UNIQUE NOT NULL,
    created_on TIMESTAMP           NOT NULL DEFAULT now(),
    last_login TIMESTAMP           NOT NULL DEFAULT now()
);