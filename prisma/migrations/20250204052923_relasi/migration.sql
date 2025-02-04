-- CreateTable
CREATE TABLE `Pegawai` (
    `id_pegawai` VARCHAR(191) NOT NULL,
    `nama_pegawai` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_pegawai`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Barang` (
    `id_barang` VARCHAR(191) NOT NULL,
    `nama_barang` VARCHAR(191) NOT NULL,
    `stok_barang` INTEGER NOT NULL,
    `harga_barang` INTEGER NOT NULL,
    `tggl_masuk` INTEGER NOT NULL,
    `id_pegawai` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_barang`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Kategori` (
    `id_kategori` VARCHAR(191) NOT NULL,
    `nama_kategori` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_kategori`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Barang` ADD CONSTRAINT `Barang_id_pegawai_fkey` FOREIGN KEY (`id_pegawai`) REFERENCES `Pegawai`(`id_pegawai`) ON DELETE RESTRICT ON UPDATE CASCADE;
