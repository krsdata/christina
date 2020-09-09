var express = require('express');
var router = express.Router();
const sequelize = require("../models/Users")
var jwt = require('jsonwebtoken');
var bcrypt = require('bcryptjs');
// const multer = require('multer');
var SECRET_KEY = "89891232";

var app = express();
const mailer = require('express-mailer'); // call express
app.set('view engine', 'jade');

// Configure express-mail and setup default mail data.
mailer.extend(app, {
  from: 'Christina <info@christinajewellery.com.au>',
  host: 'mail.christinajewellery.com.au', // hostname
  secureConnection: true, // use SSL
  port: 465, // port for secure SMTP
  transportMethod: 'SMTP', // default is SMTP. Accepts anything that nodemailer accepts
  auth: {
  user: 'info@christinajewellery.com.au', // gmail id
  pass: 'Christina@2020' // gmail password
  }
});



/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Hey', message: 'Hello there!' })
 // res.send('respond with a resource');
  
});

const checkToken = (req, res, next) => {
  const header = req.headers['authorization'];

  if (header !== 'undefined') {
    const token = header;
    req.token = token;
    next();
  } else {
    res.sendStatus(403)
  }
}

router.post('/login',function(req,res){
  let email = req.body.username;
  
    sequelize.query("SELECT * FROM users WHERE email = ? and is_verified = ? ",{type:sequelize.QueryTypes.SELECT, raw:true,  replacements: [email,1]}).then(rows => {
        if (rows.length == 0) {
          res.json({
            success:false,
            message:'Invalid Username'
          });
        } else {
          bcrypt.compare(req.body.password, rows[0].password,function(error,userdata){
              if(error) return res.json({"status":false,"message":"Invalid Data","data" : [] });
      
              if (!userdata) return res.json({"status":false,"message":"Invalid password","data" : [] });
              let id = rows[0].id;
              let token = jwt.sign({email: email, id:id}, SECRET_KEY, {
                expiresIn: '24h'
              })

              res.json({
                success: true,
                message: 'Authentication successful!',
                token: token,
                rows
              });
          });
        }
      })
  
})

router.post('/forget',function(req,res){
  let email = req.body.username;
  
    sequelize.query("SELECT * FROM users WHERE email = ? ",{type:sequelize.QueryTypes.SELECT, raw:true,  replacements: [email]}).then(rows => {
        if (rows.length == 0) {
          res.json({
            success:false,
            message:'Invalid Username'
          });
        } else {
              let key = makeCode(30,''); 
              sequelize.query("UPDATE users SET token= ? WHERE email = ? ",{type:sequelize.QueryTypes.UPDATE, raw:true, replacements:[key,email]}).then(rows => {
                  
              });
              //send forget mail
                    var mailOptions = {
                      to: email,
                      subject: 'Forget your password',
                      user: {  // data to view template, you can access as - user.name
                        name: email,
                        link: 'https://christinajewellery.com.au/jewellery/forgetpassword/'+rows[0].id+'/'+key                  
                      }
                    }
                   
                    // Send email.
                    app.mailer.send('forget', mailOptions, function (err, message) {
                      if (err) {
                        console.log(err);                  
                      }
                      console.log(message);
                    });
                    //mail end
                    res.json({
                      success: true,
                      message: 'successful!',                
                    });
          
        }
      })
  
})

router.post('/verifyemail',function(req,res){
  let id = req.body.id;
  let token = req.body.token;    
    sequelize.query("SELECT * FROM users WHERE id = ? and token = ?",{type:sequelize.QueryTypes.SELECT, raw:true,  replacements: [id,token]}).then(rows => {
        if (rows.length == 0) {
          res.json({
            success:false,
            message:'Invalid Username'
          });
        } else {                       
              sequelize.query("UPDATE users SET is_verified= ? WHERE id = ? ",{type:sequelize.QueryTypes.UPDATE, raw:true, replacements:[1,id]}).then(rows => {
                  res.json({
                    success: true,
                    message: 'successful!',                
                  });
              });              
          
        }
      })
  
})

