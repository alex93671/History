FROM python:3.10-slim

# تنظیم پوشه کاری داخل کانتینر
WORKDIR /app

# کپی کردن فایل نیازمندی‌ها و نصب آن‌ها
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# کپی کردن بقیه فایل‌های پروژه
COPY . .

# تنظیم پورت پیش‌فرض
ENV PORT=8000
EXPOSE 8000

# دستور اجرای برنامه
CMD ["python", "main.py"]
