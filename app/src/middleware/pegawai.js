import {PrismaClient} from '@prisma/client';

const prisma = new PrismaClient();

export const addPegawai = async (req, res, next) => {
    const {id_pegawai, nama_pegawai} = req.body;

    try{
        const add = await prisma.pegawai.create({
            data:{
                id_pegawai: id_pegawai,
                nama_pegawai: nama_pegawai
            }
        });
        res.status(200).json({message: 'success'});
    }catch(error){
        res.status(500).json({message: 'Terjadi kesalahan'});
    }
}