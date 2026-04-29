# Architecture Research

## System Architecture

### Face Authentication Flow
1. **Registration**: Student logs in with college email -> grants camera access -> captures face -> Client extracts 128-dimensional embedding -> Server stores embedding in Supabase PostgreSQL (`pgvector`).
2. **Verification (e.g., entering the Gym)**: Student selects "Check-in to Gym" -> Camera opens -> Liveness check performed -> Client extracts embedding -> Sent to server.
3. **Matching**: Server uses cosine similarity (`pgvector`) to compare the live embedding with the registered embedding. If match > 95%, access is granted.

### Module Architecture
- **Web Client (Next.js)**: Progressive Web App (PWA) so students can "install" it on their phones. Camera access via WebRTC (`navigator.mediaDevices.getUserMedia`).
- **API/Backend (Next.js API Routes / Supabase)**: Handles business logic (is the gym full? is the student registered for the workshop?).
- **Database (Supabase)**: Relational data mapping `Users` to `Events`, `Facilities`, and `Attendance_Logs`.

## Security Architecture
- Embeddings are treated as passwords.
- No raw images are saved to the database after the initial embedding extraction.
