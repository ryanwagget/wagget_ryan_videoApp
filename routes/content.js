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

      res.render('home', {
        moviesData : movieResult //will give array that we can loop through
      });
    }
  });
});

module.exports = router;