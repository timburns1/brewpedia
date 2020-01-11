const gulp = require('gulp');
const sass = require('gulp-sass');
const browserSync = require('browser-sync').create();

// gulp.task('default', function () {
//     console.log('Hello Gulp!')
// });

//compile scss into css

function style() {
    //1. where is my scss file?
    return gulp.src('assets/scss/**/*.scss')
        //2. pass that file through sass compiler
        .pipe(sass())
        //3. where do i save the compiled css?
        .pipe(gulp.dest('assets/style.css'))
};



exports.style = style;