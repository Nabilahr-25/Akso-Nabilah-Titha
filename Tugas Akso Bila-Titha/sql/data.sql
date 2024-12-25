-- Hapus tabel jika sudah ada
IF OBJECT_ID('users', 'U') IS NOT NULL
    DROP TABLE users;

-- Buat tabel baru
CREATE TABLE users (
    id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-increment
    name NVARCHAR(100) NOT NULL,      -- Gunakan NVARCHAR untuk Unicode
    email NVARCHAR(100) NOT NULL UNIQUE, 
    pass CHAR(6) NOT NULL,            -- Gunakan CHAR untuk password tetap 6 karakter
    created_at DATETIME DEFAULT GETDATE() -- Timestamp default saat pembuatan
);

-- Masukkan data ke tabel
INSERT INTO users (name, email, pass) VALUES
('Diva', 'Diva@dbmail.com', '142hq8'),
('Irfan', 'Irfan@dbmail.com', 'V75j80'),
('Irsyad', 'Irsyad@dbmail.com', '7jsu36'),
('Titha', 'Titha@dbmail.com', '3j2ud1'),
('Bilah', 'Bilah@dbmail.com', '62Gjs4'),
('Mitha', 'Mitha@dbmail.com', '437dg2'),
('Sarah', 'Sarah@dbmail.com', '8hsu80'),
('Vina', 'Vina@dbmail.com', 'uw83j2'),
('Dina', 'Dina@dbmail.com', 'hdg64i'),
('Naka', 'Naka@dbmail.com', 'ued268');


