CREATE TABLE "bookworm" (
  "id" int PRIMARY KEY,
  "personal_code" varchar UNIQUE,
  "name" varchar,
  "surname" varchar,
  "age" int
);

CREATE TABLE "book" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "genre" varchar,
  "release_date" date,
  "isbn" varchar UNIQUE
);

CREATE TABLE "author" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "surname" varchar,
  "date_of_birth" date
);

CREATE TABLE "authorBooks" (
  "id" int PRIMARY KEY,
  "book_id" int,
  "author_id" int
);

CREATE TABLE "rent" (
  "id" int PRIMARY KEY,
  "start_date" date,
  "end_date" date,
  "notes" varchar,
  "book_id" int,
  "bookworm_id" int
);

CREATE TABLE "authorBooks_book" (
  "authorBooks_book_id" int NOT NULL,
  "book_id" int NOT NULL,
  PRIMARY KEY ("authorBooks_book_id", "book_id")
);

ALTER TABLE "authorBooks_book" ADD FOREIGN KEY ("authorBooks_book_id") REFERENCES "authorBooks" ("book_id");

ALTER TABLE "authorBooks_book" ADD FOREIGN KEY ("book_id") REFERENCES "book" ("id");


CREATE TABLE "authorBooks_author" (
  "authorBooks_author_id" int NOT NULL,
  "author_id" int NOT NULL,
  PRIMARY KEY ("authorBooks_author_id", "author_id")
);

ALTER TABLE "authorBooks_author" ADD FOREIGN KEY ("authorBooks_author_id") REFERENCES "authorBooks" ("author_id");

ALTER TABLE "authorBooks_author" ADD FOREIGN KEY ("author_id") REFERENCES "author" ("id");

ALTER TABLE "rent" ADD FOREIGN KEY ("book_id") REFERENCES "book" ("id");

ALTER TABLE "rent" ADD FOREIGN KEY ("bookworm_id") REFERENCES "bookworm" ("id");
