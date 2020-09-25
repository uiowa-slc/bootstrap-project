'use strict';

import path from 'path';
import gulp from 'gulp';
import del from 'del';
import browserSync from 'browser-sync';
// import swPrecache from 'sw-precache';
import autoprefixer from 'autoprefixer';
import cssnano from 'cssnano';
import gulpLoadPlugins from 'gulp-load-plugins';
import yaml from 'js-yaml';
import fs from 'fs';

// import {output as pagespeed} from 'psi';
import pkg from './package.json';

const $ = gulpLoadPlugins();
const { PATHS } = loadConfig();
const themeDir = '../../../themes/' + PATHS.theme;

function loadConfig() {
    let ymlFile = fs.readFileSync('../../../gulp.yml', 'utf8');
    return yaml.load(ymlFile);
}

// Lint JavaScript
function lint() {
    return gulp.src(themeDir + '/scripts/**/*.js')
        .pipe($.eslint())
        .pipe($.eslint.format())
        .pipe($.if(!browserSync.active, $.eslint.failOnError()));
}


// Optimize images
function images() {
    return gulp.src(themeDir + '/src/images/**/*')
        .pipe($.imagemin({
            progressive: true,
            interlaced: true
        }))
        .pipe(gulp.dest(themeDir + '/dist/images'))
        .pipe($.size({ title: themeDir + '/dist/images' }));
}


// Copy all files at the root level (app)
function copy() {
    return gulp.src([
            themeDir + '/src/**/*',
            '!' + themeDir + '/src/{images,scripts,styles}/**',
            '!' + themeDir + '/src/{images,scripts,styles}',
            'client/**/*',
            '!client/{images,scripts,styles}/**',
            '!client/{images,scripts,styles}',
        ], { dot: true })
        .pipe(gulp.dest(themeDir + '/dist/'))
        .pipe($.size({ title: 'copy' }));
}

// Compile and automatically prefix stylesheets
function styles() {
    const AUTOPREFIXER_BROWSERS = [
        'ie >= 10',
        'ie_mob >= 10',
        'ff >= 30',
        'chrome >= 34',
        'safari >= 7',
        'opera >= 23',
        'ios >= 7',
        'android >= 4.4',
        'bb >= 10'
    ];

    var plugins = [
        autoprefixer({
            overrideBrowserslist: AUTOPREFIXER_BROWSERS
        }),
        cssnano()
    ];


    // For best performance, don't add Sass partials to `gulp.src`
    return gulp.src([
            themeDir + '/src/styles/main.scss',
            themeDir + '/src/styles/editor.scss'
        ])
        .pipe($.newer('.tmp/styles'))
        .pipe($.sourcemaps.init())
        .pipe($.sass({
            precision: 10,
            includePaths: [
                './client/styles/',
                '../uiowa-bar/scss',
                './node_modules/'
            ]
        }).on('error', $.sass.logError))
        .pipe(gulp.dest('.tmp/styles'))
        // Concatenate and minify styles
        .pipe($.if('*.css', $.postcss(plugins)))
        .pipe($.size({ title: 'styles' }))
        .pipe($.sourcemaps.write('./'))
        .pipe(gulp.dest(themeDir + '/dist/styles'));
};

// Concatenate and minify JavaScript. Optionally transpiles ES2015 code to ES5.
// to enable ES2015 support remove the line `"only": "gulpfile.babel.js",` in the
// `.babelrc` file.
function scripts() {

    var projectScripts = PATHS.javascript;

    var defaultScripts = [themeDir + '/src/scripts/lib/**/*',
        themeDir + '/src/scripts/app.js'
    ];

    var combinedScripts = projectScripts.concat(defaultScripts);

    console.log(combinedScripts);
    return gulp.src(
            combinedScripts


        )
        //this causes nothing but woe in an attempt to make things quicker, but dunno if necessary:
        // .pipe($.newer('.tmp/scripts'))
        .pipe($.sourcemaps.init())
        .pipe($.babel())
        .pipe($.sourcemaps.write())
        // .pipe(gulp.dest('.tmp/scripts'))
        .pipe($.concat('main.min.js'))





        .pipe($.uglify())
        // Output files
        .pipe($.size({ title: 'scripts' }))
        .pipe($.sourcemaps.write('.'))
        .pipe(gulp.dest(themeDir + '/dist/scripts'));
};



// Clean output directory
function clean() {
    return del(['.tmp', themeDir + '/dist/*', '!' + themeDir + 'dist/.git'], { dot: true, force: true })
}

function watch() {
    gulp.watch(['./client/images/**/*'], gulp.series(images, reload));
    gulp.watch(['./client/styles/**/*.{scss,css}'], gulp.series(styles, reload));
    gulp.watch(['./client/scripts/**/*.js'], gulp.series(lint, scripts, reload));
    gulp.watch(['./templates/**/*'], reload);
    gulp.watch([themeDir + '/src/styles/**/*.{scss,css}'], gulp.series(styles, reload));
    gulp.watch([themeDir + '/src/scripts/**/*.js'], gulp.series(lint, scripts, reload));
    gulp.watch([themeDir + '/src/images/**/*'], gulp.series(images, reload));
    gulp.watch([themeDir + '/templates/**/*'], reload);
}

function liveReloadInit(done) {
    browserSync.init({
        proxy: "http://localhost:8888/" + PATHS.projectName

    });
    done();
}

function reload(done) {
    browserSync.reload();
    done();
}

// });

// Build production files, the default task
gulp.task('default', gulp.series(clean, copy, gulp.parallel(styles,
    lint, scripts, images), liveReloadInit, watch));

gulp.task('build', gulp.series(clean, copy, gulp.parallel(styles,
    lint, scripts, images)));