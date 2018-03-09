//IN TTERMINAL express project name. Change .jade files to .handlebars write line 14-16
//what do you type in to express project????
//what are the terminal commands to install the necessary files and set up the project
//make new test project
var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var xhb = require('express-handlebars');

//comment out the lines 10 & ll when you start

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.engine('handlebars', xhb({ defaultLayout : 'main'})); //app.engine(library, library)
app.set('view engine', 'handlebars');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev')); //
app.use(bodyParser.json()); //sends to express so that it can parse/turn data into usable object
app.use(bodyParser.urlencoded({ extended: false })); //sends to express so that it can parse/turn data into usable object
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//import all of your routes
//app.use('/', require('./routes/index')); //go to require(file) to do the first thing
app.use('/', require('./routes/content'));
app.use('/details', require('./routes/details'));
app.use('/api', require('./routes/api'));
app.use('/login', require('./routes/login'));

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
