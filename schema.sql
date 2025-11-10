CREATE TABLE lists (
    id serial PRIMARY KEY,
    title text UNIQUE NOT NULL
);

CREATE TABLE todos (
    id serial PRIMARY KEY,
    list_id integer NOT NULL REFERENCES lists(id) ON DELETE CASCADE,
    title text NOT NULL, 
    completed BOOLEAN NOT NULL DEFAULT false
);