router.post('/register',function(req,res){
  let email = req.body.email;
  console.log(req.body);  
  let key = makeCode(30,''); 
  bcrypt.hash(req.body.password,10, function(errr,hash){
      sequelize.query("INSERT INTO users (name, email, contact, password, token) VALUES (?,?,?,?,?)",{type:sequelize.QueryTypes.INSERT, raw:true, replacements:[req.body.name,req.body.email,req.body.phone,hash,key]}).then(rows => {
          console.log(rows);
          if(rows){
              sequelize.query("SELECT * FROM users WHERE email = ? ",{type:sequelize.QueryTypes.SELECT, raw:true,  replacements: [req.body.email]}).then(row => {
                    //send verification mail
                    var mailOptions = {
                      to: req.body.email,
                      subject: 'Verify your email to get started',
                      user: {  // data to view template, you can access as - user.name
                        name: req.body.name,
                        link: 'https://christinajewellery.com.au/jewellery/emailverify/'+row[0].id+'/'+key                  
                      }
                    }
                   
                    // Send email.
                    app.mailer.send('signupemail', mailOptions, function (err, message) {
                      if (err) {
                        console.log(err);                  
                      }                
                    });
              });
              //end mail
              res.json({
                  success: true,
                  message: 'register successful!',                        
                  rows,              
                });        
          }else{
              res.json({
                success:false,
                message:'Some thing wrong happened'
              });
          }
        });
  });
})

router.post('/myorder',function(req,res){
  var token = req.headers['authorization'];
  var token = jwt.verify(token, SECRET_KEY, function(tokenerr, decoded) {
    if(tokenerr) return res.json({"status":false,"message":"Invalid Token","data" : [] });
    let userId = req.body.userId;
    sequelize.query("SELECT * FROM orders WHERE user_id = ? order by id desc",{type:sequelize.QueryTypes.SELECT, raw:true,  replacements: [userId]}).then(rows => {
        if (rows.length == 0) {
          res.json({
            success:true,
            message:'No orders'
          });
        } else {
          res.json({
                  success: true,
                  message: 'order listed successful!',                        
                  rows,              
                });
        }
      })

  })        
  
})

router.post('/orderDetail',function(req,res){
  var token = req.headers['authorization'];
  var token = jwt.verify(token, SECRET_KEY, function(tokenerr, decoded) {
    //if(tokenerr) return res.json({"status":false,"message":"Invalid Token","data" : [] });
    let orderId = req.body.orderId;
    sequelize.query("SELECT o.*,p.id as productId,p.name,p.image,sd.name as cname,sd.address,sd.city,sd.postal,sd.phone,sd.payment_mode FROM order_detail as o LEFT JOIN products as p ON o.item = p.id LEFT JOIN shipping_detail as sd ON o.order_id=sd.order_id WHERE o.order_id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true,  replacements: [orderId]}).then(rows => {
        if (rows.length == 0) {          
          res.json({
            success:false,
            message:'No orders'
          });          
        } else {
          sequelize.query("SELECT * FROM orders WHERE order_number = ? ",{type:sequelize.QueryTypes.SELECT, raw:true,  replacements: [orderId]}).then(rowss => {
            discount = rowss[0].discount;
            res.json({
                    success: true,
                    message: 'order listed successful!',                        
                    rows,              
                    discount
                  });
          });
        }
      })

  })        
  
})

router.post('/review',function(req,res){
  var token = req.headers['authorization'];
  var token = jwt.verify(token, SECRET_KEY, function(tokenerr, decoded) {
    if(tokenerr) return res.json({"status":false,"message":"Invalid Token","data" : [] });
        let productId = req.body.productId;
        let userId = req.body.userId;
        let review = req.body.review;
        let rating = req.body.rating;
        console.log(req.body);   
        sequelize.query("SELECT * from rating where user_id = ? and product_id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[req.body.userId,req.body.productId]}).then(rowsss => {          
            if(rowsss.length > 0){             
                 res.json({success:false,message:"already rated" });                
            }else{
              sequelize.query("INSERT INTO rating (user_id, product_id, rating) VALUES (?,?,?)",{type:sequelize.QueryTypes.INSERT, raw:true, replacements:[req.body.userId,req.body.productId,req.body.rating]}).then(rowss => {
                  console.log(rowss);
                  if(rowss){
                      if(review){
                        sequelize.query("INSERT INTO review (user_id, product_id, review) VALUES (?,?,?)",{type:sequelize.QueryTypes.INSERT, raw:true, replacements:[req.body.userId,req.body.productId,req.body.review]}).then(rows => {                        
                        })
                      }
                      res.json({
                        success: true,
                        message: 'successful!'                                          
                      });
                  }else{
                      res.json({
                        success:false,
                        message:'Some thing wrong happened'
                      });
                  }
                })
            }
        })
    })
})


