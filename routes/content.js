var express = require('express');
var router = express.Router();
var connect = require('../utils/sqlConnect');

/* GET users listing. */
// router.get('/', function(req, res, next) {
//   res.send('respond with a resource');
// });

router.get('/', (req, res) => {
  connect.query('SELECT * FROM tbl_movies', (err, movieResult) => {
    if(err) {
      throw err; console.log(err);
    } else {
      console.log(movieResult);

      res.render('content', {
        moviesData : movieResult //will give array that we can loop through
      });
    }
  });
});

router.get('/', (req, res) => {
  connect.query('SELECT * FROM tbl_shows', (err, showResult) => {
    if(err) {
      throw err; console.log(err);
    } else {
      console.log(showResult);

      res.render('content', {
        showsData : showResult //will give array that we can loop through
      });
    }
  });
});

module.exports = router;
