<?xml version="1.0" encoding="UTF-8"?>
<schemadesigner version="6.5">
<source>
<database charset="utf8mb4" collation="utf8mb4_general_ci">strukbelanjaan</database>
</source>
<canvas zoom="100">
<tables>
<table name="barang" view="colnames">
<left>256</left>
<top>112</top>
<width>107</width>
<height>129</height>
<sql_create_table>CREATE TABLE `barang` (
  `kd_barang` varchar(255) NOT NULL,
  `namabrg` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kd_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4</sql_create_table>
</table>
<table name="kasir" view="colnames">
<left>461</left>
<top>384</top>
<width>113</width>
<height>112</height>
<sql_create_table>CREATE TABLE `kasir` (
  `kd_kasir` varchar(255) NOT NULL,
  `nama_kasir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kd_kasir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4</sql_create_table>
</table>
<table name="strukbelanja" view="colnames">
<left>216</left>
<top>277</top>
<width>96</width>
<height>146</height>
<sql_create_table>CREATE TABLE `strukbelanja` (
  `no_struk` varchar(255) NOT NULL,
  `kd_kasir` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no_struk`),
  KEY `fk_strukbelanja` (`kd_kasir`),
  CONSTRAINT `fk_strukbelanja` FOREIGN KEY (`kd_kasir`) REFERENCES `kasir` (`kd_kasir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4</sql_create_table>
</table>
<table name="strukbelanjaan" view="colnames">
<left>541</left>
<top>81</top>
<width>107</width>
<height>129</height>
<sql_create_table>CREATE TABLE `strukbelanjaan` (
  `no_struk` varchar(255) NOT NULL,
  `kd_barang` varchar(255) DEFAULT NULL,
  `jmlahbrg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no_struk`),
  KEY `fk_strukbelanjaan` (`kd_barang`),
  CONSTRAINT `fk_strukbelanjaan` FOREIGN KEY (`kd_barang`) REFERENCES `barang` (`kd_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4</sql_create_table>
</table>
</tables>
</canvas>
</schemadesigner>