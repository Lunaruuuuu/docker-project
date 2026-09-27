# 1. Penentuan base image yang ringan
FROM python:3.10-slim

# 2. Penentuan working directory di dalam container
WORKDIR /app

# 3. Salin file requirements.txt lebih dulu
COPY requirements.txt .

# 4. Instalasi dependensi (tanpa menyimpan cache pip agar image lebih kecil)
RUN pip install --no-cache-dir -r requirements.txt

# 5. Salin sisa file kode (main.py) ke dalam container
COPY . .

# 6. Perintah eksekusi utama saat container berjalan
CMD ["python", "main.py"]