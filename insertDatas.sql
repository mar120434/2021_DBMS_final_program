-- member datas
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "白羊", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "金牛", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "雙子", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "巨蟹", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "獅子", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "處女", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "天秤", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "天蠍", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "射手", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "摩羯", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "水瓶", 20 );
INSERT INTO `member`( `memberName`, `memberAge` ) VALUES ( "雙魚", 20 );

-- seafood datas
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿風師", "風屬性" );
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿林師", "林屬性" );
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿火師", "火屬性" );
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿山師", "山屬性" );
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿水師", "水屬性" );
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿雷師", "雷屬性" );
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿土師", "土屬性" );
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿聖師", "聖屬性" );
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿S師", "S屬性" );
INSERT INTO `seafood` ( `seafoodName`, `seafoodIntro` ) VALUES ( "阿M師", "M屬性" );

-- sign datas
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "籤頭百事良", "大吉" );
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "添油大吉昌", "大吉" );
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "萬般皆如意", "大吉" );
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "富貴福壽長", "大吉" );
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "抽得此籤百事吉", "大吉" );
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "任祈所求皆大吉", "吉" );
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "一向前途振輝騰", "吉" );
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "求得籤王萬事成", "吉" );
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "富貴榮華必佑汝", "吉" );
INSERT INTO `sign` ( `content`, `luck` ) VALUES ( "神靈感應幾千秋", "不凶" );

-- good datas
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "歲歲平安符", "帶來平安" );
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "福龜", "帶來福氣的金龜" );
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "錢龜", "招財進寶的金龜" );
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "聚寶盆", "百衲四方錢財" );
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "宏圖大展平安符", "祝福事業順心" );
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "佳偶天成平安符", "保佑婚姻美滿" );
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "觀世音佛牌", "保佑平安" );
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "保生大帝平安符", "保佑健康" );
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "平安紙符", "回家貼在想貼的地方" );
INSERT INTO `good` ( `goodName`, `goodIntro` ) VALUES ( "金牌平安符", "純金比較有誠意" );

-- order datas
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 1, 1, 2);
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 1, 2, 2);
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 1, 3, 3);
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 1, 4, 3);
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 1, 5, 4);
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 2, 6, 4);
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 2, 7, 10);
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 2, 8, 10);
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 2, 9, 5);
INSERT INTO `order` ( `memberId`, `goodId`, `count` ) VALUES ( 2, 10, 5);

-- collect datas
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 3, 1 );
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 3, 6 );
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 3, 2 );
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 4, 7 );
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 4, 3 );
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 4, 8 );
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 5, 4 );
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 5, 9 );
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 6, 5 );
INSERT INTO `collect` ( `memberId`, `signId` ) VALUES ( 6, 1 );

-- divination
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 1, 8, 1, "事事如意" );
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 1, 8, 2, "有好事發生" );
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 3, 8, 3, "安啦" );
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 3, 8, 4, "吃百二" );
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 5, 8, 5, "近期不會有壞事" );
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 5, 5, 6, "心想事成" );
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 7, 5, 7, "升官了" );
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 7, 5, 8, "這個運勢不錯" );
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 9, 5, 9, "悶聲發大財" );
INSERT INTO `divination` ( `memberId`, `seafoodId`, `signId`, `description` ) VALUES ( 9, 5, 10, "有神明保佑" );