import React from 'react';
import { motion } from 'framer-motion';
import { ArrowRight, Code, Pencil, Terminal } from 'lucide-react';
import { Link } from 'react-router-dom';

const Home = () => {
  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
      {/* Hero Section */}
      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
        className="text-center mb-16"
      >
        <img
          src="https://i0.wp.com/www.bravenatorsrobotics.com/wp-content/uploads/2020/10/Tommy-Bitmoji.png?fit=398%2C398"
          alt="Profile"
          className="w-32 h-32 rounded-full mx-auto mb-6 object-cover"
        />
        <h1 className="text-4xl font-bold text-gray-900 mb-4">
          Hi, I'm Aditya Raj
        </h1>
        <p className="text-xl text-gray-600 mb-8">
          Full Stack Developer & Web Developer
        </p>
        <div className="flex justify-center gap-4">
          <Link
            to="/projects"
            className="inline-flex items-center px-6 py-3 border border-transparent text-base font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700"
          >
            View Projects <ArrowRight className="ml-2" size={20} />
          </Link>
          <Link
            to="/contact"
            className="inline-flex items-center px-6 py-3 border border-gray-300 text-base font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50"
          >
            Contact Me
          </Link>
        </div>
      </motion.div>

      {/* Skills Section */}
      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5, delay: 0.2 }}
        className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16"
      >
        <div className="bg-white p-6 rounded-lg shadow-sm border border-gray-100">
          <Code className="w-12 h-12 text-blue-600 mb-4" />
          <h3 className="text-xl font-semibold mb-2">Frontend Development</h3>
          <p className="text-gray-600">
            Crafting beautiful and responsive user interfaces using modern
            frameworks and tools.
          </p>
        </div>
        <div className="bg-white p-6 rounded-lg shadow-sm border border-gray-100">
          <Terminal className="w-12 h-12 text-blue-600 mb-4" />
          <h3 className="text-xl font-semibold mb-2">Backend Development</h3>
          <p className="text-gray-600">
            Building scalable server-side applications and RESTful APIs.
          </p>
        </div>
        <div className="bg-white p-6 rounded-lg shadow-sm border border-gray-100">
          <Pencil className="w-12 h-12 text-blue-600 mb-4" />
          <h3 className="text-xl font-semibold mb-2">Web development</h3>
          <p className="text-gray-600">
            Creating responsive and scalable web pages.
          </p>
        </div>
      </motion.div>

      {/* Featured Projects Preview */}
      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5, delay: 0.4 }}
        className="mb-16"
      >
        {/* <h2 className="text-3xl font-bold text-gray-900 mb-8">
          Featured Projects
        </h2> */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {/* Project cards will be dynamically loaded from CMS */}
        </div>
      </motion.div>
    </div>
  );
};

export default Home;