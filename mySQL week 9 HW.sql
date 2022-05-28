create database week9;
create table user (
	UserId int NOT NULL,
    PostId int,
    CommentId int,
    userName varchar(255) NOT NULL,
    email_address varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    PRIMARY KEY (UserId),
    FOREIGN KEY (PostId) REFERENCES Post(PostId),
    FOREIGN KEY (CommentId) REFERENCES Comments(CommentId)
);
create table post (
	PostId int NOT NULL,
    UserId int NOT NULL,
    postTimeStamp TIMESTAMP,
    post_content LONGTEXT,
    views int,
    PRIMARY KEY (PostId),
    FOREIGN KEY (UserId) REFERENCES user(UserId)
);
create table comments (
	CommentId int NOT NULL,
    UserId int NOT NULL,
    commentTimeStamp TIMESTAMP,
    comment_content LONGTEXT,
    num_of_likes int,
    PRIMARY KEY (CommentId),
    FOREIGN KEY (UserId) REFERENCES user(UserId)
);