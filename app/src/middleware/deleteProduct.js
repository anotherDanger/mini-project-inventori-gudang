import {PrismaClient} from '@prisma/client';

const prisma = new PrismaClient();

export const deleteProduct = async (req, res, next) => {
    const {id} = req.params;
    try{
        const hapus = await prisma.barang.delete({
            where: {id_barang: id}
        });
        res.status(200).json({message: 'Success'});
    }catch(error)
    {
        res.status(500).json({message: 'Failed'});
    }
}