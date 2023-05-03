var express = require('express');
var bodyparser = require("body-parser");

var app = express();
app.set("view engine", "ejs");

app.use(bodyparser.urlencoded({extended:true}));
app.use(express.static("public")); 

var mysql = require('mysql'); 
var con = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    database : 'dwarf_books'
  });
  

app.get("/", function(req, res){
  res.sendFile('index.html', { root: "html" });
});

app.get("/search", function(req, res){
  res.render('search.ejs');
});

app.post("/search", function(req, res) {
  console.log(req.body.searchPick)
  switch(req.body.searchPick){
    case "title":
      var title = req.body.search
      var q = "SELECT * FROM dwarfbooks WHERE Title LIKE '%"+title+"%'";
      break;
    case "author":
      var author = req.body.search
      var q = "SELECT * FROM dwarfbooks WHERE Author LIKE '%"+author+"%'";
      break;
    case "publisher":
      var publisher = req.body.search
      var q = "SELECT * FROM dwarfbooks WHERE Publisher LIKE '%"+publisher+"%'";
      break;
    case "date":
      var date = req.body.search
      var q = "SELECT * FROM dwarfbooks WHERE Year LIKE '%"+date+"%'";
      break;
  }
  console.log(q)
  if (req.body.searchPick.length > 0){
    con.query(q, function(error, results) {
      if (error) throw error;
      else{
        if (results.length == 0){ //search unsuccessful
          res.render("searchResultn", {data: "No results found"});
        }   
        else{ //search successful 
          res.render("searchResult", {data: results});
        }
      }
    })
  }

});
app.get("/suggest", function(req, res){
  res.render('suggest.ejs');

app.post("/entry", function(req, res) {
  if (req.body.name.length && req.body.text.length > 0){
    var name = req.body.name
    var text = req.body.text
    var q = "INSERT INTO `suggestions` (Name, Description) VALUES (?,?)"
    con.query(q,[name,text], function(error, results) {
      if (error) throw error;
      else{
        res.render("suggest", {data: 'Successfully added feedback. Thank you!'});
      }
      })
    }
    else{
      res.render("suggest", {data: "Please fill both boxes before submitting."})
    }});

});
app.get("/display", function(req, res) {
  var q = "select * FROM dwarfbooks";
  con.query(q, function(error, results) {
  if (error) throw error;
  else{
    res.render("displayAll", { data: results });
  }
  
  });
});

app.get("/administrator", function(req, res) {
  res.render("administrator.ejs")
});
app.post("/delete", function(req, res) {
  if (req.body.deleteID.length > 0){
    var ID = req.body.deleteID
    var q = "DELETE FROM dwarfbooks WHERE ID = ?";
    con.query(q,[ID], function(error, results) {
    if (error) throw error;
    else{
      res.render("administrator", { data: "ID: "+ID+" has been deleted successfully." });
    }
    });
  }
});
app.post("/edit", function(req, res) {
  var ID = req.body.ID
  if (req.body.ID.length > 0){
    var title = req.body.title
    var author = req.body.author
    var publisher = req.body.publisher
    var year = req.body.year
    if (title.length > 0){ var q1 = "UPDATE dwarfbooks SET Title='"+title+"' where ID='"+ID+"';";}
    else{ var q1 = ""}
    if (author.length > 0){ var q2 = "UPDATE dwarfbooks SET Author='"+author+"' where ID='"+ID+"';";}
    else{ var q2 = ""}
    if (publisher.length > 0){ var q3 = "UPDATE dwarfbooks SET Publisher='"+publisher+"' where ID='"+ID+"';";}
    else{ var q3 = ""}
    if (year.length > 0){ var q4 = "UPDATE dwarfbooks SET Year='"+year+"' where ID='"+ID+"';";}
    else{ var q4 = ""}
    q = [q1,q2,q3,q4]
    for (let i = 0; i < q.length; i++) {
      try {
        con.query(q[i], function(error, results) {});
      } catch (ER_EMPTY_QUERY) {
        console.log(ER_EMPTY_QUERY)
      }
    }
    res.render("administrator", { data: "ID: "+ID+" has been updated successfully." });
  }
});

app.listen(3000, function () {
    console.log('App listening on port 3000!');
});
