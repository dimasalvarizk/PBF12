# Gunakan image Node.js resmi
FROM node:18-alpine

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh isi folder proyek ke dalam container
COPY . .

# Build aplikasi Next.js
RUN npm run build

# Ekspos port 3000 (default Next.js)
EXPOSE 3000

# Jalankan aplikasi dalam mode production
CMD ["npm", "start"]
