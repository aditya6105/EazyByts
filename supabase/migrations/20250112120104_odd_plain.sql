/*
  # Portfolio CMS Schema

  1. New Tables
    - `profiles`
      - Stores user profile information
    - `projects`
      - Stores portfolio projects
    - `blog_posts`
      - Stores blog articles
    - `skills`
      - Stores user skills and expertise
    - `messages`
      - Stores contact form messages

  2. Security
    - Enable RLS on all tables
    - Add policies for authenticated users
*/

-- Create profiles table
CREATE TABLE IF NOT EXISTS profiles (
  id uuid PRIMARY KEY REFERENCES auth.users(id),
  full_name text,
  avatar_url text,
  title text,
  bio text,
  github_url text,
  linkedin_url text,
  email text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Create projects table
CREATE TABLE IF NOT EXISTS projects (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES profiles(id),
  title text NOT NULL,
  description text,
  image_url text,
  project_url text,
  github_url text,
  technologies text[],
  featured boolean DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Create blog_posts table
CREATE TABLE IF NOT EXISTS blog_posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES profiles(id),
  title text NOT NULL,
  content text,
  excerpt text,
  cover_image text,
  published boolean DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Create skills table
CREATE TABLE IF NOT EXISTS skills (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES profiles(id),
  name text NOT NULL,
  category text,
  proficiency integer CHECK (proficiency BETWEEN 1 AND 5),
  created_at timestamptz DEFAULT now()
);

-- Create messages table
CREATE TABLE IF NOT EXISTS messages (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  email text NOT NULL,
  subject text,
  message text NOT NULL,
  read boolean DEFAULT false,
  created_at timestamptz DEFAULT now()
);

-- Enable Row Level Security
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE blog_posts ENABLE ROW LEVEL SECURITY;
ALTER TABLE skills ENABLE ROW LEVEL SECURITY;
ALTER TABLE messages ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Public profiles are viewable by everyone"
  ON profiles
  FOR SELECT
  USING (true);

CREATE POLICY "Users can update own profile"
  ON profiles
  FOR UPDATE
  USING (auth.uid() = id);

CREATE POLICY "Public projects are viewable by everyone"
  ON projects
  FOR SELECT
  USING (true);

CREATE POLICY "Users can manage own projects"
  ON projects
  FOR ALL
  USING (auth.uid() = user_id);

CREATE POLICY "Published blog posts are viewable by everyone"
  ON blog_posts
  FOR SELECT
  USING (published = true);

CREATE POLICY "Users can manage own blog posts"
  ON blog_posts
  FOR ALL
  USING (auth.uid() = user_id);

CREATE POLICY "Users can manage own skills"
  ON skills
  FOR ALL
  USING (auth.uid() = user_id);

CREATE POLICY "Public skills are viewable by everyone"
  ON skills
  FOR SELECT
  USING (true);

CREATE POLICY "Anyone can create messages"
  ON messages
  FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Users can view own messages"
  ON messages
  FOR SELECT
  USING (auth.uid() IN (
    SELECT id FROM profiles WHERE profiles.id = auth.uid()
  ));