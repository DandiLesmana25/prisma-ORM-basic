#Prisma ORM

## add Prisma to existing project

### 1. add the Prisma CLI as a development dependency to your project:

```bash
  npm install prisma --save-dev
```

### 2. invoke the Prisma CLI by prefixing it with `npx`:

```bash
npx prisma
```

### 3. set up your Prisma ORM project by creating your [Prisma schema](https://www.prisma.io/docs/orm/prisma-schema) file template with the following command:

```bash
npx prisma init
```

> **the command above will generate file .env and prisma/schema.prisma**



# Next step

1. https://www.prisma.io/docs/getting-started/setup-prisma/add-to-existing-project/relational-databases/connect-your-database-node-mysql
