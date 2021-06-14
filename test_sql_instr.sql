-- 查詢會員 小明 的年齡
SELECT `memberAge` FROM `member` WHERE `memberName` = "小明";

-- 刪除 小明 的資料
DELETE FROM `member` WHERE `memberName` = "小明";

-- 插入 阿明 的資料
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "阿明", 12 );

-- 修改 阿明 的資料
UPDATE `member` SET `memberName` = "小明", `memberAge` = 18 WHERE `memberName` = "阿明";

-- 查詢會員 獅子 收藏籤詩的資料
SELECT * FROM `divination` WHERE `divination`.`memberId` IN (SELECT `member`.`memberId` FROM `member` WHERE `member`.`memberName` = "獅子");

-- 查詢會員不是 獅子 收藏籤詩的資料
SELECT * FROM `divination` WHERE `divination`.`memberId` NOT IN (SELECT `member`.`memberId` FROM `member` WHERE `member`.`memberName` = "獅子");

-- 查詢有訂單的 會員id
SELECT `memberId` FROM `member` WHERE EXISTS (SELECT `memberId` FROM `order` WHERE `member`.`memberId`=`order`.`memberId` );

-- 查詢沒有訂單的 會員id
SELECT `memberId` FROM `member` WHERE NOT EXISTS (SELECT `memberId` FROM `order` WHERE `member`.`memberId`=`order`.`memberId` );

-- 查詢會員id為1的訂單數量
SELECT COUNT(`memberId`) FROM `order` WHERE `memberId`=1;

-- 查詢會員id為2的訂單的產品數量總和
SELECT SUM(`count`) FROM `order` WHERE `memberId`=2;

-- 查詢會員id為2訂單最大的產品數量
SELECT MAX(`count`) FROM `order` WHERE `memberId`=2;

-- 查詢會員id為2訂單最小的產品數量
SELECT MIN(`count`) FROM `order` WHERE `memberId`=2;

-- 查詢會員id為2的訂單的產品數量平均
SELECT AVG(`count`) FROM `order` WHERE `memberId`=2;

-- 查詢會員id為2訂單的產品數量總、最大值、最小值、平均
SELECT COUNT(`count`), MAX(`count`), MIN(`count`), AVG(`count`) FROM `order` WHERE `memberId`=2;

-- 查詢會員id訂單的產品數量總和小於20個
SELECT `memberId`, SUM(`count`) FROM `order` GROUP BY `memberId` HAVING SUM(`count`) < 20;