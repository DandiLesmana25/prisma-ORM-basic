const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

const getAllProducts = async () => {
    const products = await prisma.$queryRaw`SELECT id, title, published FROM product`

    return products;
}

const createProductById = async () => {
    const product = await prisma.product.create({
        data: {
          title,
          content,
          published
        }
      })

      return product;
}

module.exports = { getAllProducts, createProductById };