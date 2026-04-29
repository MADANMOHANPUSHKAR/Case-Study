# Stack Research

## Core Stack Recommendation

- **Frontend**: Next.js (React) with Tailwind CSS. Next.js provides excellent mobile optimization, fast page loads, and seamless full-stack capabilities.
- **Biometrics (Facial Recognition)**: `@mediapipe/tasks-vision` or `face-api.js`. These run entirely in the browser using WebAssembly/WebGL. This means the user's raw face image never leaves their device—only the mathematical vector (embedding) is sent to the server.
- **Database & Auth**: Supabase (PostgreSQL with `pgvector`). Supabase provides robust authentication, role-based access control, and crucially, `pgvector` allows for lightning-fast matching of facial embeddings.
- **Hosting**: Vercel. Ideal for Next.js and provides edge networking for fast access across the college.

## Why this stack?

- **Cost-effective**: Processing faces on the client device (laptop/mobile) saves massive server costs compared to sending video streams to a cloud provider.
- **Privacy-first**: By extracting embeddings client-side, you avoid storing or transmitting actual photos of students.
- **Responsive**: Tailwind + Next.js guarantees a smooth mobile and desktop experience.
