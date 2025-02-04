import {PrismaClient} from '@prisma/client';

const prisma = new PrismaClient();

export const tambahProduk = async (req, res, next) => {
    const {id_barang, nama_barang, stok_barang, harga_pcs,tggl_masuk ,id_pegawai} = req.body;
    try{
        const produk = await prisma.barang.create({
            data:{
                id_barang: id_barang,
                nama_barang: nama_barang,
                stok_barang: stok_barang,
                harga_barang: harga_pcs,
                tggl_masuk: tggl_masuk,
                id_pegawai: id_pegawai
            }
            
        });
        res.status(200).json({message: 'success'});
    }catch(error)
    {
        res.status(500).json({message: error});
    }

}