/*
  Warnings:

  - You are about to drop the column `likes` on the `TweetEngagement` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "TweetEngagement" DROP COLUMN "likes";

-- CreateTable
CREATE TABLE "Like" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "tweetId" TEXT NOT NULL,

    CONSTRAINT "Like_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Like" ADD CONSTRAINT "Like_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Like" ADD CONSTRAINT "Like_tweetId_fkey" FOREIGN KEY ("tweetId") REFERENCES "TweetEngagement"("tweetId") ON DELETE RESTRICT ON UPDATE CASCADE;
