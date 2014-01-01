module.exports = function (grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    jshint: {
      src: ['', 'gruntfile.js'],
    },
    jsbeautifier: {
      modify: {
        src: ['', 'gruntfile.js'],
        options: {
          config: '.jsbeautifyrc'
        }
      },
      verify: {
        src: ['', 'gruntfile.js'],
        options: {
          mode: 'VERIFY_ONLY',
          config: '.jsbeautifyrc'
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-jsbeautifier');

  grunt.registerTask('clean', ['jsbeautifier:modify', 'jshint']);
  grunt.registerTask('verify', ['jsbeautifier:verify', 'jshint']);
};
