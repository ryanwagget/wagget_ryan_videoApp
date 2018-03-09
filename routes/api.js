var express = require('express');
var connect = require('../utils/sqlConnect'); //so that we can run the queries
var bodyParser = require('body-parser');
var router = express.Router();


//middleware goes here... its in the middle of the process -> after the request, before the response
//
//parse request, make sure we can convert incoming data into something express can use
router.use(bodyParser.urlencoded({ extended : false}));
router.use(bodyParser.json());
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
router.get('/:id', (req, res) => { //creating variable
  console.log(req.params.id);
  console.log('Hit an api route with parma');

  connect.query(`SELECT * FROM mainmodel WHERE model='${req.params.id}'`, (err, result) => {
    if(err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.json(result);
    }
    });
  });

  router.post('/:id', (req, res) => {
    console.log(`Hit the post route`);

    connect.query(`INSERT into mainmodel (id, model, modelName, pricing, modelDetails, imgPath) VALUES (NULL, "${req.body.model}, ${req.body.modelName}, ${req.body.pricing}, ${req.body.modelDetails}, ${req.path.imgPath}");`, (err, data) => {
      if(err){
        throw(err);
      } else {
        res.json(data);
      }
    })
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
