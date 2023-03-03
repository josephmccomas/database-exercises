INSERT INTO users (name, email, role_id)
VALUES ('Tim', 'Tim@example.com', 2),
       ('Frank', 'Frank@example.com', 2),
       ('Jim', 'Jim@example.com', 2),
       ('Larry', 'Larry@example.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

SELECT r.name, count(u.id)
FROM users as u
         right join roles r on u.role_id = r.id
GROUP BY r.name;

# ------------------------------

