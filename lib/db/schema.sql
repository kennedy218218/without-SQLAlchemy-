PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS authors (

    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS magazines (

    id INTEGER PRIMARY KEY AUTOINCREMENT,

    name TEXT NOT NULL,

    category TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS articles (

    id INTEGER PRIMARY KEY AUTOINCREMENT,

    title TEXT NOT NULL,

    content TEXT NOT NULL, 

    author_id INTEGER NOT NULL,

    magazine_id INTEGER NOT NULL,

    FOREIGN KEY(author_id) REFERENCES authors(id),

    FOREIGN KEY(magazine_id) REFERENCES magazines(id)
);