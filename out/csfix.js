// Generated by CoffeeScript 1.3.3
(function() {
  var coffee, data, dataFile, dataString, fsUtil, vm;

  console.log("=== node vm require cache issue (with csfix) ===");

  coffee = require('coffee-script');

  fsUtil = require('fs');

  vm = require('vm');

  dataFile = __dirname + '/../data.cson';

  dataString = fsUtil.readFileSync(dataFile).toString();

  data = coffee["eval"](dataString, {
    sandbox: true
  });

  console.log('first pass:', data);

  dataString = fsUtil.readFileSync(dataFile).toString();

  data = coffee["eval"](dataString, {
    sandbox: true
  });

  console.log('second pass:', data);

  console.log('\n');

}).call(this);
