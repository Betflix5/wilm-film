-- H2 2.2.224; 
SET DB_CLOSE_DELAY -1;         
;              
CREATE USER IF NOT EXISTS "WILMFILM" SALT 'ab15abed98a5a26d' HASH '52d046e68443608c515453307134b26884f7b1bd0da522cd6f05e7f8e1d0e552' ADMIN;    
CREATE CACHED TABLE "PUBLIC"."DATABASECHANGELOG"(
    "ID" CHARACTER VARYING(255) NOT NULL,
    "AUTHOR" CHARACTER VARYING(255) NOT NULL,
    "FILENAME" CHARACTER VARYING(255) NOT NULL,
    "DATEEXECUTED" TIMESTAMP NOT NULL,
    "ORDEREXECUTED" INTEGER NOT NULL,
    "EXECTYPE" CHARACTER VARYING(10) NOT NULL,
    "MD5SUM" CHARACTER VARYING(35),
    "DESCRIPTION" CHARACTER VARYING(255),
    "COMMENTS" CHARACTER VARYING(255),
    "TAG" CHARACTER VARYING(255),
    "LIQUIBASE" CHARACTER VARYING(20),
    "CONTEXTS" CHARACTER VARYING(255),
    "LABELS" CHARACTER VARYING(255),
    "DEPLOYMENT_ID" CHARACTER VARYING(10)
);   
-- 18 +/- SELECT COUNT(*) FROM PUBLIC.DATABASECHANGELOG;       
INSERT INTO "PUBLIC"."DATABASECHANGELOG" VALUES
('00000000000001', 'jhipster', 'config/liquibase/changelog/00000000000000_initial_schema.xml', TIMESTAMP '2024-05-09 17:28:17.112793', 1, 'EXECUTED', '9:3d15ce8389bddb1666f01b768d03e89b', 'createTable tableName=jhi_user; createTable tableName=jhi_authority; createTable tableName=jhi_user_authority; addPrimaryKey tableName=jhi_user_authority; addForeignKeyConstraint baseTableName=jhi_user_authority, constraintName=fk_authority_name, ...', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203742-1', 'jhipster', 'config/liquibase/changelog/20240509203742_added_entity_Video.xml', TIMESTAMP '2024-05-09 17:28:17.115749', 2, 'EXECUTED', '9:d89f2466db0fb7416ce370acbc22a240', 'createTable tableName=video', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203742-1-data', 'jhipster', 'config/liquibase/changelog/20240509203742_added_entity_Video.xml', TIMESTAMP '2024-05-09 17:28:17.118852', 3, 'EXECUTED', '9:10c472c387570e52506acc41979a82a1', 'loadData tableName=video', '', NULL, '4.24.0', 'faker', NULL, '5290097002'),
('20240509203743-1', 'jhipster', 'config/liquibase/changelog/20240509203743_added_entity_VideoMetaData.xml', TIMESTAMP '2024-05-09 17:28:17.121811', 4, 'EXECUTED', '9:96a791164440b504ea98c05e3ce7e030', 'createTable tableName=video_meta_data; dropDefaultValue columnName=upload_date, tableName=video_meta_data', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203743-1-data', 'jhipster', 'config/liquibase/changelog/20240509203743_added_entity_VideoMetaData.xml', TIMESTAMP '2024-05-09 17:28:17.126768', 5, 'EXECUTED', '9:c4974c136ba8064511c7beb24a1e450a', 'loadData tableName=video_meta_data', '', NULL, '4.24.0', 'faker', NULL, '5290097002'),
('20240509203744-1', 'jhipster', 'config/liquibase/changelog/20240509203744_added_entity_Comment.xml', TIMESTAMP '2024-05-09 17:28:17.129544', 6, 'EXECUTED', '9:6465a92f443fe4f3b7fd811ef4388888', 'createTable tableName=comment; dropDefaultValue columnName=posted_at, tableName=comment', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203744-1-data', 'jhipster', 'config/liquibase/changelog/20240509203744_added_entity_Comment.xml', TIMESTAMP '2024-05-09 17:28:17.133711', 7, 'EXECUTED', '9:a1eb75311f2200d5c0437abc3e3afa11', 'loadData tableName=comment', '', NULL, '4.24.0', 'faker', NULL, '5290097002'),
('20240509203745-1', 'jhipster', 'config/liquibase/changelog/20240509203745_added_entity_Like.xml', TIMESTAMP '2024-05-09 17:28:17.136745', 8, 'EXECUTED', '9:530bc657100a58352e731281c447c12d', 'createTable tableName=jhi_like; dropDefaultValue columnName=liked_at, tableName=jhi_like', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203745-1-data', 'jhipster', 'config/liquibase/changelog/20240509203745_added_entity_Like.xml', TIMESTAMP '2024-05-09 17:28:17.140649', 9, 'EXECUTED', '9:db0c87b6a1b6747c950ae0a0199a99d3', 'loadData tableName=jhi_like', '', NULL, '4.24.0', 'faker', NULL, '5290097002'),
('20240509203746-1', 'jhipster', 'config/liquibase/changelog/20240509203746_added_entity_Watched.xml', TIMESTAMP '2024-05-09 17:28:17.145316', 10, 'EXECUTED', '9:428820233dd594611efbfc0590032fab', 'createTable tableName=watched; dropDefaultValue columnName=watched_at, tableName=watched', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203746-1-data', 'jhipster', 'config/liquibase/changelog/20240509203746_added_entity_Watched.xml', TIMESTAMP '2024-05-09 17:28:17.149152', 11, 'EXECUTED', '9:8dcd27f4a4456a76f596c96c68f26e7b', 'loadData tableName=watched', '', NULL, '4.24.0', 'faker', NULL, '5290097002'),
('20240509203747-1', 'jhipster', 'config/liquibase/changelog/20240509203747_added_entity_WatchLater.xml', TIMESTAMP '2024-05-09 17:28:17.15214', 12, 'EXECUTED', '9:f62e25279bd4e18a4cab641c7612c316', 'createTable tableName=watch_later', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203747-1-data', 'jhipster', 'config/liquibase/changelog/20240509203747_added_entity_WatchLater.xml', TIMESTAMP '2024-05-09 17:28:17.163348', 13, 'EXECUTED', '9:5f593fe42738eb6019a26d88a4f9a973', 'loadData tableName=watch_later', '', NULL, '4.24.0', 'faker', NULL, '5290097002');     
INSERT INTO "PUBLIC"."DATABASECHANGELOG" VALUES
('20240509203742-2', 'jhipster', 'config/liquibase/changelog/20240509203742_added_entity_constraints_Video.xml', TIMESTAMP '2024-05-09 17:28:17.171842', 14, 'EXECUTED', '9:e7ea973bffb6c4427517d815395d3edf', 'addForeignKeyConstraint baseTableName=video, constraintName=fk_video__meta_data_id, referencedTableName=video_meta_data; addForeignKeyConstraint baseTableName=video, constraintName=fk_video__uploader_id, referencedTableName=jhi_user', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203744-2', 'jhipster', 'config/liquibase/changelog/20240509203744_added_entity_constraints_Comment.xml', TIMESTAMP '2024-05-09 17:28:17.177842', 15, 'EXECUTED', '9:e76276692bb2569d780743e744af3dde', 'addForeignKeyConstraint baseTableName=comment, constraintName=fk_comment__author_id, referencedTableName=jhi_user; addForeignKeyConstraint baseTableName=comment, constraintName=fk_comment__video_id, referencedTableName=video', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203745-2', 'jhipster', 'config/liquibase/changelog/20240509203745_added_entity_constraints_Like.xml', TIMESTAMP '2024-05-09 17:28:17.183944', 16, 'EXECUTED', '9:6228886e430a2415a929264ad143b6cb', 'addForeignKeyConstraint baseTableName=jhi_like, constraintName=fk_jhi_like__user_id, referencedTableName=jhi_user; addForeignKeyConstraint baseTableName=jhi_like, constraintName=fk_jhi_like__video_id, referencedTableName=video', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203746-2', 'jhipster', 'config/liquibase/changelog/20240509203746_added_entity_constraints_Watched.xml', TIMESTAMP '2024-05-09 17:28:17.199027', 17, 'EXECUTED', '9:60ab3a3e13de40aa2726d601e7b7d6eb', 'addForeignKeyConstraint baseTableName=watched, constraintName=fk_watched__video_id, referencedTableName=video; addForeignKeyConstraint baseTableName=watched, constraintName=fk_watched__user_profile_id, referencedTableName=jhi_user', '', NULL, '4.24.0', NULL, NULL, '5290097002'),
('20240509203747-2', 'jhipster', 'config/liquibase/changelog/20240509203747_added_entity_constraints_WatchLater.xml', TIMESTAMP '2024-05-09 17:28:17.210477', 18, 'EXECUTED', '9:b0b2006a69650a477a7073550f40c95b', 'addForeignKeyConstraint baseTableName=watch_later, constraintName=fk_watch_later__video_id, referencedTableName=video; addForeignKeyConstraint baseTableName=watch_later, constraintName=fk_watch_later__user_profile_id, referencedTableName=jhi_user', '', NULL, '4.24.0', NULL, NULL, '5290097002');        
CREATE CACHED TABLE "PUBLIC"."DATABASECHANGELOGLOCK"(
    "ID" INTEGER NOT NULL,
    "LOCKED" BOOLEAN NOT NULL,
    "LOCKGRANTED" TIMESTAMP,
    "LOCKEDBY" CHARACTER VARYING(255)
);          
ALTER TABLE "PUBLIC"."DATABASECHANGELOGLOCK" ADD CONSTRAINT "PUBLIC"."PK_DATABASECHANGELOGLOCK" PRIMARY KEY("ID");             
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.DATABASECHANGELOGLOCK;    
INSERT INTO "PUBLIC"."DATABASECHANGELOGLOCK" VALUES
(1, FALSE, NULL, NULL);    
CREATE CACHED TABLE "PUBLIC"."JHI_USER"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1050 RESTART WITH 1053) DEFAULT ON NULL NOT NULL,
    "LOGIN" CHARACTER VARYING(50) NOT NULL,
    "PASSWORD_HASH" CHARACTER VARYING(60) NOT NULL,
    "FIRST_NAME" CHARACTER VARYING(50),
    "LAST_NAME" CHARACTER VARYING(50),
    "EMAIL" CHARACTER VARYING(191),
    "IMAGE_URL" CHARACTER VARYING(256),
    "ACTIVATED" BOOLEAN NOT NULL,
    "LANG_KEY" CHARACTER VARYING(10),
    "ACTIVATION_KEY" CHARACTER VARYING(20),
    "RESET_KEY" CHARACTER VARYING(20),
    "CREATED_BY" CHARACTER VARYING(50) NOT NULL,
    "CREATED_DATE" TIMESTAMP DEFAULT NULL,
    "RESET_DATE" TIMESTAMP,
    "LAST_MODIFIED_BY" CHARACTER VARYING(50),
    "LAST_MODIFIED_DATE" TIMESTAMP
);       
ALTER TABLE "PUBLIC"."JHI_USER" ADD CONSTRAINT "PUBLIC"."PK_JHI_USER" PRIMARY KEY("ID");       
-- 4 +/- SELECT COUNT(*) FROM PUBLIC.JHI_USER; 
INSERT INTO "PUBLIC"."JHI_USER" VALUES
(1, 'admin', '$2a$10$lZEsijl58w8TKuBWQ1C6wuy1ZZrQTCXfbOUKwg3sTgzCtcvhrccgq', 'Administrator', 'Administrator', 'admin@localhost', '', TRUE, 'en', NULL, NULL, 'system', NULL, NULL, 'admin', TIMESTAMP '2024-05-09 22:28:59.117211'),
(2, 'user', '$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K', 'User', 'User', 'user@localhost', '', TRUE, 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL),
(1050, 'anthony', '$2a$10$RXu6mEy/Es28yR8ponpeMuU2nQfWwFSv6LKa2IrGrm.QnYv/Hnz8i', NULL, NULL, 'anthony@gmail.com', NULL, TRUE, 'en', 'VLyOJL0bEUxuZngHbIHb', NULL, 'anonymousUser', TIMESTAMP '2024-05-10 20:58:55.379826', NULL, 'admin', TIMESTAMP '2024-05-10 20:59:49.058532'),
(1052, 'michael', '$2a$10$sF6F7VjYLRPgCp4DVBuZMuOuJ7GUEyK7LtnGCvFhez7SjwyemmbUO', 'Michael', 'Scott', 'michael@gmail.com', NULL, TRUE, 'en', 'pie9IkCAI0BDQwruuWUh', NULL, 'anonymousUser', TIMESTAMP '2024-05-13 13:07:03.826999', NULL, 'michael', TIMESTAMP '2024-05-14 23:56:55.288161');
CREATE CACHED TABLE "PUBLIC"."JHI_AUTHORITY"(
    "NAME" CHARACTER VARYING(50) NOT NULL
);     
ALTER TABLE "PUBLIC"."JHI_AUTHORITY" ADD CONSTRAINT "PUBLIC"."PK_JHI_AUTHORITY" PRIMARY KEY("NAME");           
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.JHI_AUTHORITY;            
INSERT INTO "PUBLIC"."JHI_AUTHORITY" VALUES
('ROLE_ADMIN'),
('ROLE_USER');     
CREATE CACHED TABLE "PUBLIC"."JHI_USER_AUTHORITY"(
    "USER_ID" BIGINT NOT NULL,
    "AUTHORITY_NAME" CHARACTER VARYING(50) NOT NULL
);       
ALTER TABLE "PUBLIC"."JHI_USER_AUTHORITY" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_E" PRIMARY KEY("USER_ID", "AUTHORITY_NAME");     
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.JHI_USER_AUTHORITY;       
INSERT INTO "PUBLIC"."JHI_USER_AUTHORITY" VALUES
(1, 'ROLE_ADMIN'),
(1, 'ROLE_USER'),
(2, 'ROLE_USER'),
(1050, 'ROLE_USER'),
(1052, 'ROLE_USER');              
CREATE CACHED TABLE "PUBLIC"."VIDEO"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1500 RESTART WITH 1111902) DEFAULT ON NULL NOT NULL,
    "URL" CHARACTER VARYING(255),
    "META_DATA_ID" BIGINT,
    "UPLOADER_ID" BIGINT
);
ALTER TABLE "PUBLIC"."VIDEO" ADD CONSTRAINT "PUBLIC"."PK_VIDEO" PRIMARY KEY("ID");             
-- 23 +/- SELECT COUNT(*) FROM PUBLIC.VIDEO;   
INSERT INTO "PUBLIC"."VIDEO" VALUES
(13, 'https://www.youtube.com/embed/bLvqoHBptjg?&autoplay=1', 1515, 1),
(293660, 'https://www.youtube.com/embed/ONHBaC-pfsk?&autoplay=1', 1509, 1),
(346698, 'https://www.youtube.com/embed/pBk4NYhWNMM?&autoplay=1', 1502, 1),
(383498, 'https://www.youtube.com/embed/D86RtevtfrA?&autoplay=1', 1510, 1),
(385687, 'https://www.youtube.com/embed/32RAq6JzY-w?&autoplay=1', 1508, 1),
(618588, 'https://www.youtube.com/embed/f7SdBAwL-BQ?&autoplay=1', 1517, 1),
(639720, 'https://www.youtube.com/embed/mb2187ZQtBE?&autoplay=1', 1512, 1),
(653346, 'https://www.youtube.com/embed/Kdr5oedn7q8?&autoplay=1', 1, 1),
(693134, 'https://www.youtube.com/embed/virMKcebZL8?&autoplay=1', 1518, 1),
(748783, 'https://www.youtube.com/embed/FVIpqTKL1vg?&autoplay=1', 9, 1),
(787699, 'https://www.youtube.com/embed/otNh9bTjXWg?&autoplay=1', 1511, 1),
(823464, 'https://www.youtube.com/embed/lV1OOlGwExM?&autoplay=1', 1501, 1),
(843527, 'https://www.youtube.com/embed/V8i6PB0gGOA?&autoplay=1', 1505, 1),
(872585, 'https://www.youtube.com/embed/tK0IDmSYYGk?&autoplay=1', 10, 1),
(929590, 'https://www.youtube.com/embed/aDyQxtg0V2w?&autoplay=1', 1516, 1),
(940721, 'https://www.youtube.com/embed/VvSrHIX5a-0?&autoplay=1', 1503, 1),
(967847, 'https://www.youtube.com/embed/HpOBXh02rVc?&autoplay=1', 1500, 1),
(1011985, 'https://www.youtube.com/embed/E7yQbq83Qig?&autoplay=1', 1506, 1),
(1022789, 'https://www.youtube.com/embed/LEjhY15eCx0?&autoplay=1', 1514, 1),
(1041613, 'https://www.youtube.com/embed/RNbBDgV0KK0?&autoplay=1', 1504, 1),
(1063879, 'https://www.youtube.com/embed/8URLr27sbE0?&autoplay=1', 1513, 1),
(1096197, 'https://www.youtube.com/embed/oLvrlajijhk?&autoplay=1', 1507, 1),
(1111873, 'https://www.youtube.com/embed/xtAL2x58hns?&autoplay=1', 8, 1); 
CREATE CACHED TABLE "PUBLIC"."VIDEO_META_DATA"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1500 RESTART WITH 1519) DEFAULT ON NULL NOT NULL,
    "TITLE" CHARACTER VARYING(255) NOT NULL,
    "GENRE" CHARACTER VARYING(255) NOT NULL,
    "UPLOAD_DATE" TIMESTAMP DEFAULT NULL NOT NULL,
    "DESCRIPTION" CHARACTER VARYING(255)
);         
ALTER TABLE "PUBLIC"."VIDEO_META_DATA" ADD CONSTRAINT "PUBLIC"."PK_VIDEO_META_DATA" PRIMARY KEY("ID");         
-- 23 +/- SELECT COUNT(*) FROM PUBLIC.VIDEO_META_DATA;         
INSERT INTO "PUBLIC"."VIDEO_META_DATA" VALUES
(1, 'Bob Marley: One Love', 'Documentary', TIMESTAMP '2024-05-09 05:52:00', 'Documentary'),
(8, 'Civil War', 'Action', TIMESTAMP '2024-05-09 19:11:00', 'Action'),
(9, 'Kingdom of the Planet of the Apes', 'Action', TIMESTAMP '2024-05-09 13:11:00', 'Action'),
(10, 'The Fall Guy', 'Action Comedy', TIMESTAMP '2024-05-09 06:50:00', 'Action Comedy'),
(1500, 'Ghost Busters', 'Scary', TIMESTAMP '2024-05-14 04:00:00', 'Frozen Empire'),
(1501, 'Godzilla x Kong', 'Action', TIMESTAMP '2024-05-14 04:00:00', 'The New Empire'),
(1502, 'Barbie Movie', 'Comedy ', TIMESTAMP '2024-05-14 04:00:00', 'Barbie'),
(1503, 'Godzilla', 'Action', TIMESTAMP '2024-05-14 04:00:00', 'Action'),
(1504, 'Immaculate', 'Scary', TIMESTAMP '2024-05-14 04:00:00', 'Scary'),
(1505, 'The Idea of You', 'Romantic', TIMESTAMP '2024-05-14 04:00:00', 'Romantic'),
(1506, 'Kung Fu Panda 4', 'Comedy ', TIMESTAMP '2024-05-14 04:00:00', 'Comedy'),
(1507, 'No Way Up', 'Scary', TIMESTAMP '2024-05-14 04:00:00', 'Scary'),
(1508, 'Fast X', 'Action', TIMESTAMP '2024-05-14 04:00:00', 'Fast Furious Franchise'),
(1509, 'Deadpool', 'Comedy ', TIMESTAMP '2024-05-14 04:00:00', 'Comedy'),
(1510, 'Deadpool 2', 'Comedy ', TIMESTAMP '2024-05-14 04:00:00', 'Comedy'),
(1511, 'Wonka', 'Comedy ', TIMESTAMP '2024-05-14 04:00:00', 'Comedy'),
(1512, 'If', 'Comedy ', TIMESTAMP '2024-05-14 04:00:00', 'Comedy'),
(1513, 'Infested', 'Scary', TIMESTAMP '2024-05-14 04:00:00', 'Scary'),
(1514, 'Inside Out 2', 'Comedy ', TIMESTAMP '2024-05-14 04:00:00', 'Comedy'),
(1515, 'Forest Gump', 'Action', TIMESTAMP '2024-05-14 04:00:00', 'Action'),
(1516, 'Civil War', 'Action', TIMESTAMP '2024-05-14 04:00:00', 'Action'),
(1517, 'Arthur the King', 'Action', TIMESTAMP '2024-05-14 04:00:00', 'Action'),
(1518, 'Dune Part Two', 'Action', TIMESTAMP '2024-05-14 04:00:00', 'Action');             
CREATE CACHED TABLE "PUBLIC"."COMMENT"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1500 RESTART WITH 1559) DEFAULT ON NULL NOT NULL,
    "TEXT" CHARACTER VARYING(255) NOT NULL,
    "POSTED_AT" TIMESTAMP DEFAULT NULL NOT NULL,
    "AUTHOR_ID" BIGINT,
    "VIDEO_ID" BIGINT
);            
ALTER TABLE "PUBLIC"."COMMENT" ADD CONSTRAINT "PUBLIC"."PK_COMMENT" PRIMARY KEY("ID");         
-- 13 +/- SELECT COUNT(*) FROM PUBLIC.COMMENT; 
INSERT INTO "PUBLIC"."COMMENT" VALUES
(1500, 'This was very great, love fight scenes', TIMESTAMP '2024-05-10 04:00:00', 1050, 653346),
(1533, 'this is great', TIMESTAMP '2024-05-13 13:29:14.185', 1052, 1111873),
(1539, 'Th barbie movie was great!', TIMESTAMP '2024-05-13 04:00:00', 1050, 1111873),
(1548, 'fight club', TIMESTAMP '2024-05-14 01:41:59.989', 1, 653346),
(1549, 'barbie movie', TIMESTAMP '2024-05-14 01:42:15.168', 1, 1111873),
(1550, 'this is a great movie', TIMESTAMP '2024-05-14 14:07:18.078', 1052, 1111873),
(1552, 'This movie was scary', TIMESTAMP '2024-05-14 23:53:51.89', 1052, 1111873),
(1553, 'This was nuclear', TIMESTAMP '2024-05-14 23:54:11.446', 1052, 872585),
(1554, 'cool', TIMESTAMP '2024-05-15 00:09:02.2', 1052, 748783),
(1555, 'Godzilla is better then kong', TIMESTAMP '2024-05-15 13:29:29.354', 1052, 823464),
(1556, 'this was my favorite movie growing up I''m glad they remade it', TIMESTAMP '2024-05-15 13:29:59.99', 1052, 823464),
(1557, 'this was my favorite movie growing up I''m glad they remade it', TIMESTAMP '2024-05-15 13:36:15.36', 1, 823464),
(1558, 'We would love the opportunity to take with you all about our amazing application afterwards!', TIMESTAMP '2024-05-15 14:13:25.272', 1052, 823464);    
CREATE CACHED TABLE "PUBLIC"."JHI_LIKE"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1500 RESTART WITH 1517) DEFAULT ON NULL NOT NULL,
    "LIKED_AT" TIMESTAMP DEFAULT NULL NOT NULL,
    "USER_ID" BIGINT,
    "VIDEO_ID" BIGINT
);          
ALTER TABLE "PUBLIC"."JHI_LIKE" ADD CONSTRAINT "PUBLIC"."PK_JHI_LIKE" PRIMARY KEY("ID");       
-- 27 +/- SELECT COUNT(*) FROM PUBLIC.JHI_LIKE;
INSERT INTO "PUBLIC"."JHI_LIKE" VALUES
(1, TIMESTAMP '2024-05-08 20:54:26', NULL, NULL),
(2, TIMESTAMP '2024-05-08 23:06:26', NULL, NULL),
(3, TIMESTAMP '2024-05-08 22:44:18', NULL, NULL),
(4, TIMESTAMP '2024-05-09 07:35:08', NULL, NULL),
(5, TIMESTAMP '2024-05-09 09:01:04', NULL, NULL),
(6, TIMESTAMP '2024-05-09 13:49:57', NULL, NULL),
(7, TIMESTAMP '2024-05-09 00:41:07', NULL, NULL),
(8, TIMESTAMP '2024-05-09 03:43:55', NULL, NULL),
(9, TIMESTAMP '2024-05-09 00:07:35', NULL, NULL),
(10, TIMESTAMP '2024-05-09 18:08:34', NULL, NULL),
(1500, TIMESTAMP '2024-05-11 20:51:21.55144', 1, 653346),
(1501, TIMESTAMP '2024-05-11 20:51:21.551467', 1, 653346),
(1502, TIMESTAMP '2024-05-11 20:51:21.553457', 1, 653346),
(1503, TIMESTAMP '2024-05-11 20:51:21.578585', 1, 653346),
(1504, TIMESTAMP '2024-05-11 20:51:44.842542', 1, 653346),
(1505, TIMESTAMP '2024-05-11 20:52:05.330717', 1, 1111873),
(1506, TIMESTAMP '2024-05-11 23:19:16.762126', 1, 653346),
(1507, TIMESTAMP '2024-05-13 17:58:12.75556', 1, 1111873),
(1508, TIMESTAMP '2024-05-13 18:03:37.943864', 1, 1111873),
(1509, TIMESTAMP '2024-05-13 18:04:30.583332', 1, 1111873),
(1510, TIMESTAMP '2024-05-14 13:00:28.093139', 1, 653346),
(1511, TIMESTAMP '2024-05-14 14:07:54.478422', 1, 1111873),
(1512, TIMESTAMP '2024-05-14 17:38:05.827933', 1, 346698),
(1513, TIMESTAMP '2024-05-14 20:30:09.268822', 1, 748783),
(1514, TIMESTAMP '2024-05-14 23:54:33.66275', 1, 872585),
(1515, TIMESTAMP '2024-05-15 00:12:53.943668', 1, 1111873),
(1516, TIMESTAMP '2024-05-15 14:13:27.573481', 1, 823464);      
CREATE CACHED TABLE "PUBLIC"."WATCHED"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1500) DEFAULT ON NULL NOT NULL,
    "WATCHED_AT" TIMESTAMP DEFAULT NULL NOT NULL,
    "VIDEO_ID" BIGINT,
    "USER_PROFILE_ID" BIGINT
);   
ALTER TABLE "PUBLIC"."WATCHED" ADD CONSTRAINT "PUBLIC"."PK_WATCHED" PRIMARY KEY("ID");         
-- 10 +/- SELECT COUNT(*) FROM PUBLIC.WATCHED; 
INSERT INTO "PUBLIC"."WATCHED" VALUES
(1, TIMESTAMP '2024-05-09 13:21:00', 13, 2),
(2, TIMESTAMP '2024-05-09 07:58:00', 823464, 1052),
(3, TIMESTAMP '2024-05-09 02:20:00', 872585, 1052),
(4, TIMESTAMP '2024-05-09 13:36:00', 787699, 1050),
(5, TIMESTAMP '2024-05-09 00:23:00', 293660, 1050),
(6, TIMESTAMP '2024-05-09 04:01:00', 618588, 2),
(7, TIMESTAMP '2024-05-09 11:09:00', 748783, 1052),
(8, TIMESTAMP '2024-05-09 05:13:00', 929590, 1050),
(9, TIMESTAMP '2024-05-09 08:34:00', 293660, 2),
(10, TIMESTAMP '2024-05-09 08:44:00', 1011985, 2);
CREATE CACHED TABLE "PUBLIC"."WATCH_LATER"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1500) DEFAULT ON NULL NOT NULL,
    "VIDEO_ID" BIGINT,
    "USER_PROFILE_ID" BIGINT
); 
ALTER TABLE "PUBLIC"."WATCH_LATER" ADD CONSTRAINT "PUBLIC"."PK_WATCH_LATER" PRIMARY KEY("ID"); 
-- 10 +/- SELECT COUNT(*) FROM PUBLIC.WATCH_LATER;             
INSERT INTO "PUBLIC"."WATCH_LATER" VALUES
(1, 823464, 2),
(2, 618588, 2),
(3, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, NULL),
(10, NULL, NULL);             
CREATE CACHED TABLE "PUBLIC"."VIDEO_COMMENTS"(
    "ID" INTEGER,
    "VIDEO_ID" INTEGER,
    "COMMENTS_ID" INTEGER
);          
-- 9 +/- SELECT COUNT(*) FROM PUBLIC.VIDEO_COMMENTS;           
INSERT INTO "PUBLIC"."VIDEO_COMMENTS" VALUES
(1500, 653346, 1500),
(1540, 653346, 1540),
(1542, 653346, 1542),
(1544, 653346, 1544),
(1533, 1111873, 1533),
(1539, 1111873, 1539),
(1541, 1111873, 1541),
(1543, 1111873, 1543),
(1545, 1111873, 1545);        
ALTER TABLE "PUBLIC"."JHI_USER" ADD CONSTRAINT "PUBLIC"."UX_USER_LOGIN" UNIQUE("LOGIN");       
ALTER TABLE "PUBLIC"."VIDEO" ADD CONSTRAINT "PUBLIC"."UX_VIDEO__META_DATA_ID" UNIQUE("META_DATA_ID");          
ALTER TABLE "PUBLIC"."JHI_USER" ADD CONSTRAINT "PUBLIC"."UX_USER_EMAIL" UNIQUE("EMAIL");       
ALTER TABLE "PUBLIC"."COMMENT" ADD CONSTRAINT "PUBLIC"."FK_COMMENT__VIDEO_ID" FOREIGN KEY("VIDEO_ID") REFERENCES "PUBLIC"."VIDEO"("ID") NOCHECK;               
ALTER TABLE "PUBLIC"."VIDEO" ADD CONSTRAINT "PUBLIC"."FK_VIDEO__UPLOADER_ID" FOREIGN KEY("UPLOADER_ID") REFERENCES "PUBLIC"."JHI_USER"("ID") NOCHECK;          
ALTER TABLE "PUBLIC"."WATCH_LATER" ADD CONSTRAINT "PUBLIC"."FK_WATCH_LATER__USER_PROFILE_ID" FOREIGN KEY("USER_PROFILE_ID") REFERENCES "PUBLIC"."JHI_USER"("ID") NOCHECK;      
ALTER TABLE "PUBLIC"."VIDEO" ADD CONSTRAINT "PUBLIC"."FK_VIDEO__META_DATA_ID" FOREIGN KEY("META_DATA_ID") REFERENCES "PUBLIC"."VIDEO_META_DATA"("ID") NOCHECK; 
ALTER TABLE "PUBLIC"."COMMENT" ADD CONSTRAINT "PUBLIC"."FK_COMMENT__AUTHOR_ID" FOREIGN KEY("AUTHOR_ID") REFERENCES "PUBLIC"."JHI_USER"("ID") NOCHECK;          
ALTER TABLE "PUBLIC"."JHI_LIKE" ADD CONSTRAINT "PUBLIC"."FK_JHI_LIKE__VIDEO_ID" FOREIGN KEY("VIDEO_ID") REFERENCES "PUBLIC"."VIDEO"("ID") NOCHECK;             
ALTER TABLE "PUBLIC"."WATCHED" ADD CONSTRAINT "PUBLIC"."FK_WATCHED__USER_PROFILE_ID" FOREIGN KEY("USER_PROFILE_ID") REFERENCES "PUBLIC"."JHI_USER"("ID") NOCHECK;              
ALTER TABLE "PUBLIC"."JHI_LIKE" ADD CONSTRAINT "PUBLIC"."FK_JHI_LIKE__USER_ID" FOREIGN KEY("USER_ID") REFERENCES "PUBLIC"."JHI_USER"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."WATCH_LATER" ADD CONSTRAINT "PUBLIC"."FK_WATCH_LATER__VIDEO_ID" FOREIGN KEY("VIDEO_ID") REFERENCES "PUBLIC"."VIDEO"("ID") NOCHECK;       
ALTER TABLE "PUBLIC"."JHI_USER_AUTHORITY" ADD CONSTRAINT "PUBLIC"."FK_USER_ID" FOREIGN KEY("USER_ID") REFERENCES "PUBLIC"."JHI_USER"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."WATCHED" ADD CONSTRAINT "PUBLIC"."FK_WATCHED__VIDEO_ID" FOREIGN KEY("VIDEO_ID") REFERENCES "PUBLIC"."VIDEO"("ID") NOCHECK;               
ALTER TABLE "PUBLIC"."JHI_USER_AUTHORITY" ADD CONSTRAINT "PUBLIC"."FK_AUTHORITY_NAME" FOREIGN KEY("AUTHORITY_NAME") REFERENCES "PUBLIC"."JHI_AUTHORITY"("NAME") NOCHECK;       
