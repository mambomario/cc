const gulp = require('gulp');
const sass = require('gulp-sass');
const browserSync = require('browser-sync').create();

// compile scss to css

function style(){

	//locate scss
	return gulp.src('./assets/sass/*.scss')

	// pass through compiler
	.pipe(sass().on('error', sass.logError))

	// where to save compiled 
	.pipe(gulp.dest('./assets/css'))

	// Stream changes

	.pipe(browserSync.stream());

}


function watch(){

	browserSync.init({

		server: {
			baseDir: './'
		}
	});
	gulp.watch('./assets/sass/*.scss',style); //.on('change', browserSync.reload);
	gulp.watch('./*.html').on('change', browserSync.reload);
	gulp.watch('./assets/js/*.js').on('change', browserSync.reload);
	gulp.watch('./assets/images/*.*').on('change', browserSync.reload);

}

exports.style = style;
exports.watch = watch;