var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/api/users', function(req, res, next) {
  let users = {
    id: 2,
    username: "laksdjf",
  }
  res.send(JSON.stringify(users));
});

module.exports = router;
