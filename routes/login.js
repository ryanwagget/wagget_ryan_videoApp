var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res) => {
  connect.query('SELECT * FROM mainmodel', (err, result) => {
    if(err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('details', {
        title: 'Mini Cars',
        message : "A Selection of minis",
        carData : result //will give array that we can loop through
      });
    }
  });
});

module.exports = router;
