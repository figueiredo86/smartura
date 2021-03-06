drop table if exists ramais;

CREATE table if not exists ramais (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(80) NOT NULL DEFAULT '',
`context` varchar(80) NOT NULL DEFAULT 'ramais',
`deny` varchar(95) DEFAULT NULL,
`permit` varchar(95) DEFAULT NULL,
`secret` varchar(80) DEFAULT NULL,
`md5secret` varchar(80) DEFAULT NULL,
`remotesecret` varchar(250) DEFAULT NULL,
`transport` enum('tcp','udp','tcp,udp') DEFAULT NULL,
`host` varchar(31) NOT NULL DEFAULT 'dynamic',
`nat` varchar(5) NOT NULL DEFAULT 'no',
`type` enum('user','peer','friend') NOT NULL DEFAULT 'peer',
`accountcode` varchar(20) DEFAULT NULL,
`amaflags` varchar(13) DEFAULT NULL,
`callgroup` varchar(10) DEFAULT NULL,
`callerid` varchar(80) DEFAULT NULL,
`defaultip` varchar(15) DEFAULT NULL,
`dtmfmode` varchar(7) DEFAULT 'rfc2833',
`fromuser` varchar(80) DEFAULT NULL,
`fromdomain` varchar(80) DEFAULT NULL,
`insecure` varchar(20) DEFAULT 'port,invite',
`language` char(2) DEFAULT NULL,
`mailbox` varchar(50) DEFAULT NULL,
`pickupgroup` varchar(10) DEFAULT NULL,
`qualify` char(3) DEFAULT NULL,
`disallow` varchar(100) DEFAULT 'all',
`allow` varchar(100) DEFAULT 'ulaw;alaw;gsm',
`port` mediumint(5) unsigned NOT NULL DEFAULT '0',
`ipaddr` varchar(15) not null default '',
`callbackextension` varchar(100) not null,
`username` varchar(80) NOT NULL DEFAULT '',
`defaultuser` varchar(80) NOT NULL DEFAULT '',
`subscribecontext` varchar(80) DEFAULT NULL,
`directmedia` enum('yes','no') DEFAULT NULL,
`callcounter` enum('yes','no') DEFAULT NULL,
`qualifyfreq` int(5) unsigned DEFAULT '120',
`useragent` varchar(50) NOT NULL DEFAULT '',
`empresa_id` int(10) not null,
PRIMARY KEY (`id`),
UNIQUE KEY `name` (`name`),
KEY `name_2` (`name`),
foreign key (empresa_id) references clientes (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC
