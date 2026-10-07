CREATE TABLE "Student" ("id" TEXT PRIMARY KEY, "name" TEXT NOT NULL, "phone" TEXT, "guardianName" TEXT, "guardianPhone" TEXT);
CREATE TABLE "Task" ("id" TEXT PRIMARY KEY, "studentId" TEXT NOT NULL REFERENCES "Student"("id"), "title" TEXT NOT NULL, "subject" TEXT NOT NULL, "dueDate" TEXT NOT NULL, "feedback" TEXT, "status" TEXT NOT NULL);
CREATE TABLE "Tuition" ("id" TEXT PRIMARY KEY, "studentId" TEXT NOT NULL REFERENCES "Student"("id"), "title" TEXT NOT NULL, "amount" INTEGER NOT NULL, "dueDate" TEXT NOT NULL, "paidDate" TEXT, "status" TEXT NOT NULL);
CREATE TABLE "Consultation" ("id" TEXT PRIMARY KEY, "studentId" TEXT NOT NULL REFERENCES "Student"("id"), "date" TEXT NOT NULL, "memo" TEXT NOT NULL);
CREATE TABLE "Notice" ("id" TEXT PRIMARY KEY, "title" TEXT NOT NULL, "date" TEXT NOT NULL, "content" TEXT NOT NULL);
