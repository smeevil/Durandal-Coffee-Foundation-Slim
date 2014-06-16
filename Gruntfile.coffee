module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    coffee:
      compile:
        options:
          sourceMap: true
        files:
          'javascripts/app.js': 'source/coffee/app.coffee'


      compile_glob:
        options:
          sourceMap: true
        expand: true
        cwd: 'source/coffee/app/'
        src: ['**/*.coffee']
        dest: 'app'
        ext: '.js'

    compass:
      dist:
        options:
          config: 'config.rb'
          sourcemap: true
          sassDir: 'source/sass'
          cssDir: 'stylesheets'
          environment: 'development'

    slim:
      dist:
        options:
          pretty: true
        files:
          [{
              expand: true
              cwd: 'source/slim/views'
              src: ['{,*/}*.slim']
              dest: 'app/views'
              ext: '.html'
            },{
              'index.html': 'source/slim/index.slim'
            }
          ]

    watch:
      options:
        livereload: true,
        spawn: false

      js:
        files: 'source/coffee/**/*.coffee',
        tasks: ['coffee'],

      css:
        files: 'source/sass/**/*.sass',
        tasks: ['compass'],

      html:
        files: 'source/slim/**/*.slim',
        tasks: ['slim'],

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-slim'

  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Default task(s).
  grunt.registerTask "default", ['slim', 'coffee', 'compass']

  return