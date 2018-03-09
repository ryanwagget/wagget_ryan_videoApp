var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

router.use((req, res, next) => {
  var now = new Date();
  var timestamp = now.toLocaleString('en-us', {
    hour: "numeric",
    minute: "numeric",
    hour12 : true
  });

  console.log(`you made a ${req.method} call!}`);
  console.log(`You made the call @ ${timestamp}`);
  //console.log(req);
  next();
});

/* GET home page. */
// router.get('/:id', (req, res) => {
//   console.log(req.params.id);
//   console.log('Hit an api route with parma');
//
//   connect.query(`SELECT * FROM mainmodel WHERE model="${req.params.id}"`, (err, result) => {
//     if(err) {
//       throw err; console.log(err);
//     } else {
//       console.log(result);
//
//       res.json({carData, result});
//     }
//     });
//   });

module.exports = router;
