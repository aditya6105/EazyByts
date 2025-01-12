/*
  # Add demo data for portfolio

  1. Demo Data
    - Sample projects with technologies and links
    - Sample blog posts with content
*/

-- Insert demo projects
INSERT INTO projects (title, description, image_url, project_url, github_url, technologies)
VALUES
  (
    'E-Commerce Platform',
    'A full-stack e-commerce platform built with React and Node.js. Features include user authentication, product management, shopping cart, and payment integration.',
    'https://images.unsplash.com/photo-1557821552-17105176677c?w=800&h=600&fit=crop',
    'https://demo-ecommerce.example.com',
    'https://github.com/username/ecommerce',
    ARRAY['React', 'Node.js', 'PostgreSQL', 'Stripe', 'Redux']
  ),
  (
    'Weather Dashboard',
    'Real-time weather application that provides detailed forecasts, interactive maps, and weather alerts using multiple weather APIs.',
    'https://images.unsplash.com/photo-1592210454359-9043f067919b?w=800&h=600&fit=crop',
    'https://weather-app.example.com',
    'https://github.com/username/weather-app',
    ARRAY['React', 'TypeScript', 'OpenWeather API', 'Chart.js']
  ),
  (
    'Task Management System',
    'A collaborative task management tool with real-time updates, team workspaces, and progress tracking features.',
    'https://images.unsplash.com/photo-1540350394557-8d14678e7f91?w=800&h=600&fit=crop',
    'https://task-manager.example.com',
    'https://github.com/username/task-manager',
    ARRAY['React', 'Node.js', 'Socket.io', 'MongoDB']
  );

-- Insert demo blog posts
INSERT INTO blog_posts (title, content, excerpt, cover_image, published)
VALUES
  (
    'Building Scalable React Applications',
    'In this comprehensive guide, we''ll explore best practices for building scalable React applications. We''ll cover state management, code organization, performance optimization, and more.

## Key Topics

1. Component Architecture
2. State Management with Redux
3. Performance Optimization
4. Code Splitting
5. Testing Strategies

Learn how to structure your React applications for maintainability and scalability...',
    'A comprehensive guide to building scalable React applications, covering state management, performance optimization, and best practices.',
    'https://images.unsplash.com/photo-1633356122544-f134324a6cee?w=800&h=600&fit=crop',
    true
  ),
  (
    'Modern CSS Techniques',
    'Discover modern CSS techniques and features that can enhance your web development workflow. From CSS Grid to Custom Properties, learn how to write better CSS.

## What You''ll Learn

- CSS Grid and Flexbox
- Custom Properties (CSS Variables)
- CSS Modules
- Modern CSS Reset
- Responsive Design Patterns

Stay up-to-date with the latest CSS features and techniques...',
    'Explore modern CSS techniques and features that will improve your web development workflow and enhance your projects.',
    'https://images.unsplash.com/photo-1507721999472-8ed4421c4af2?w=800&h=600&fit=crop',
    true
  ),
  (
    'Getting Started with TypeScript',
    'TypeScript is becoming increasingly popular in the JavaScript ecosystem. This guide will help you understand the basics and get started with TypeScript.

## Topics Covered

1. Basic Types
2. Interfaces
3. Classes
4. Generics
5. Type Inference
6. Configuration

Learn how TypeScript can improve your development experience...',
    'A beginner-friendly guide to getting started with TypeScript, covering basic concepts and practical examples.',
    'https://images.unsplash.com/photo-1516116216624-53e697fedbea?w=800&h=600&fit=crop',
    true
  );