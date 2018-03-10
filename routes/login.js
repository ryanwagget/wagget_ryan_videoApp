var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

var parentButton = document.querySelector('.parentsButton');
var kidButton = document.querySelector('.kidsButton');

function kidsMode()
{
  kidsmode = true;
}

function parentsMode()
{
  kidsmode = false;
}

parentButton.addEventListener('click', kidsMode, false);
kidButton.addEventListener('click', parentMode, false);

/* GET home page. */
router.get('/', (req, res) => {
  connect.query('SELECT * FROM db_videoApp', (err, result) => {
    if(err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('details', {

      });
    }
  });
});

module.exports = router;
