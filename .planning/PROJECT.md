# College Activity & Facility Portal

## What This Is

A responsive web application (for mobile and laptop) that serves as a unified college portal. It uses AI/ML-based facial recognition to securely track user access and prevent spoofing (e.g., tracking for friends). The platform manages society events, online registrations for facilities like gyms and swimming pools, and signups for upcoming workshops.

## Core Value

Secure, spoof-proof access and tracking for college facilities and events, driven by seamless facial recognition technology.

## Requirements

### Validated

(None yet — ship to validate)

### Active

- [ ] Implement AI/ML facial recognition for secure user login and tracking.
- [ ] Create a responsive web interface optimized for both mobile and laptop screens.
- [ ] Build a module for Societies and Major Events (viewing and tracking past/current events).
- [ ] Build a College Facilities module (end-to-end online registration and approval for Gym and Swimming).
- [ ] Build an Upcoming Workshops/Events module (registration to attendance tracking).
- [ ] Ensure the face scanner enforces strict 1-to-1 tracking to prevent proxy attendance.

### Out of Scope

- [Hardware integrations] — The face scanning will rely on the user's device camera (mobile/laptop) rather than dedicated physical campus hardware.

## Context

- The core differentiator is the biometric security (facial recognition) to prevent students from logging in or claiming attendance for their friends.
- Needs to handle end-to-end workflows: Registration -> Approval -> Attendance.
- Will likely need integration with a pre-trained ML model (e.g., face-api.js, AWS Rekognition, or similar) to handle the facial features natively in-browser or via a backend API.

## Constraints

- **Security/Privacy**: Handling facial data requires strict privacy compliance and secure storage.
- **Performance**: Facial recognition needs to be reasonably fast and work across various device cameras.
- **Cross-Platform**: Must work reliably on both mobile browsers and desktop browsers.

## Key Decisions

| Decision | Rationale | Outcome |
|----------|-----------|---------|
| Device-based scanning | Using device webcams/mobile cameras keeps costs low and avoids custom hardware. | — Pending |

## Evolution

This document evolves at phase transitions and milestone boundaries.

**After each phase transition** (via `/gsd-transition`):
1. Requirements invalidated? → Move to Out of Scope with reason
2. Requirements validated? → Move to Validated with phase reference
3. New requirements emerged? → Add to Active
4. Decisions to log? → Add to Key Decisions
5. "What This Is" still accurate? → Update if drifted

**After each milestone** (via `/gsd-complete-milestone`):
1. Full review of all sections
2. Core Value check — still the right priority?
3. Audit Out of Scope — reasons still valid?
4. Update Context with current state

---
*Last updated: 2026-04-29 after user pivot*
