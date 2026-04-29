# Features Research

## Core Feature Requirements

Based on the college portal ecosystem, these are the expected table-stakes features:

### 1. Biometric Authentication & Liveness
- **1-to-1 Matching**: Verifying a claimed identity against their registered face.
- **Liveness Detection**: **Critical.** You must require the user to blink, smile, or turn their head to prove they aren't just holding up a printed photo of their friend to the camera.

### 2. User & Role Management
- **Roles**: Student, Society Admin, Facility Manager, Super Admin.
- **Onboarding**: An initial "registration" phase where students securely register their face from multiple angles under good lighting.

### 3. Societies & Major Events
- Event Calendar with upcoming and past events.
- RSVP system with capacity limits.
- **Attendance**: At the door, the user scans their face on their own mobile device to "check-in", generating a temporary QR code or directly updating the database.

### 4. College Facilities (Gym/Swimming)
- **Time-slot Booking**: To manage capacity.
- **Approval Workflow**: Admin approval for certain facilities.
- **Access Control**: Face scan required to "clock in" and "clock out" of the facility.

### 5. Workshops
- Registration and ticketing.
- Certificate generation based on verified attendance (via face scan).
