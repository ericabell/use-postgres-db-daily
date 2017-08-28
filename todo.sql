/* drop the table if it's already there */
DROP TABLE IF EXISTS todos;

/* create the todo table per specifications */
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000),
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

/* insert 5 new todos */
INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('todo1', 'this is todo details', 1, date('2017-8-28'), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('todo2', 'this is todo details', 2, date('2017-8-28'), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('completed', 'this is todo details', 1, date('2017-8-28'), date('2017-8-29'));

INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('todo4', 'this is todo details', 2, date('2017-8-28'), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES('incomplete', 'this is todo details', 1, date('2017-8-28'), NULL);

/* get all the todos that are not completed */
SELECT * from todos WHERE completed_at IS NULL;

/* select all the todos that have priority greater than 1 */
SELECT * from todos WHERE priority > 1;

/* update the todo with title='incomplete' to be completed */
UPDATE todos SET completed_at = date('2017-8-30') WHERE id = (SELECT id FROM todos WHERE title='incomplete');

/* show all the todos to verify the update */
SELECT * from todos;

/* delete all the todos */
DELETE FROM todos;