router.post('/addWishList',function(req,res){
  var token = req.headers['authorization'];
  var token = jwt.verify(token, SECRET_KEY, function(tokenerr, decoded) {
    if(tokenerr) return res.json({"status":false,"message":"Invalid Token","data" : [] });
        let productId = req.body.productId;
        let userId = req.body.userId;
        console.log(req.body);   
        sequelize.query("SELECT * from wishlist where user_id = ? and product_id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[req.body.userId,req.body.productId]}).then(rowsss => {          
            if(rowsss.length > 0){
              sequelize.query("SELECT * from wishlist where user_id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[req.body.userId]}).then(rowssss => {          
                 res.json({success:false,message:"already added", rowssss }); 
              })   
            }else{
              sequelize.query("INSERT INTO wishlist (user_id, product_id) VALUES (?,?)",{type:sequelize.QueryTypes.INSERT, raw:true, replacements:[req.body.userId,req.body.productId]}).then(rowss => {
                  console.log(rowss);
                  if(rowss){
                      sequelize.query("SELECT * from wishlist where user_id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[req.body.userId]}).then(rows => {          
                          res.json({
                              success: true,
                              message: 'successful!',                                                  
                              rows,              
                            });
                      })        
                  }else{
                      res.json({
                        success:false,
                        message:'Some thing wrong happened'
                      });
                  }
                })
            }
        })
    })
})

router.post('/getWishList',function(req,res){
  var token = req.headers['authorization'];
  var token = jwt.verify(token, SECRET_KEY, function(tokenerr, decoded) {
    if(tokenerr) return res.json({"status":false,"message":"Invalid Token","data" : [] });        
        let userId = req.body.userId;
        console.log(req.body);   
        sequelize.query("SELECT w.*,p.image,p.discounted_price,p.name,p.brand,p.product_code,p.color from wishlist as w join products as p ON w.product_id = p.id where w.user_id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[req.body.userId]}).then(rows => {                      
              res.json({
                          success: true,
                          message: 'successful!',                                                  
                          rows,              
                        });
            
        })
    })
})

router.post('/deleteWishList',function(req,res){
  var token = req.headers['authorization'];
  var token = jwt.verify(token, SECRET_KEY, function(tokenerr, decoded) {
    if(tokenerr) return res.json({"status":false,"message":"Invalid Token","data" : [] });        
        let userId = req.body.userId;
        let productId = req.body.productId;
        console.log(req.body);   
        sequelize.query("DELETE from wishlist where user_id = ? and product_id = ?",{type:sequelize.QueryTypes.DELETE, raw:true, replacements:[req.body.userId,req.body.productId]}).then(rows => {                      
            sequelize.query("SELECT w.*,p.image,p.discounted_price,p.name from wishlist as w join products as p ON w.product_id = p.id where w.user_id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[req.body.userId]}).then(rows => {                      
                  res.json({
                              success: true,
                              message: 'successful!',                                                  
                              rows,              
                            });
                
            })
        })    
    })
})

router.post('/applyPromocode',function(req,res){
  
        let promocode = req.body.promocode;
        let today = Math.floor(Date.now() / 1000);
        console.log(today);   
        sequelize.query("SELECT * from promocode  where code = ? and starttime < ? and endtime > ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[promocode,today,today]}).then(rows => {                      
            if(rows.length > 0){
              res.json({
                          success: true,
                          message: 'successful!',                                                  
                          rows,              
                        });
            }else{
              res.json({
                          success: false,
                          message: 'Invalid promocode!',                                                  
                          rows,              
                        });
            }
            
        })
    
})

function makeCode(length,username) {
   var result           = '';
   var characters       = 'ABCDEFGHIJKLM0123456789NOPQRSTUVWXYZ';
   var charactersLength = characters.length;
   for ( var i = 0; i < length; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
   }
   return result;
}

router.post('/check_email',(req,res)=>{
  let value=req.param("email")
  sequelize.query("SELECT email FROM users WHERE email=? and is_deleted = 0",{type:sequelize.QueryTypes.SELECT,raw:true,replacements:[value]}).then(rows=>{
    console.log(rows)
    if(rows.length>0){
      res.json({found:true, message:"Email Already Exist"})
    }else{
      res.json(false)
    }
  })
})

router.post('/getProfile',(req,res)=>{
  var token = req.headers['authorization'];
  var token = jwt.verify(token, SECRET_KEY, function(tokenerr, decoded) {
  if(tokenerr) return res.json({"status":false,"message":"Invalid Token","data" : [] });
        let value=req.param("userId")
        sequelize.query("SELECT * FROM users WHERE id=?",{type:sequelize.QueryTypes.SELECT,raw:true,replacements:[value]}).then(rows=>{
          console.log(rows)
          if(rows.length>0){
            res.json({success:true, message:"Profile Listed Successfully",rows})
          }else{
            res.json({success:false, message:"Profile not found"})
          }
        })
      })
  })

