-- Enable pgvector extension
CREATE EXTENSION IF NOT EXISTS vector;

-- Create profiles table
CREATE TABLE IF NOT EXISTS profiles (
  id UUID PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  full_name TEXT NOT NULL,
  face_embedding vector(128)
);

-- Create match_face function
CREATE OR REPLACE FUNCTION match_face(query_embedding vector(128), match_threshold float)
RETURNS UUID
LANGUAGE plpgsql
AS $$
DECLARE
  matched_user_id UUID;
BEGIN
  SELECT id
  INTO matched_user_id
  FROM profiles
  WHERE face_embedding <=> query_embedding < (1 - match_threshold)
  ORDER BY face_embedding <=> query_embedding
  LIMIT 1;

  RETURN matched_user_id;
END;
$$;
