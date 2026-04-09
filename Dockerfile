FROM node:18-alpine

# ডকারের ভেতরে একটি ফোল্ডার তৈরি করছি
WORKDIR /app

# প্রথমে শুধু backend ফোল্ডারের package.json কপি করছি
COPY backend/package*.json ./backend/

# backend ফোল্ডারে ঢুকে ডিপেন্ডেন্সি (npm) ইনস্টল করছি
RUN cd backend && npm install

# এবার পুরো প্রজেক্ট (backend এবং frontend দুটোই) কপি করছি
COPY . .

# আপনার পোর্ট (3000 হলে এটাই রাখবেন)
EXPOSE 3000

# backend ফোল্ডারের ভেতর থেকে server.js রান করছি
CMD ["node", "backend/server.js"]