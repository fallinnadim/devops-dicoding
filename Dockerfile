# Menggunakan Image Node Versi 14
FROM node:14
# Mengatur Working Directory pada container /app
WORKDIR /app
# Mengcopy seluruh file pada directory host ke working directory pada container
COPY . .
# Menset variable ENV pada container
ENV NODE_ENV=production DB_HOST=item-db
# Melakukan instalasi depedensi untuk production (npm install) dan melakukan build
RUN npm install --production --unsafe-perm && npm run build
# Menjalankan perintah npm start ketika container mulai dijalankan
CMD ["npm", "start"]
# Mengexpose port 8080 pada container agar bisa diakses menggunakan port publish
EXPOSE 8080