var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/:id', (req, res) => {
  connect.query(`SELECT * FROM tbl_movies WHERE movies_id = ${req.params.id}`, (err, result) => {
    if(err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('details', {
        moviesData : result[0] //will give array that we can loop through
      });
    }
  });
});

module.exports = router;
