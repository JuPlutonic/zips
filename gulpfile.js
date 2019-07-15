var postcss = require('gulp-postcss');
var gulp = require('gulp');
var autoprefixer = require('autoprefixer'); //Added
var cssnano = require('cssnano'); //Added

gulp.task('serve',['css'], function() {
	gulp.watch('./public/css/*.css', ['css']);
});

gulp.task('css', function() {
	var plugin = [
		autoprefixer(),
		cssnano()
		// PostCSS Plugins Here
	];
	return gulp.src('./public/css/*.css')
		.pipe(postcss(plugin))
		.pipe(gulp.dest('./dest'));
});