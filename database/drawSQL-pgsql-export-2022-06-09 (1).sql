CREATE TABLE "Comment"(
    "Authorid" INTEGER NOT NULL,
    "Postid" INTEGER NOT NULL,
    "Text" CHAR(255) NOT NULL,
    "UpdatedAt" DATE NOT NULL,
    "CreatedAt" DATE NOT NULL
);
ALTER TABLE
    "Comment" ADD PRIMARY KEY("Authorid");
CREATE TABLE "User"(
    "Name" CHAR(255) NOT NULL,
    "Photo" CHAR(255) NOT NULL,
    "Bio" CHAR(255) NOT NULL,
    "UpdatedAt" DATE NOT NULL,
    "CreatedAt" DATE NOT NULL,
    "PostsCounter" INTEGER NOT NULL
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
);
ALTER TABLE
    "Post" ADD PRIMARY KEY("AuthorId");
CREATE TABLE "Like"(
    "AuthorId" INTEGER NOT NULL,
    "PostId" INTEGER NOT NULL,
    "CreatedAt" DATE NOT NULL,
    "UpdatedAt" DATE NOT NULL
);
ALTER TABLE
    "Like" ADD PRIMARY KEY("AuthorId");