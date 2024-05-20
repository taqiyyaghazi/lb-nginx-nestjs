# Menggunakan image Node.js resmi sebagai base image
FROM node:16-alpine

# Menentukan direktori kerja dalam container
WORKDIR /app

# Menyalin file package.json dan package-lock.json
COPY package*.json ./

# Menginstal dependencies
RUN npm install

# Menyalin seluruh kode aplikasi ke dalam container
COPY . .

# Menyalin entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Membangun aplikasi NestJS
RUN npm run build

# Menjalankan aplikasi dalam mode production dengan entrypoint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["npm", "run", "start:prod"]
