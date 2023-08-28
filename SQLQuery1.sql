create database BlogDB
use BlogDB

create table Post
(Id int primary key,
Title nvarchar(50) not null,
Content nvarchar(50) not null,
PublicationDate datetime,
Author nvarchar(50) not null)

create table Comment
(Id int primary key,
Content nvarchar(50) not null,
PublicationDate datetime,
PostId int foreign key references Post)


INSERT INTO Post (Id, Title, Content, PublicationDate, Author)
VALUES
    (1, 'First Post', 'This is the content of the first post.', '2023-08-26', 'John Doe'),
    (2, 'Second Post', 'Here is the content of the second post.', '2023-08-27', 'Jane Smith');

-- Insert data into the 'Comment' table
INSERT INTO Comment (Id, Content, PublicationDate, PostId)
VALUES
    (1, 'Great post!', '2023-08-26', 1),
    (2, 'I enjoyed reading this.', '2023-08-27', 1),
    (3, 'Nice work!', '2023-08-28', 2);


	select * from Comment
	select * from Post