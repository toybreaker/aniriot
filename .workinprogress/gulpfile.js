'use strict';
var _gulp = require('gulp');
var _gulp2 = _interopRequireDefault(_gulp);
var _gulpRiot = require('gulp-riot');
var _gulpRiot2 = _interopRequireDefault(_gulpRiot);

function _interopRequireDefault(obj) {
    return obj && obj.__esModule ? obj : {
        default: obj
    };
}
_gulp2.default.task('riot', function() {
    _gulp2.default.src('example.tag').pipe((0, _gulpRiot2.default)()).pipe(_gulp2.default.dest('dest'));
});