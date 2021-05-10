var express = require ('express');
var app = express();

var mysql = require ('mysql');

var bodyParser = require ('body-parser');

app.use(bodyParser.json({type:'application/json'}));
app.use(bodyParser.urlencoded({extended:true}));

var con = mysql.createConnection({
    host:'localhost',
    port:'8889',
    user:'root',
    password:'root',
    database:'facture'
})

var server = app.listen(4549, function(){
    var host= server.address().address
    var port= server.address().port
})

con.connect(function(error){
    if(error) console.log(error);
    else console.log("connected")
})

app.get('/',function(req,res){
    con.query('select * from facture',function(error,rows,fields){
        if(error) console.log(error)

        else {
            // console.log(rows);
            res.send(rows)
        }
    })
})


app.post('/create', function(req, res) {
    
    let nom = req.body.nom;
    let montant = req.body.montant;
    let date = req.body.date;
    let commentaire = req.body.commentaire;
    let photoLibrary = req.body.photoLibrary;

    console.log(req.body);
    console.log(req)
    con.query("insert into `facture` (`Nom`, `Montant`,`Date`,`Commentaire`,`Image`) values ('"+ nom + "','" + montant + "','" + date + "','" + commentaire + "','" + photoLibrary + "')") ,function(error,rows,fields){
        if(error) console.log(error)
    
        else {
            console.log(rows);
            res.send(rows)
        }
    }
    });

    app.post('/createImage', function(req, res) {
    
        let uploadData = req.body.uploadData;
        console.log(req.body);
        console.log(req)
        con.query("insert into `image` (`image`) values ('"+ uploadData + "')") ,function(error,rows,fields){
            if(error) console.log(error)
        
            else {
                console.log(rows);
                res.send(rows)
            }
        }
        });

    
