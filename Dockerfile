# Menggunakan base image Node.js versi 14 sesuai kriteria Dicoding
FROM node:14

# Menentukan direktori kerja aplikasi di dalam container
WORKDIR /app

# Menyalin seluruh source code aplikasi ke direktori kerja
COPY . .

# Mengatur aplikasi ke mode production dan menentukan host database
ENV NODE_ENV=production
ENV DB_HOST=item-db
ENV PORT=8080

# Menginstal dependencies production dan membangun aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port aplikasi
EXPOSE 8080

# Menjalankan aplikasi ketika container dimulai
CMD ["npm", "start"]