CREATE TABLE `file_tmp` (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`url`	TEXT NOT NULL,
	`create_date`	INTEGER NOT NULL,
	`modify_date`	INTEGER NOT NULL
);

CREATE TABLE "product" (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`code`	TEXT NOT NULL,
	`name`	TEXT NOT NULL,
	`production_date`	INTEGER NOT NULL,
	`expiration_date`	INTEGER NOT NULL,
	`expire_number`	INTEGER NOT NULL,
	`expire_type`	INTEGER NOT NULL,
	`create_date`	INTEGER NOT NULL,
	`modify_date`	INTEGER NOT NULL
);

CREATE TABLE "product_file" (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`product_id`	INTEGER NOT NULL,
	`url`	TEXT NOT NULL,
	`create_date`	INTEGER NOT NULL,
	`modify_date`	INTEGER NOT NULL
);

CREATE TABLE "product_expire_alert" (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`product_id`	INTEGER NOT NULL,
	`advance_number`	INTEGER NOT NULL,
	`advance_type`	INTEGER NOT NULL,
	`alert_date`	INTEGER NOT NULL,
	`create_date`	INTEGER NOT NULL,
	`modify_date`	INTEGER NOT NULL
);

CREATE TABLE "storage" (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL,
	`description`	TEXT,
	`parent_id`	INTEGER,
	`level`	INTEGER NOT NULL DEFAULT 0,
	`is_leaf`	INTEGER NOT NULL,
	`create_date`	INTEGER NOT NULL,
	`modify_date`	INTEGER NOT NULL
);

CREATE TABLE `storage_file` (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`storage_id`	INTEGER NOT NULL,
	`url`	TEXT NOT NULL,
	`create_date`	INTEGER NOT NULL,
	`modify_date`	INTEGER NOT NULL
);


