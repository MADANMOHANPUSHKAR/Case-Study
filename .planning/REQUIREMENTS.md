# Requirements

## Scope & Purpose

This document defines the strict requirements for the **College Activity & Facility Portal**. The focus for v1 is delivering the core facial recognition access system and the three primary modules: Societies/Events, Facilities, and Workshops.

## 1. Table Stakes
*If these aren't met, the product is unusable.*

- [ ] **Responsive Web Client**: Must work flawlessly on mobile browsers and laptops.
- [ ] **Secure User Authentication**: Standard email/password or SSO login combined with biometric enrollment.
- [ ] **Camera Access & Permissions**: Must gracefully handle browser camera permissions and deny access appropriately.
- [ ] **Face Registration**: A secure onboarding flow to capture and store the user's face embedding (vector).
- [ ] **Liveness Detection**: The scanner must require the user to perform an action (e.g., blink, turn head) to prevent photo spoofing.

## 2. Differentiators
*Why people will use this instead of alternatives.*

- [ ] **Spoof-Proof Facility Check-in**: Gym and Swimming pool access granted only via live facial match against the user's registered embedding.
- [ ] **Proxy-Proof Event Attendance**: Society events and workshop attendance tracking via 1-to-1 facial recognition.
- [ ] **Privacy-First Biometrics**: Raw face images are never stored; only mathematical vectors (`pgvector`) are stored and used for comparison.

## 3. Scope Boundaries
*What we explicitly won't do in this phase to protect the timeline.*

- [ ] **Hardware Integration**: We will not integrate with physical turnstiles or RFID scanners. The system relies entirely on the user's or admin's mobile device camera.
- [ ] **Complex Payment Processing**: Paid workshops or gym memberships will be handled outside the app or added in a later phase. v1 assumes free or pre-paid access.
- [ ] **Native Mobile Apps**: We are building a Progressive Web App (PWA), not a native iOS/Android app, to avoid App Store delays and complex maintenance.

## Success Criteria
*How we'll know we succeeded.*

- A user can register their face successfully.
- A user can book a gym slot and "check in" using their device camera.
- The system successfully rejects an attempt to check in using a printed photo or video of another person.
- Administrators can view attendance logs for events and facilities.
