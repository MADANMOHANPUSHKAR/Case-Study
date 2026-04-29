# Project Roadmap

This roadmap defines the execution phases for the College Activity & Facility Portal. 

## Phase 1: Foundation & Biometrics
**Goal:** Establish the core infrastructure, traditional authentication, and the facial recognition/liveness engine.
- [ ] Initialize Next.js project with Tailwind CSS and shadcn/ui.
- [ ] Set up Supabase with PostgreSQL, including the `pgvector` extension.
- [ ] Implement standard user authentication (Email/Password or SSO).
- [ ] Build the Face Registration flow (extracting embeddings via MediaPipe/face-api.js).
- [ ] Develop the Biometric Scanner component with basic Liveness Detection (blink/turn head).
- [ ] Create the server-side matching logic to compare live scans against stored vectors.

## Phase 2: Facilities & Events Modules
**Goal:** Build the primary user-facing features and integrate the biometric scanner for access control.
- [ ] **Facilities**: Create booking system for Gym and Swimming Pool (slots, capacity).
- [ ] **Facilities**: Integrate the Face Scanner for "check-in" at facilities.
- [ ] **Societies & Events**: Build event calendar and RSVP system.
- [ ] **Societies & Events**: Integrate the Face Scanner for proxy-proof event attendance.
- [ ] **Workshops**: Create workshop registration flow.

## Phase 3: Dashboards & Polish
**Goal:** Provide management tools for administrators and finalize the mobile experience.
- [ ] Build Admin Dashboard to view attendance logs and facility usage.
- [ ] Build User Dashboard to show upcoming bookings and registered events.
- [ ] Configure Progressive Web App (PWA) manifest and service workers for mobile installation.
- [ ] Finalize UI/UX polish, error handling (especially for camera permissions), and responsive design.

---
*Last updated: 2026-04-29*
