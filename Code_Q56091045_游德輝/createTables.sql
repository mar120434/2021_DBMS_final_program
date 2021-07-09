CREATE DATABASE `q56091045`;

CREATE TABLE `member` (
    `memberId` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `memberName` varchar(255) NOT NULL,
    `memberAge` int NOT NULL
);

CREATE TABLE `seafood` (
    `seafoodId` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `seafoodName` varchar(255) NOT NULL,
    `seafoodIntro` varchar(255) NOT NULL
);

CREATE TABLE `sign` (
    `signId` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `content` varchar(255) NOT NULL,
    `luck` varchar(255) NOT NULL
);

CREATE TABLE `good` (
    `goodId` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `goodName` varchar(255) NOT NULL,
    `goodIntro` varchar(255) NOT NULL
);

CREATE TABLE `order` (
    `orderId` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `memberId` int NOT NULL,
    `goodId`int NOT NULL,
    `count` int NOT NULL,
    FOREIGN KEY (`memberId`) REFERENCES `member`(`memberId`),
    FOREIGN KEY (`goodId`) REFERENCES `good`(`goodId`)
);

CREATE TABLE `collect` (
    `collectId` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `memberId`int NOT NULL,
    `signId`int NOT NULL,
    FOREIGN KEY (`memberId`) REFERENCES `member`(`memberId`),
    FOREIGN KEY (`signId`) REFERENCES `sign`(`signId`)
);

CREATE TABLE `divination` (
    `divinationId` int NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    `memberId` int NOT NULL, 
    `seafoodId` int NOT NULL, 
    `signId` int NOT NULL, 
    `description` varchar(255) NOT NULL, 
    FOREIGN KEY (`memberId`) REFERENCES `member`(`memberId`),
    FOREIGN KEY (`seafoodId`) REFERENCES `seafood`(`seafoodId`),
    FOREIGN KEY (`signId`) REFERENCES `sign`(`signId`)
);