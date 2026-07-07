# 1. ใช้ Python เวอร์ชันที่เป็นมาตรฐาน
FROM python:3.9-slim

# 2. ตั้งโฟลเดอร์ทำงานในตู้คอนเทนเนอร์
WORKDIR /app

# 3. คัดลอกไฟล์ทั้งหมดจากเครื่องเราเข้าไปในตู้
COPY . .

# 4. สั่งให้ติดตั้ง library ที่เราเขียนไว้ใน requirements.txt
RUN pip install -r requirements.txt

# 5. สั่งให้เปิดโปรแกรม app.py เมื่อตู้เริ่มทำงาน
CMD ["python", "app.py"]