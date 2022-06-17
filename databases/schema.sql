CREATE TABLE "Comment"(
    "Authorid" INTEGER NOT NULL,
    "Postid" INTEGER NOT NULL,
    "Text" CHAR(255) NOT NULL,
    "UpdatedAt" DATE NOT NULL,
    "CreatedAt" DATE NOT NULL
    CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES User(id)
);

ALTER TABLE
    "Comment" ADD PRIMARY KEY("Authorid");

CREATE TABLE "User"(
    "id" INTEGER NOT NULL,
    "Name" CHAR(255) NOT NULL,
    "Photo" CHAR(255) NOT NULL,
    "Bio" CHAR(255) NOT NULL,
    "UpdatedAt" DATE NOT NULL,
    "CreatedAt" DATE NOT NULL,
    "PostsCounter" INTEGER NOT NULL
    CONSTRAINT Post_fk FOREIGN KEY (post_id) REFERENCES Post(id)
);

ALTER TABLE
    "User" ADD PRIMARY KEY("Name");

CREATE TABLE "Post"(
    "AuthorId" INTEGER NOT NULL,
    "Title" CHAR(255) NOT NULL,
    "Text" CHAR(255) NOT NULL,
    "CreatedAt" DATE NOT NULL,
    "UpdatedAt" DATE NOT NULL,
    "CommentsCounter" INTEGER NOT NULL,
    "LikesCounter" INTEGER NOT NULL
    CONSTRAINT Like_fk FOREIGN KEY (like_id) REFERENCES Like(id)
);

ALTER TABLE
    "Post" ADD PRIMARY KEY("AuthorId");

CREATE TABLE "Like"(
    "id" INTEGER NOT NULL,
    "AuthorId" INTEGER NOT NULL,
    "PostId" INTEGER NOT NULL,
    "CreatedAt" DATE NOT NULL,
    "UpdatedAt" DATE NOT NULL
);

ALTER TABLE
    "Like" ADD PRIMARY KEY("AuthorId");