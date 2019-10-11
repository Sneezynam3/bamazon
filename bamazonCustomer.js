var mysql = require("mysql");
var inquirer = require("inquirer");
var total = 0; 

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Rams2014!",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  displayInfo();
});


function displayInfo () {
var query = "SELECT * FROM products";
  connection.query(query, function(err, res){
    console.table(res)
    product(res)
  }) 
}

function product(quantities) {
    inquirer.prompt([{
        name: "prod",
        type: "input",
        message: "Select item ID: ",
    }])
    .then(function(ans){
        var productID = ans.prod
        console.log(productID)
        var prod_quant = quantities.filter(i => i.item_id == productID)[0];
        quantity(prod_quant)
    })
};

function quantity(quantities) {
    inquirer.prompt([{
        name: "quan",
        type: "input",
        message: "How many do you want to buy? ",
    }])
    .then(function(ans){
        console.log(ans.quan)
        console.log(quantities)
        var quandiff = parseInt(quantities.stock_quantity) - parseInt(ans.quan)
        shop()
    })
};

function shop() {
    inquirer.prompt([

    ])
    .then(function(ans){
       displayInfo() 
    })
};