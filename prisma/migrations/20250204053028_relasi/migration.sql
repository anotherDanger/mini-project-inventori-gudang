/*
  Warnings:

  - You are about to drop the `Barang` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Kategori` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Pegawai` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Barang` DROP FOREIGN KEY `Barang_id_pegawai_fkey`;

-- DropTable
DROP TABLE `Barang`;

-- DropTable
DROP TABLE `Kategori`;

-- DropTable
DROP TABLE `Pegawai`;

-- CreateTable
CREATE TABLE `pegawai` (
    `id_pegawai` VARCHAR(191) NOT NULL,
    `nama_pegawai` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_pegawai`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `barang` (
    `id_barang` VARCHAR(191) NOT NULL,
    `nama_barang` VARCHAR(191) NOT NULL,
    `stok_barang` INTEGER NOT NULL,
    `harga_barang` INTEGER NOT NULL,
    `tggl_masuk` INTEGER NOT NULL,
    `id_pegawai` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_barang`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `kategori` (
    `id_kategori` VARCHAR(191) NOT NULL,
    `nama_kategori` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_kategori`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `barang` ADD CONSTRAINT `barang_id_pegawai_fkey` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai`(`id_pegawai`) ON DELETE RESTRICT ON UPDATE CASCADE;
