CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000),
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('todo1', 'this is todo details', 2, date('2017-8-28'), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('todo1', 'this is todo details', 2, date('2017-8-28'), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('todo1', 'this is todo details', 2, date('2017-8-28'), date('2017-8-29'));

INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('todo1', 'this is todo details', 2, date('2017-8-28'), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('incomplete', 'this is todo details', 2, date('2017-8-28'), NULL);

SELECT * from todos WHERE completed IS NULL;

SELECT * from todos WHERE priority > 1;

UPDATE todos SET completed_at = date('2017-8-30') WHERE id = (SELECT id FROM todos WHERE title='incomplete');

SELECT * from todos;

DELETE FROM todos;
