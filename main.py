from datetime import datetime
import pytz

def main():
    # Menentukan zona waktu (misal: Jakarta)
    tz_jakarta = pytz.timezone('Asia/Jakarta')
    waktu_sekarang = datetime.now(tz_jakarta)
    
    print("="*45)
    print("🚀 Aplikasi Python di dalam Docker Berjalan!")
    print(f"Waktu di Jakarta: {waktu_sekarang.strftime('%Y-%m-%d %H:%M:%S')}")
    print("="*45)

if __name__ == "__main__":
    main()