# Fullstack Discord Bot — Project Roadmap

A fun-but-serious fullstack Discord bot designed to mimic enterprise app architecture. Built for learning, portfolio power, and maybe a little over-engineering.

Virtual environment utilized, not in repo -
Use w/
source .venv/bin/activate

To boot Docker - In root directory:
docker compose up -d (--build to rebuild)

Tear down:
docker compose down (-v if want to tear down volume)

---

## ✅ Phase 1: MVP Weekend Build (Core Systems)

**Goal:** Get the bot running locally in Docker, with a minimal but functional backend.

### Setup
- [✅] Git repo with clean folder structure (`/bot`, `/backend`, `/infra`)
- [✅] ~~Python virtual environments and~~ `.env` files
- [✅] `Dockerfile` for the bot
- [✅] `Dockerfile` for the backend Flask API
- [✅] `docker-compose.yml` to run:
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

  Really just week 1, thinking about it. Haven't had much experience setting up a worthwhile side project, so funny to feel that some goals were ambitious and some felt like they weren't ambitious enough.

  Found that Docker was as easy to set up for a new project as configuring/messing around with it on work projects were. No major issues this week, a lot of poking around and (re)learning some things I haven't touched in a bit (Ex: I certainly don't dockerize things at home). Maybe the only thing at this point was not paying attention and realizing "Oh yeah we didn't include .venv in git" which wasn't a huge realization, just more of a silly realization if anything.

  It's taking some amount of effort to stop myself from rewriting/adding more to the current project plans.

  That said, I still love this compared to my previous iteration which merely ran on the terminal and... that's about it. Actually having more of a microservice built out feels leagues different even though the functionality of the bot is mostly the same at the moment.
- **Week 2.5ish:**
 
  Had a bunch of prep for a vacation with friends and other life prep around that. In the most Linkedin "What I learned about B2B sales at irrelevant event" way, I found myself laughing at how even a personal side project can fall into the same pitfalls that work projects do in having events come up with conflicting timelines. Fun stuff!

  First day back and this has been on my mind as I got home, so the current plan is to really just mess with some discord bot basics and see if I can implement that !ping commaand and really just around play with Discord. I do have goals of familiarizing myself more with the tools I've used at work with this, but I still intend on having the fun I initially planned on with this!

  I'm thinking an immediate addition might be to add a table in the DB to store user stats, which leads to me not particularly knowing if I want to add message count related statistics per user or something that might not require a bot to always be online. Lots of potential here, I'll have to think a bit more than this adhoc message as I return home from vacation
