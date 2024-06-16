#running migration database/ memigrate model ke database
npx prisma migrate dev --name init_pertama

# open database interface like php myadmin
npx prisma studio


npx prisma generate
#This command reads your Prisma schema and generates your Prisma Client library:


#untuk update perubahan pada schema database
npx prisma db push

#refresh and seed database
npx prisma migrate reset
