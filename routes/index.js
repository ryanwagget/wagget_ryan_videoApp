var express = require('express');
var router = express.Router();
var config = require('../config');


//do some checking here -> check the default user profile
//ternary statement => MDN ternary
var toRender = (config.kidsmode) ? 'kids' : 'home'; //? asks question. left side is true, right side is false
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render(toRender,
    {
      title: 'Express',
      message : "Handlebars is awesome",
      mainpage : true,
      kidsmode : config.kidsmode
    });
});

module.exports = router;
