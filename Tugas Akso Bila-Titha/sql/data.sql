DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-increment
    name NVARCHAR(100) NOT NULL,     -- Gunakan NVARCHAR untuk mendukung Unicode
    email NVARCHAR(100) NOT NULL UNIQUE, 
    created_at DATETIME DEFAULT GETDATE() -- Timestamp default
);

INSERT INTO users (name, email) VALUES
('Diva', 'Diva@example.com'),
('Irfan', 'Irfan@example.com'),
('Irsyad', 'Irsyad@example.com');
('Titha', 'Titha@example.com');


