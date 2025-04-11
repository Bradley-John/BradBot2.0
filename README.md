# Fullstack Discord Bot — Project Roadmap

A fun-but-serious fullstack Discord bot designed to mimic enterprise app architecture. Built for learning, portfolio power, and maybe a little over-engineering.

Virtual environment utilized, not in repo -
Use w/
source .venv/bin/activate

---

## ✅ Phase 1: MVP Weekend Build (Core Systems)

**Goal:** Get the bot running locally in Docker, with a minimal but functional backend.

### Setup
- [✅] Git repo with clean folder structure (`/bot`, `/backend`, `/infra`)
- [✅] ~~Python virtual environments and~~ `.env` files
- [ ] `Dockerfile` for the bot
- [ ] `Dockerfile` for the backend Flask API
- [ ] `docker-compose.yml` to run:
  - Bot container
  - Flask API container
  - Postgres DB

### Bot MVP
- [ ] Connect to Discord and respond to `!ping`
- [ ] Use environment variables for bot token and API keys

### Backend MVP
- [ ] Flask API skeleton (`/health`, `/api/data`)
- [ ] Connect Flask to Postgres via SQLAlchemy
- [ ] Create basic model (`CommandLog`, `CustomCommand`)

---

## 🔁 Phase 2: API Features + Persistence

**Goal:** Store and retrieve data from Postgres, and have the bot use the API.

### Backend/API
- [ ] RESTful routes:
  - `GET /commands`
  - `POST /commands` (add custom commands)
- [ ] Add timestamps, user ID, and metadata fields
- [ ] Validation and error handling

### Bot ↔️ API Integration
- [ ] On command use, log to Flask API
- [ ] Add `!custom <name>` feature — fetches response from API

---

## 🌍 Phase 3: Stretch Systems + Frontend

**Goal:** Expand the stack, polish UX, and practice deployment/infrastructure.

### Frontend (Optional)
- [ ] React + Tailwind frontend via Vite
- [ ] View command logs
- [ ] Add/edit custom commands via API

### Infra/DevOps
- [ ] GitHub Actions:
  - Python lint + test
  - Auto-build Docker containers
- [ ] Add logging (Python `logging` or `loguru`)
- [ ] Secure secrets using `.env`, Docker secrets, or Vault

### Deployment
- [ ] Deploy backend/API to Render, Railway, or Fly.io
- [ ] Deploy bot container separately
- [ ] Add health checks, auto-restart, monitoring

---

## 🏆 Bonus Features + Stretch Goals

- [ ] Discord OAuth2 login for web dashboard
- [ ] Scheduled messages/reminders (Celery or APScheduler)
- [ ] Redis caching for API or bot
- [ ] Plugin/modular command system
- [ ] Custom error tracking/log dashboard

---

## 📅 Milestone Log
- **Weekend 1:** 
---