router.post('/updateProfile',(req,res)=>{
  var token = req.headers['authorization'];
  var token = jwt.verify(token, SECRET_KEY, function(tokenerr, decoded) {
  if(tokenerr) return res.json({"status":false,"message":"Invalid Token","data" : [] });
      let userId=req.param("userId");
      let name=req.param("name");
      let phone=req.param("phone");
      let ship_name=req.param("ship_name");
      let ship_company_name=req.param("ship_company_name");
      let ship_country=req.param("ship_country");
      let ship_state=req.param("ship_state");
      let ship_city=req.param("ship_city");
      let ship_zipcode=req.param("ship_zipcode");
      let ship_phone=req.param("ship_phone");
      let ship_address=req.param("ship_address");
      let ship_address2=req.param("ship_address2");
      let bill_name=req.param("bill_name");
      let bill_company_name=req.param("bill_company_name");
      let bill_country=req.param("bill_country");
      let bill_state=req.param("bill_state");
      let bill_city=req.param("bill_city");
      let bill_zipcode=req.param("bill_zipcode");
      let bill_phone=req.param("bill_phone");
      let bill_address=req.param("bill_address");
      let bill_address2=req.param("bill_address2");
      sequelize.query("UPDATE users SET name=?, contact=?, ship_name=?, ship_company_name=? , ship_country=?, ship_state=?, ship_city=?, ship_zipcode=?, ship_phone=?, ship_address=?, ship_address2=?, bill_name=?, bill_company_name=? , bill_country=?, bill_state=?, bill_city=?, bill_zipcode=?, bill_phone=?, bill_address=?, bill_address2=? WHERE id=?",{type:sequelize.QueryTypes.UPDATE,raw:true,replacements:[name,phone,ship_name,ship_company_name,ship_country,ship_state,ship_city,ship_zipcode,ship_phone,ship_address,ship_address2,bill_name,bill_company_name,bill_country,bill_state,bill_city,bill_zipcode,bill_phone,bill_address,bill_address2,userId]}).then(rowss=>{
        console.log(rowss)
        if(rowss){
          sequelize.query("SELECT * FROM users WHERE id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true,  replacements: [userId]}).then(rows => {
              
                let token = jwt.sign({email: rows[0].email, id:userId}, SECRET_KEY, {
                  expiresIn: '24h'
                })
              res.json({
                    success: true,
                    message: 'Update successful!',
                    token: token,
                    rows
                  });
           });
        }else{
          res.json({success:false, message:"Profile not found"})
        }
      })
   })   
})

router.post('/changePassword',(req,res)=>{
  var token = req.headers['authorization'];
  var token = jwt.verify(token, SECRET_KEY, function(tokenerr, decoded) {
  if(tokenerr) return res.json({"status":false,"message":"Invalid Token","data" : [] });
      let userId=req.param("userId");
      let old_pass=req.param("old_pass");
      let pass=req.param("pass");
      sequelize.query("SELECT * FROM users WHERE id = ?",{type:sequelize.QueryTypes.SELECT,raw:true,replacements:[userId]}).then(rowss=>{
        console.log(rowss)
        if(rowss){
          console.log(rowss[0].password + ' ' + old_pass);
          bcrypt.compare(old_pass, rowss[0].password,function(error,userdata){
            console.log(error);
            console.log(userdata);
            if(error) return res.json({"status":false,"message":"Invalid Data","data" : [] });
            if (!userdata) return res.json({"status":false,"message":"Invalid Old password","data" : [] });
              bcrypt.hash(pass,10, function(errr,hash){
                    sequelize.query("UPDATE users SET password = ?  WHERE id = ? ",{type:sequelize.QueryTypes.UPDATE, raw:true,  replacements: [hash,userId]}).then(rows => {
                                              
                        res.json({
                              success: true,
                              message: 'Update successful!',                          
                              rows
                            });
                     });
              });
          });
        }else{
          res.json({success:false, message:"Profile not found"})
        }
      })
   })   
})


router.post('/setPassword',(req,res)=>{  
      let userId=req.param("userId");
      let token=req.param("token");
      let pass=req.param("pass");
      sequelize.query("SELECT * FROM users WHERE id = ? and token = ? ",{type:sequelize.QueryTypes.SELECT,raw:true,replacements:[userId,token]}).then(rowss=>{
        console.log(rowss)
        if(rowss.length > 0){          
              bcrypt.hash(pass,10, function(errr,hash){
                    sequelize.query("UPDATE users SET password = ?  WHERE id = ? ",{type:sequelize.QueryTypes.UPDATE, raw:true,  replacements: [hash,userId]}).then(rows => {
                                              
                        res.json({
                              success: true,
                              message: 'Update successful!',                          
                              rows
                            });
                     });
              });
          
        }else{
          res.json({success:false, message:"Profile not found"})
        }      
      })   
})

router.get("/show_user",(req,res)=>{
  sequelize.query("SELECT * from user",{type:sequelize.QueryTypes.SELECT,raw:true}).then(rows=>{
    res.json(rows)
  })
})



module.exports = router;
