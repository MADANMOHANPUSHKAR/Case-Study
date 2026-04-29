---
wave: 1
depends_on: []
files_modified:
  - "package.json"
  - "src/app/layout.tsx"
  - "src/app/page.tsx"
  - "supabase/migrations/00_init.sql"
  - "src/lib/supabase.ts"
autonomous: true
---

# Plan 1: Foundation (Next.js & Supabase)

<tasks>

<task>
<description>Initialize Next.js project with Tailwind CSS</description>
<read_first>
- .planning/phases/1-foundation-biometrics/1-RESEARCH.md
</read_first>
<action>
1. Run `npx -y create-next-app@latest . --typescript --tailwind --eslint --app --src-dir --import-alias "@/*"` (run in non-interactive mode).
2. Install `lucide-react` for icons.
3. Replace the contents of `src/app/page.tsx` with a basic landing page component for the College Activity Portal.
</action>
<acceptance_criteria>
- `package.json` exists in the root directory and contains `next`, `react`, and `tailwindcss`.
- `src/app/page.tsx` exports a default React component for the College Portal.
</acceptance_criteria>
</task>

<task>
<description>Set up Supabase Client and Database Migrations</description>
<read_first>
- package.json
</read_first>
<action>
1. Install `@supabase/supabase-js`.
2. Create `src/lib/supabase.ts` and initialize the Supabase client using `process.env.NEXT_PUBLIC_SUPABASE_URL` and `process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY`.
3. Create a Supabase migration file `supabase/migrations/00_init.sql`.
4. In the migration file, add SQL to:
   - Enable the `vector` extension (`CREATE EXTENSION IF NOT EXISTS vector;`)
   - Create a `profiles` table with columns: `id` (uuid, primary key), `email` (text), `full_name` (text), and `face_embedding` (vector(128)).
   - Create a Postgres function `match_face(query_embedding vector(128), match_threshold float)` that returns the closest profile ID using `<=>` cosine distance.
</action>
<acceptance_criteria>
- `src/lib/supabase.ts` exports `supabase`.
- `supabase/migrations/00_init.sql` contains `CREATE EXTENSION IF NOT EXISTS vector;`.
- `supabase/migrations/00_init.sql` contains `face_embedding vector(128)`.
</acceptance_criteria>
</task>

</tasks>

<verification>
- Check that the Next.js app builds successfully (`npm run build`).
- Verify that the Supabase migration file is syntactically valid SQL.
</verification>

<must_haves>
- The project runs locally.
- The database schema is defined and ready for biometric embeddings.
</must_haves>
