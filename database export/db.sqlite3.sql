BEGIN TRANSACTION;
CREATE TABLE "login_user_friend" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "from_user_id" integer NOT NULL REFERENCES "login_user" ("id"), "to_user_id" integer NOT NULL REFERENCES "login_user" ("id"));
INSERT INTO `login_user_friend` VALUES (55,8,2);
INSERT INTO `login_user_friend` VALUES (56,2,8);
INSERT INTO `login_user_friend` VALUES (57,8,5);
INSERT INTO `login_user_friend` VALUES (58,5,8);
INSERT INTO `login_user_friend` VALUES (59,8,6);
INSERT INTO `login_user_friend` VALUES (60,6,8);
INSERT INTO `login_user_friend` VALUES (61,8,7);
INSERT INTO `login_user_friend` VALUES (62,7,8);
INSERT INTO `login_user_friend` VALUES (71,10,3);
INSERT INTO `login_user_friend` VALUES (72,3,10);
INSERT INTO `login_user_friend` VALUES (73,10,6);
INSERT INTO `login_user_friend` VALUES (74,6,10);
INSERT INTO `login_user_friend` VALUES (75,10,7);
INSERT INTO `login_user_friend` VALUES (76,7,10);
INSERT INTO `login_user_friend` VALUES (77,10,8);
INSERT INTO `login_user_friend` VALUES (78,8,10);
INSERT INTO `login_user_friend` VALUES (93,1,2);
INSERT INTO `login_user_friend` VALUES (94,2,1);
INSERT INTO `login_user_friend` VALUES (95,1,3);
INSERT INTO `login_user_friend` VALUES (96,3,1);
INSERT INTO `login_user_friend` VALUES (97,1,4);
INSERT INTO `login_user_friend` VALUES (98,4,1);
INSERT INTO `login_user_friend` VALUES (103,1,9);
INSERT INTO `login_user_friend` VALUES (104,9,1);
INSERT INTO `login_user_friend` VALUES (105,1,7);
INSERT INTO `login_user_friend` VALUES (106,7,1);
INSERT INTO `login_user_friend` VALUES (107,11,4);
INSERT INTO `login_user_friend` VALUES (108,4,11);
INSERT INTO `login_user_friend` VALUES (109,11,5);
INSERT INTO `login_user_friend` VALUES (110,5,11);
INSERT INTO `login_user_friend` VALUES (111,11,6);
INSERT INTO `login_user_friend` VALUES (112,6,11);
INSERT INTO `login_user_friend` VALUES (113,11,2);
INSERT INTO `login_user_friend` VALUES (114,2,11);
INSERT INTO `login_user_friend` VALUES (115,11,3);
INSERT INTO `login_user_friend` VALUES (116,3,11);
INSERT INTO `login_user_friend` VALUES (125,1,5);
INSERT INTO `login_user_friend` VALUES (126,5,1);
INSERT INTO `login_user_friend` VALUES (127,1,6);
INSERT INTO `login_user_friend` VALUES (128,6,1);
INSERT INTO `login_user_friend` VALUES (129,1,8);
INSERT INTO `login_user_friend` VALUES (130,8,1);
INSERT INTO `login_user_friend` VALUES (131,1,10);
INSERT INTO `login_user_friend` VALUES (132,10,1);
INSERT INTO `login_user_friend` VALUES (133,11,1);
INSERT INTO `login_user_friend` VALUES (134,1,11);
CREATE TABLE "login_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "fname" varchar(100) NOT NULL, "lname" varchar(100) NOT NULL, "email" varchar(100) NOT NULL UNIQUE, "userpassword" varchar(100) NOT NULL, "dob" date NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "alias" varchar(255) NOT NULL UNIQUE);
INSERT INTO `login_user` VALUES (1,'Troy','Cetner','troycenter1@gmail.com','$2b$12$P8GNnWT/a0/JtKRDkQKJTe/lxT5pYOhSEj5DW6UdL3GDjBIXg9C9W','1975-05-21','2017-06-30 18:32:04.012000','2017-06-30 18:32:04.012000','Andonon');
INSERT INTO `login_user` VALUES (2,'Daniel','Garcia','dan@gmail.com','$2b$12$raovea..HBZLrI3rVM.nUuaSFMNz7T/T36CKKedgc7PWG3q89OzYW','1979-10-29','2017-06-30 18:49:13.687000','2017-06-30 18:49:13.687000','Dan');
INSERT INTO `login_user` VALUES (3,'Charles','Center','chuck@gmail.com','$2b$12$oRxUQQthAPuL.Sg3rnPg0.hQh4bNLS.4da97UkUE9UAo6OE0WoiJO','1976-07-29','2017-06-30 18:50:18.304000','2017-06-30 18:50:18.304000','Trucker Chuck');
INSERT INTO `login_user` VALUES (4,'Jon','Evers','jon@gmail.com','$2b$12$ULMFZwAEtcEdiOwpmUk1QOOm7hIxwTagu52MyZ2q3wLobzGoe54Xa','1977-10-30','2017-06-30 18:50:37.314000','2017-06-30 18:50:37.314000','Jon');
INSERT INTO `login_user` VALUES (5,'Mario','Andretti','mario@gmail.com','$2b$12$fx9y724fLSExF3yTrLp6mOL2XREYvyZbt3nZw393sChe0tapZXmbu','1989-10-29','2017-06-30 18:50:57.936000','2017-06-30 18:50:57.936000','Mario');
INSERT INTO `login_user` VALUES (6,'Colin','Smith','colin@gmail.com','$2b$12$gL/0ofu0NiovmMS4Cn672.PAhTEH7oOnoSKOE83B/BWcEC8ez/852','1977-12-31','2017-06-30 18:51:21.640000','2017-06-30 18:51:21.640000','Colin');
INSERT INTO `login_user` VALUES (7,'Erica','Johnson','erica@gmail.com','$2b$12$TsKDMlgnTET0CWJgibVSg.uVmMwTLy..vf/lOmQ60Vi6E8ZFXYMaC','2007-12-31','2017-06-30 18:51:41.762000','2017-06-30 18:51:41.762000','Erica');
INSERT INTO `login_user` VALUES (8,'James','Smith','jamessmith@gmail.com','$2b$12$kNlaWJGkWCgYOU/ATBjbM.mBgCz3ID6kRrcDJ0zyF.vZKEkaTtsZG','2006-10-30','2017-06-30 21:38:22.065000','2017-06-30 21:38:22.065000','Jsmith');
INSERT INTO `login_user` VALUES (9,'James','Michael','james@gmail.com','$2b$12$0qXq3./fSj5qiJ8pA8vDUuwmBqiKbEV.c1D8uqhA7xzQu4T/H7R62','2017-12-31','2017-06-30 21:47:41.163000','2017-06-30 21:47:41.163000','JMI');
INSERT INTO `login_user` VALUES (10,'Michael','Jordan','michael@gmail.com','$2b$12$YNNkPOFx0oVZ5RdblY8P0.ZfGA/unhv2sTDIsnxKTjdg1NEEw55oe','2016-12-31','2017-06-30 21:53:22.305000','2017-06-30 21:53:22.305000','MJ!');
INSERT INTO `login_user` VALUES (11,'Nikki','Lord','Lordie@gmail.com','$2b$12$.na3SwLSMLIGOqno8u9/aeMO/8UWMiiYj8vJveI/916rWLYmj0dAm','2016-12-31','2017-06-30 21:58:32.616000','2017-06-30 21:58:32.616000','LordieLordie');
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-06-30 18:29:40.419000');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2017-06-30 18:29:40.458000');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2017-06-30 18:29:40.492000');
INSERT INTO `django_migrations` VALUES (4,'admin','0002_logentry_remove_auto_add','2017-06-30 18:29:40.529000');
INSERT INTO `django_migrations` VALUES (5,'contenttypes','0002_remove_content_type_name','2017-06-30 18:29:40.582000');
INSERT INTO `django_migrations` VALUES (6,'auth','0002_alter_permission_name_max_length','2017-06-30 18:29:40.607000');
INSERT INTO `django_migrations` VALUES (7,'auth','0003_alter_user_email_max_length','2017-06-30 18:29:40.634000');
INSERT INTO `django_migrations` VALUES (8,'auth','0004_alter_user_username_opts','2017-06-30 18:29:40.671000');
INSERT INTO `django_migrations` VALUES (9,'auth','0005_alter_user_last_login_null','2017-06-30 18:29:40.707000');
INSERT INTO `django_migrations` VALUES (10,'auth','0006_require_contenttypes_0002','2017-06-30 18:29:40.714000');
INSERT INTO `django_migrations` VALUES (11,'auth','0007_alter_validators_add_error_messages','2017-06-30 18:29:40.743000');
INSERT INTO `django_migrations` VALUES (12,'auth','0008_alter_user_username_max_length','2017-06-30 18:29:40.778000');
INSERT INTO `django_migrations` VALUES (13,'login','0001_initial','2017-06-30 18:29:40.797000');
INSERT INTO `django_migrations` VALUES (14,'login','0002_auto_20170629_1357','2017-06-30 18:29:40.832000');
INSERT INTO `django_migrations` VALUES (15,'sessions','0001_initial','2017-06-30 18:29:40.848000');
INSERT INTO `django_migrations` VALUES (16,'login','0003_user_friend','2017-06-30 19:23:11.089000');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO `django_content_type` VALUES (1,'login','user');
INSERT INTO `django_content_type` VALUES (2,'admin','logentry');
INSERT INTO `django_content_type` VALUES (3,'auth','group');
INSERT INTO `django_content_type` VALUES (4,'auth','permission');
INSERT INTO `django_content_type` VALUES (5,'auth','user');
INSERT INTO `django_content_type` VALUES (6,'contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (7,'sessions','session');
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO `auth_permission` VALUES (1,1,'add_user','Can add user');
INSERT INTO `auth_permission` VALUES (2,1,'change_user','Can change user');
INSERT INTO `auth_permission` VALUES (3,1,'delete_user','Can delete user');
INSERT INTO `auth_permission` VALUES (4,2,'add_logentry','Can add log entry');
INSERT INTO `auth_permission` VALUES (5,2,'change_logentry','Can change log entry');
INSERT INTO `auth_permission` VALUES (6,2,'delete_logentry','Can delete log entry');
INSERT INTO `auth_permission` VALUES (7,3,'add_group','Can add group');
INSERT INTO `auth_permission` VALUES (8,3,'change_group','Can change group');
INSERT INTO `auth_permission` VALUES (9,3,'delete_group','Can delete group');
INSERT INTO `auth_permission` VALUES (10,4,'add_permission','Can add permission');
INSERT INTO `auth_permission` VALUES (11,4,'change_permission','Can change permission');
INSERT INTO `auth_permission` VALUES (12,4,'delete_permission','Can delete permission');
INSERT INTO `auth_permission` VALUES (13,5,'add_user','Can add user');
INSERT INTO `auth_permission` VALUES (14,5,'change_user','Can change user');
INSERT INTO `auth_permission` VALUES (15,5,'delete_user','Can delete user');
INSERT INTO `auth_permission` VALUES (16,6,'add_contenttype','Can add content type');
INSERT INTO `auth_permission` VALUES (17,6,'change_contenttype','Can change content type');
INSERT INTO `auth_permission` VALUES (18,6,'delete_contenttype','Can delete content type');
INSERT INTO `auth_permission` VALUES (19,7,'add_session','Can add session');
INSERT INTO `auth_permission` VALUES (20,7,'change_session','Can change session');
INSERT INTO `auth_permission` VALUES (21,7,'delete_session','Can delete session');
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE INDEX "login_user_friend_to_user_id_b8d3ac07" ON "login_user_friend" ("to_user_id");
CREATE UNIQUE INDEX "login_user_friend_from_user_id_to_user_id_67db74d3_uniq" ON "login_user_friend" ("from_user_id", "to_user_id");
CREATE INDEX "login_user_friend_from_user_id_da129670" ON "login_user_friend" ("from_user_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
COMMIT;
