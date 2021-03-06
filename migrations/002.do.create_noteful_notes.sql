CREATE TABLE notes (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    note_name TEXT NOT NULL,
    content TEXT,
    modified TIMESTAMP NOT NULL DEFAULT now(),
    folder_id INTEGER REFERENCES folders(id) ON DELETE CASCADE NOT NULL
)