var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();


//middleware goes here... its in the middle of the process -> after the request, before the response
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
router.get('/:id', (req, res) => {
  console.log(req.params.id);
  console.log('Hit an api route with parma');

  connect.query(`SELECT * FROM mainmodel WHERE model="${req.params.id}"`, (err, result) => {
    if(err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.json({carData, result});
    }
    });
  });

  //router.delete('api/:id', (req, res) => {
  //  console.log('hit the delete route');

  //   connection.query(`DELETE FROM mainmodel WHERE model="${req.params.id}"`, (err, result) => {
  //     if (err) {
  //       console.log(err), throw(err);
  //     } else {
  //       res.json(result);
  //     }
  //   });
  // });

module.exports = router;
