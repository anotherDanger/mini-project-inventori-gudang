import {PrismaClient} from '@prisma/client';

const prisma = new PrismaClient();

export const getProducts = async (req, res, next) => {
    const products = await prisma.barang.findMany();
    res.status(200).json(products);
};

