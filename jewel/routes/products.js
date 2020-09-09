var express = require('express');

var router = express.Router();

const sequelize = require("../models/Users")

var moment = require('moment');

// var jwt = require('jsonwebtoken');

// const multer = require('multer');



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

  pass: 'Christina@2020'//'TnzKO]sbrSa*' // gmail password

  }

});





router.get('/category', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT * from categories WHERE status = 1 and is_deleted = ? and parent_id = 0 order by id asc",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rowss=>{

      var j=1;

      console.log(rowss[0]);   

      rowss = [rowss[3],rowss[1],rowss[0],rowss[2]];

      for(var i=0; i<rowss.length; i++){

          let id = (rowss[i].id);

          let name = (rowss[i].name);

          let slug = (rowss[i].slug);

          let image = (rowss[i].image);

          sequelize.query("SELECT id,name,slug,image from categories WHERE status = 1 and is_deleted = ? and parent_id = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0,rowss[i].id]}).then(rows=>{

              cat.push({"id":id,"name":name,"slug":slug,"image":image,"child":rows});

              if(j === rowss.length){                

                res.json(cat);

              }

              

              j++;

          });

          

      }      

  });    

});



router.get('/featuredcategory', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,name,slug,image from categories WHERE is_featured = 1 and status = 1 and is_deleted = ? and parent_id != 0 order by rand() LIMIT 30",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows);    

  });    

});



router.get('/filters', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT * from filter",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: []}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows);    

  });    

});



router.get('/featuredblogs', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,description,image,created_at from blogs WHERE status = 1 and is_deleted = ?  order by rand() LIMIT 5",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows);    

  });    

});



router.get('/settings',function(req,res){ 

  sequelize.query("SELECT * FROM settings ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[]}).then(rows => {

 

          

          res.json({

              success: true,

              message: 'successful!',

              rows

            });

  });

    

});



router.get('/lastblog', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,description,image,created_at from blogs WHERE status = 1 and is_deleted = ?  order by id desc LIMIT 1",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows[0]);    

  });    

});



router.get('/blogs', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,description,image,created_at from blogs WHERE status = 1 and is_deleted = ?  order by id desc",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows);    

  });    

});



router.get('/blogDetail/:id', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,description,image,meta_title,meta_keywords,meta_description,created_at from blogs WHERE id = ?  order by id desc",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [req.params.id]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows[0]);    

  });    

});



router.get('/banner', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,slug,description,image,created_at from banner WHERE status = 1 and is_deleted = ?  order by id asc",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows);    

  });    

});



router.get('/slider', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,description,slug,image,created_at from slider WHERE status = 1 and is_deleted = ?  order by rand()",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);

      sequelize.query("SELECT * from seo WHERE id = 1 ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: []}).then(rowss=>{      

        res.json({rows,rowss});

      });

  });    

});



router.get('/testimonials', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,description,image,created_at from testimonials WHERE status = 1 and is_deleted = ?  order by rand()",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows);    

  });    

});



router.get('/topbrands', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,slug,image,created_at from brands WHERE status = 1 and is_deleted = ?  order by rand()",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows);    

  });    

});



router.get('/offers', function(req, res, next) {

  let today = Math.floor(Date.now() / 1000);

  sequelize.query("SELECT * from promocode WHERE status = 1 and endtime > ?  order by rand()",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [today]}).then(rows=>{

      if(rows.length > 0){

          res.json({success:true,rows});    

      }else{

          res.json({success:false});  

      }

        

  });    

});



router.get('/lowersection', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,description,slug,image,created_at from lower_section WHERE status = 1 and is_deleted = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows);    

  });    

});



router.get('/footersection', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,description,status,created_at from footer_section WHERE  is_deleted = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows);    

  });    

});



router.get('/aboutdata', function(req, res, next) {

  var cat = [];

  sequelize.query("SELECT id,title,description,image,created_at from aboutus ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: []}).then(rows=>{      

      console.log(rows[0]);        

      res.json(rows[0]);    

  });    

});



router.get('/brands', function(req, res, next) {

  //sequelize.query("SELECT brand, count(*) as total from products WHERE status = 1 and is_deleted = ? group by brand order by total desc",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{

  sequelize.query("SELECT id,title,slug,image,created_at from brands WHERE status = 1 and is_deleted = ?  order by rand()",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{      

      res.json(rows)

  })    

});



router.get('/check_email',(req,res)=>{

  let value=req.param("email")

  sequelize.query("SELECT email FROM user WHERE email=?",{type:sequelize.QueryTypes.SELECT,raw:true,replacements:[value]}).then(rows=>{

    console.log(rows)

    if(rows.length>0){

      res.json({found:true, message:"Email Already Exist"})

    }else{

      res.json({found:false, message:""})

    }

  });

});



router.get("/show_user",(req,res)=>{

  sequelize.query("SELECT * from user",{type:sequelize.QueryTypes.SELECT,raw:true}).then(rows=>{

    res.json(rows)

  });

});



router.post('/featuredProducts', function(req, res, next) {

  sequelize.query("SELECT * from products WHERE is_featured = 1 and status = 1 and is_deleted = ? order by rand() LIMIT 30",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{

      res.json(rows)

  })    

});



router.post('/getPages', function(req, res, next) {

  let slug = req.body.slug;

  sequelize.query("SELECT * from pages WHERE slug = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [slug]}).then(rows=>{

    if (rows.length > 0) {

        res.json(rows[0])

    }else{

        res.json({})

    }

  })    

});



router.post('/getAllPages', function(req, res, next) {  

  sequelize.query("SELECT id,slug,title from pages WHERE status = ? and is_deleted = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [1,0]}).then(rows=>{

    if (rows.length > 0) {

        res.json(rows)

    }else{

        res.json({})

    }

  })    

});



router.post('/similarProducts', function(req, res, next) {

  let productId = req.body.productId;

  sequelize.query("SELECT * from products WHERE id != ? and  status = 1 and is_deleted = ? order by rand() LIMIT 4",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [productId,0]}).then(rows=>{

      res.json(rows)

  })    

});



router.post('/newsletter', function(req, res, next) {

  let email = req.body.email;

  sequelize.query("SELECT * from newsletter WHERE email = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [email]}).then(rowss=>{

    if(rowss.length > 0){

      res.json({success:false})

    }

    sequelize.query("INSERT into newsletter (email) VALUES (?)",{type:sequelize.QueryTypes.INSERT,raw:true, replacements: [email]}).then(rows=>{

        res.json({success:true,rows})

    })

  })

});



/* GET users listing. */

router.post('/', function(req, res, next) {

  let url = req.body.url;

  let categories = req.body.categories;

  let colorsArr = req.body.colors;

  let colors =  "'" + colorsArr.join("','") + "'";

  console.log(colors);

  let typesArr = req.body.types;

  let types =  "'" + typesArr.join("','") + "'";

  console.log(types);

  let price = req.body.price;

  let offer = req.body.offer;

  let sorting = req.body.sorting;

  let search = req.body.search;

  url = url.split('/');

  console.log(url[2]);

  if(!url[2]){

      // sequelize.query("SELECT * from products WHERE is_deleted = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0]}).then(rows=>{

      //     res.json(rows)

      // })  

      sequelize.query("SELECT id,name from categories ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: []}).then(rowss=>{

          let item = []; let str = '';

          for(var i=0; i<rowss.length;i++){                    

            if (typeof categories !== 'undefined' && categories.length > 0) {                        

                if(categories.indexOf(rowss[i].name) !== -1){                          

                  item.push(rowss[i].id);                

                }

            }else{

                item.push(rowss[i].id);                

            }                    

          }

          let cats = (item.toString());

         

          console.log(cats);

          if(cats){

              let q = " WHERE status = 1 and is_deleted = 0 and category_id IN (" + cats + ") ";

              if(price){

                var p = price.split('_');

                q += " AND discounted_price >= "+p[0]+" AND discounted_price <= "+p[1];

              }

              if(offer){                              

                q += " AND discount >= "+offer+" ";

              }

              if(search){

                q += " AND name LIKE '%"+search+"%'";

              }

              if(colorsArr.length){

                q += " AND color IN (" + colors + ") ";

              }

              if(typesArr.length){

                q += " AND type IN (" + types + ") ";

              }

              if(sorting){

                if(sorting == 1){ q += " order by discounted_price desc";}

                if(sorting == 2){ q += " order by discounted_price asc";}

                if(sorting == 3){ q += " order by id desc";}

                if(sorting == 4){ q += " order by id asc";}

              }

              sequelize.query(" SELECT * from products "+q+" ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [q]}).then(rows=>{

                  if(rows.length > 0){

                    res.json(rows)

                  }else{

                    res.json(false)        

                  }

              }) 

          }else{

            res.json(false)

          }                  

      })

  }else{

      if(url[2] == 'new'){         

          sequelize.query("SELECT id,name from categories where status = 1 and is_deleted = 0 ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: []}).then(rowss=>{

              let item = []; let str = '';

              for(var i=0; i<rowss.length;i++){                    

                if (typeof categories !== 'undefined' && categories.length > 0) {                        

                    if(categories.indexOf(rowss[i].name) !== -1){                          

                      item.push(rowss[i].id);                

                    }

                }else{

                    item.push(rowss[i].id);                

                }                    

              }

              let cats = (item.toString());

             

              console.log(cats);

              if(cats){

                  let q = " WHERE status = 1 and is_deleted = 0 and category_id IN (" + cats + ") ";

                  if(price){

                    var p = price.split('_');

                    q += " AND discounted_price >= "+p[0]+" AND discounted_price <= "+p[1];

                  }

                  if(offer){                              

                    q += " AND discount >= "+offer+" ";

                  }

                  if(search){

                    q += " AND name LIKE '%"+search+"%'";

                  }

                  if(colorsArr.length){

                    q += " AND color IN (" + colors + ") ";

                  }

                  if(typesArr.length){

                    q += " AND type IN (" + types + ") ";

                  }

                  if(sorting){

                    if(sorting == 1){ q += " order by discounted_price desc";}

                    if(sorting == 2){ q += " order by discounted_price asc";}

                    if(sorting == 3){ q += " order by id desc";}

                    if(sorting == 4){ q += " order by id asc";}

                  }

                  sequelize.query(" SELECT * from products "+q+" order by id desc ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [q]}).then(rows=>{

                      if(rows.length > 0){

                        res.json(rows)

                      }else{

                        res.json(false)        

                      }

                  }) 

              }else{

                res.json(false)

              }                  

          })          

      }else if(url[2] == 'sale'){         

          var query = "";

          if(url[3]){

              sequelize.query("SELECT id,parent_id from categories WHERE slug = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [url[3]]}).then(rowsss=>{

                sequelize.query("SELECT id,name from categories where status = 1 and is_deleted = 0 AND parent_id = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [rowsss[0].id]}).then(rowss=>{

                  let item = []; let str = '';

                  for(var i=0; i<rowss.length;i++){                    

                    if (typeof categories !== 'undefined' && categories.length > 0) {                        

                        if(categories.indexOf(rowss[i].name) !== -1){                          

                          item.push(rowss[i].id);                

                        }

                    }else{

                        item.push(rowss[i].id);                

                    }                    

                  }

                  let cats = (item.toString());

                 

                  console.log(cats);

                  if(cats){

                      let q = " WHERE status = 1 and is_deleted = 0 and category_id IN (" + cats + ") ";

                      if(price){

                        var p = price.split('_');

                        q += " AND discounted_price >= "+p[0]+" AND discounted_price <= "+p[1];

                      }

                      if(offer){                              

                        q += " AND discount >= "+offer+" ";

                      }

                      if(search){

                        q += " AND name LIKE '%"+search+"%'";

                      }

                      if(colorsArr.length){

                        q += " AND color IN (" + colors + ") ";

                      }

                      if(typesArr.length){

                        q += " AND type IN (" + types + ") ";

                      }

                      if(sorting){

                        if(sorting == 1){ q += " order by discounted_price desc";}

                        if(sorting == 2){ q += " order by discounted_price asc";}

                        if(sorting == 3){ q += " order by id desc";}

                        if(sorting == 4){ q += " order by id asc";}

                      }

                      

                      //today date

                      var today = new Date();

                      var dd = String(today.getDate()).padStart(2, '0');

                      var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!

                      var yyyy = today.getFullYear();

                        

                      today = yyyy + '-' + mm + '-' + dd;

                        

                      sequelize.query(" SELECT * from products "+q+" AND in_sale = 1 AND (sale_period = 2 or (sale_start <= '"+today+"' and sale_end >= '"+today+"')) order by id desc ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [q]}).then(rows=>{

                          if(rows.length > 0){

                            res.json(rows)

                          }else{

                            res.json(false)        

                          }

                      }) 

                  }else{

                    res.json(false)

                  }                  

                })

              })   

          }else{

                sequelize.query("SELECT id,name from categories where status = 1 and is_deleted = 0 ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: []}).then(rowss=>{

                    let item = []; let str = '';

                    for(var i=0; i<rowss.length;i++){                    

                      if (typeof categories !== 'undefined' && categories.length > 0) {                        

                          if(categories.indexOf(rowss[i].name) !== -1){                          

                            item.push(rowss[i].id);                

                          }

                      }else{

                          item.push(rowss[i].id);                

                      }                    

                    }

                    let cats = (item.toString());

                   

                    console.log(cats);

                    if(cats){

                        let q = " WHERE status = 1 and is_deleted = 0 and category_id IN (" + cats + ") ";

                        if(price){

                          var p = price.split('_');

                          q += " AND discounted_price >= "+p[0]+" AND discounted_price <= "+p[1];

                        }

                        if(offer){                              

                          q += " AND discount >= "+offer+" ";

                        }

                        if(search){

                          q += " AND name LIKE '%"+search+"%'";

                        }

                        if(colorsArr.length){

                          q += " AND color IN (" + colors + ") ";

                        }

                        if(typesArr.length){

                          q += " AND type IN (" + types + ") ";

                        }

                        if(sorting){

                          if(sorting == 1){ q += " order by discounted_price desc";}

                          if(sorting == 2){ q += " order by discounted_price asc";}

                          if(sorting == 3){ q += " order by id desc";}

                          if(sorting == 4){ q += " order by id asc";}

                        }

                        //today date

                          var today = new Date();

                          var dd = String(today.getDate()).padStart(2, '0');

                          var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!

                          var yyyy = today.getFullYear();

                            

                          today = yyyy + '-' + mm + '-' + dd;

                        sequelize.query(" SELECT * from products "+q+" AND in_sale = 1 AND (sale_period = 2 or (sale_start <= '"+today+"' and sale_end >= '"+today+"')) order by id desc ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [q]}).then(rows=>{

                            if(rows.length > 0){

                              res.json(rows)

                            }else{

                              res.json(false)        

                            }

                        }) 

                    }else{

                      res.json(false)

                    }                  

                }) 

          }

                   

      }else if(url[2] == 'brand'){ 

          if(!url[3]){

                sequelize.query("SELECT * from brands where status = 1 and is_deleted = 0 ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: []}).then(rowss=>{

                    res.json(rowss);

                });

            }else{

                  sequelize.query("SELECT id,name from categories where status = 1 and is_deleted = 0 ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: []}).then(rowss=>{

                      let item = []; let str = '';

                      for(var i=0; i<rowss.length;i++){                    

                        if (typeof categories !== 'undefined' && categories.length > 0) {                        

                            if(categories.indexOf(rowss[i].name) !== -1){                          

                              item.push(rowss[i].id);                

                            }

                        }else{

                            item.push(rowss[i].id);                

                        }                    

                      }

                      let cats = (item.toString());

                     

                      console.log(cats);

                      if(cats){
                          var b = url[3].split('-');   
                          var brandd = b.join(' ');
                          console.log('b'+b);
                          console.log('brand '+brandd);
                          let q = " WHERE status = 1 and is_deleted = 0 and category_id IN (" + cats + ") and brand = '"+brandd+"' ";

                          if(price){

                            var p = price.split('_');

                            q += " AND discounted_price >= "+p[0]+" AND discounted_price <= "+p[1];

                          }

                          if(offer){                              

                            q += " AND discount >= "+offer+" ";

                          }

                          if(search){

                            q += " AND name LIKE '%"+search+"%'";

                          }

                          if(colorsArr.length){

                            q += " AND color IN (" + colors + ") ";

                          }

                          if(typesArr.length){

                            q += " AND type IN (" + types + ") ";

                          }

                          if(sorting){

                            if(sorting == 1){ q += " order by discounted_price desc";}

                            if(sorting == 2){ q += " order by discounted_price asc";}

                            if(sorting == 3){ q += " order by id desc";}

                            if(sorting == 4){ q += " order by id asc";}

                          }

                          sequelize.query(" SELECT * from products "+q+" order by id desc ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [q]}).then(rows=>{

                              if(rows.length > 0){

                                res.json(rows)

                              }else{

                                res.json(false)        

                              }

                          }) 

                      }else{

                        res.json(false)

                      }                  

                  }) 

            }

      }else if(url[2] == 'featured'){ 
          
                  sequelize.query("SELECT id,name from categories where status = 1 and is_deleted = 0 ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: []}).then(rowss=>{
                      let item = []; let str = '';
                      for(var i=0; i<rowss.length;i++){                    
                        if (typeof categories !== 'undefined' && categories.length > 0) {                        
                            if(categories.indexOf(rowss[i].name) !== -1){                          
                              item.push(rowss[i].id);                
                            }
                        }else{
                            item.push(rowss[i].id);                
                        }                    
                      }
                      let cats = (item.toString());
                     
                      console.log(cats);
                      if(cats){
                          let q = " WHERE status = 1 and is_deleted = 0 and category_id IN (" + cats + ") and is_featured = '1' ";
                          if(price){
                            var p = price.split('_');
                            q += " AND discounted_price >= "+p[0]+" AND discounted_price <= "+p[1];
                          }
                          if(offer){                              
                            q += " AND discount >= "+offer+" ";
                          }
                          if(search){
                            q += " AND name LIKE '%"+search+"%'";
                          }
                          if(colorsArr.length){
                            q += " AND color IN (" + colors + ") ";
                          }
                          if(typesArr.length){
                            q += " AND type IN (" + types + ") ";
                          }
                          if(sorting){
                            if(sorting == 1){ q += " order by discounted_price desc";}
                            if(sorting == 2){ q += " order by discounted_price asc";}
                            if(sorting == 3){ q += " order by id desc";}
                            if(sorting == 4){ q += " order by id asc";}
                          }
                          sequelize.query(" SELECT * from products "+q+" order by id desc ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [q]}).then(rows=>{
                              if(rows.length > 0){
                                res.json(rows)
                              }else{
                                res.json(false)        
                              }
                          }) 
                      }else{
                        res.json(false)
                      }                  
                  }) 
            
      } else if(url[2] == 'featuredCategory'){ 
          
                  sequelize.query("SELECT * from categories WHERE is_featured = ? and status = 1 and is_deleted = 0 ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [1]}).then(rowss=>{
                      res.json(rowss);
                  });
            
      }else{

          let query = " ";

          sequelize.query("SELECT id,parent_id from categories WHERE slug = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [url[2]]}).then(rowsss=>{

              if(rowsss[0].parent_id == 0){

                    sequelize.query("SELECT * from categories WHERE parent_id = ? and status = 1 and is_deleted = 0 ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [rowsss[0].id]}).then(rowss=>{

                        if (rowss.length > 0) {

                            res.json(rowss);

                        }else{

                            let item = []; let str = '';

                            for(var i=0; i<rowss.length;i++){                    

                              if (typeof categories !== 'undefined' && categories.length > 0) {                        

                                  if(categories.indexOf(rowss[i].name) !== -1){                          

                                    item.push(rowss[i].id);                

                                  }

                              }else{

                                  item.push(rowss[i].id);                

                              }                    

                            }

                            let cats = (item.toString());

                           

                            console.log(cats);

                            if(cats){

                                let q = " WHERE status = 1 and is_deleted = 0 and category_id IN (" + cats + ") ";

                                if(price){

                                  var p = price.split('_');

                                  q += " AND discounted_price >= "+p[0]+" AND discounted_price <= "+p[1];

                                }

                                if(offer){                              

                                  q += " AND discount >= "+offer+" ";

                                }

                                if(search){

                                  q += " AND name LIKE '%"+search+"%'";

                                }

                                if(colorsArr.length){

                                  q += " AND color IN (" + colors + ") ";

                                }

                                if(typesArr.length){

                                  q += " AND type IN (" + types + ") ";

                                }

                                if(sorting){

                                  if(sorting == 1){ q += " order by discounted_price desc";}

                                  if(sorting == 2){ q += " order by discounted_price asc";}

                                  if(sorting == 3){ q += " order by id desc";}

                                  if(sorting == 4){ q += " order by id asc";}

                                }

                                sequelize.query(" SELECT * from products "+q+" ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [q]}).then(rows=>{

                                    if(rows.length > 0){

                                      res.json(rows)

                                    }else{

                                      res.json(false)        

                                    }

                                }) 

                            }else{

                              res.json(false)

                            }

                        }

                    })

              }else{

                    sequelize.query("SELECT id,name from categories WHERE id = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [rowsss[0].id]}).then(rowss=>{

                        let item = []; let str = '';

                        for(var i=0; i<rowss.length;i++){                    

                          if (typeof categories !== 'undefined' && categories.length > 0) {                        

                              if(categories.indexOf(rowss[i].name) !== -1){                          

                                item.push(rowss[i].id);                

                              }

                          }else{

                              item.push(rowss[i].id);                

                          }                    

                        }

                        let cats = (item.toString());

                       

                        console.log(cats);

                        if(cats){

                            let q = " WHERE status = 1 and is_deleted = 0 and category_id IN (" + cats + ") ";

                            if(price){

                              var p = price.split('_');

                              q += " AND discounted_price >= "+p[0]+" AND discounted_price <= "+p[1];

                            }

                            if(offer){                              

                              q += " AND discount >= "+offer+" ";

                            }

                            if(search){

                              q += " AND name LIKE '%"+search+"%'";

                            }

                            if(colorsArr.length){

                              q += " AND color IN (" + colors + ") ";

                            }

                            if(typesArr.length){

                              q += " AND type IN (" + types + ") ";

                            }

                            if(sorting){

                              if(sorting == 1){ q += " order by discounted_price desc";}

                              if(sorting == 2){ q += " order by discounted_price asc";}

                              if(sorting == 3){ q += " order by id desc";}

                              if(sorting == 4){ q += " order by id asc";}

                            }

                            sequelize.query(" SELECT * from products "+q+" ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [q]}).then(rows=>{

                                if(rows.length > 0){

                                  res.json(rows)

                                }else{

                                  res.json(false)        

                                }

                            }) 

                        }else{

                          res.json(false)

                        }                  

                    })

              }

               

          })

      }      

  }

  

  

});



router.get('/:id', function(req, res, next) {

  sequelize.query("SELECT * from products WHERE status = 1 and is_deleted = ? and id = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0, req.params.id]}).then(rowss=>{

      

      sequelize.query("SELECT image from product_images WHERE product_id = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [rowss[0].id]}).then(rows=>{

          sequelize.query("SELECT r.*,u.name,u.image from review as r join users as u ON r.user_id=u.id WHERE r.product_id = ? order by id desc limit 5",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [rowss[0].id]}).then(row=>{

              sequelize.query("SELECT SUM(rating) as totalrating, count(*) as total from rating WHERE product_id = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [rowss[0].id]}).then(rating=>{

                  // let prating = rating[0].totalrating / rating[0].total;

                  // res.json({products:rowss[0],images:rows,review:row,rating:prating})
                  sequelize.query("SELECT rating from rating WHERE product_id = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [rowss[0].id]}).then(ro=>{
                        let prating = rating[0].totalrating / rating[0].total;
                        res.json({products:rowss[0],images:rows,review:row,rating:prating,ro})
                    });

              });

          });            

      });      

  })  

});



router.post('/singlecategory', function(req, res, next) {  

  let slug = req.body.slug;

  sequelize.query("SELECT * from categories WHERE status = 1 and is_deleted = ? and slug = ? ",{type:sequelize.QueryTypes.SELECT,raw:true, replacements: [0, slug]}).then(rows=>{

      res.json(rows[0]);            

  })  

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

router.post('/order',function(req,res){

  let email = req.body.email;

  let discount = req.body.discount;

  let same_shipping_info = req.body.same_shipping_info;

  console.log(req.body);

 

  let orderId = 'ORDER'+makeCode(10,req.body.name);

  let total = 0;

  let items = [];

  let cart = JSON.parse(req.body.cart);

  if(cart){       

      for (var i = 0; i < cart.length; i++) {

        let item = JSON.parse(cart[i]);

        console.log(item.product);            

        total += item.product.discounted_price * item.quantity;        

      }

  }



  if(discount){

    total = total - discount;

  }

  console.log(total);



  req.body.cart



  sequelize.query("INSERT INTO orders (user_id, order_number, price, payment_mode, promocodeId, discount, guest_email, guest_contact) VALUES (?,?,?,?,?,?,?,?)",{type:sequelize.QueryTypes.INSERT, raw:true, replacements:[req.body.userId,orderId,total,req.body.payment_mode,req.body.promocodeId,discount,req.body.guest_email,req.body.guest_contact]}).then(rows => {

      console.log(rows);

      if(rows){

          if(cart){       

              for (var i = 0; i < cart.length; i++) {

                let item = JSON.parse(cart[i]);

                console.log(item.product);

                   sequelize.query("INSERT INTO order_detail (order_id, item, quantity, price) VALUES (?,?,?,?)",{type:sequelize.QueryTypes.INSERT, raw:true, replacements:[orderId,item.product.id,item.quantity,item.product.discounted_price]}).then(rowss => {



                   })

                   sequelize.query("UPDATE products SET quantity = quantity - ? WHERE id = ? ",{type:sequelize.QueryTypes.UPDATE, raw:true, replacements:[item.quantity,item.product.id]}).then(row => {



                   })  

              }



              sequelize.query("INSERT INTO shipping_detail (order_id, name, company_name, country, state, city, postal, phone, address, address2, b_name, b_company_name, b_country, b_state, b_city, b_postal, b_phone, b_address, b_address2, payment_mode) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",{type:sequelize.QueryTypes.INSERT, raw:true, replacements:[orderId,req.body.name,req.body.company_name,req.body.country,req.body.state,req.body.city,req.body.postal,req.body.phone,req.body.address,req.body.address2,req.body.b_name,req.body.b_company_name,req.body.b_country,req.body.b_state,req.body.b_city,req.body.b_postal,req.body.b_phone,req.body.b_address,req.body.b_address2,req.body.payment_mode]}).then(rowss => {



              })

              

              if(same_shipping_info){

                  sequelize.query("UPDATE users SET ship_name=?, ship_company_name=? , ship_country=?, ship_state=?, ship_city=?, ship_zipcode=?, ship_phone=?, ship_address=?, ship_address2=?, bill_name=?, bill_company_name=? , bill_country=?, bill_state=?, bill_city=?, bill_zipcode=?, bill_phone=?, bill_address=?, bill_address2=? WHERE id = ? ",{type:sequelize.QueryTypes.UPDATE, raw:true, replacements:[req.body.name,req.body.company_name,req.body.country,req.body.state,req.body.city,req.body.postal,req.body.phone,req.body.address,req.body.address2,req.body.b_name,req.body.b_company_name,req.body.b_country,req.body.b_state,req.body.b_city,req.body.b_postal,req.body.b_phone,req.body.b_address,req.body.b_address2,req.body.userId]}).then(row => {



                  })

              }

              

              //send order mail

              if (req.body.payment_mode == 'cash') {

                //code

                let toemail = email;

                if (req.body.guest_email) {

                   toemail = req.body.guest_email;

                   var mailOptions = {

                      to: toemail,

                      subject: 'Your order has been placed successfully',

                      user: {  // data to view template, you can access as - user.name

                        name: req.body.name,

                        orderid: orderId,

                        amount : total,

                        date : moment().format('MMMM DD YYYY')

                      }

                    }

                    

                    // Send email.

                      app.mailer.send('order', mailOptions, function (err, message) {

                        if (err) {

                          console.log(err);                  

                        }

                        console.log(message);

                      });

                      //mail end

                }else{

                  sequelize.query("SELECT * FROM users WHERE id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[req.body.userId]}).then(roww => {

                      var mailOptions = {

                        to: roww[0].email,

                        subject: 'Your order has been placed successfully',

                        user: {  // data to view template, you can access as - user.name

                          name: roww[0].name,

                          orderid: orderId,

                          amount : total,

                          date : moment().format('MMMM DD YYYY')

                        }

                      }

                      

                      // Send email.

                        app.mailer.send('order', mailOptions, function (err, message) {

                          if (err) {

                            console.log(err);                  

                          }

                          console.log(message);

                        });

                        //mail end

                  });

                }                                                

              }

              

          }



          res.json({

              success: true,

              message: 'order successful!',          

              orderId:orderId,

              date:moment().format('MMMM DD YYYY'),

              rows,              

            });        

      }else{

          res.json({

            success:false,

            message:'Some thing wrong happened'

          });

      }

    })

})



router.post('/updateOrder',function(req,res){

  let orderId = req.body.orderId;

  let txn_id = req.body.txn_id;

  console.log(req.body); 



  sequelize.query("UPDATE orders SET payment_status = 2, payment_id = ? WHERE order_number = ? ",{type:sequelize.QueryTypes.INSERT, raw:true, replacements:[txn_id,orderId]}).then(rows => {

      console.log(rows);

      if(rows){

          sequelize.query("SELECT * FROM orders WHERE order_number = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[orderId]}).then(row => {

            if (row[0].guest_email) {

                //code

                 var mailOptions = {

                    to: row[0].guest_email,

                    subject: 'Your order has been placed successfully',

                    user: {  // data to view template, you can access as - user.name

                      name: row[0].guest_email,

                      orderid: orderId,

                      amount : row[0].price,

                      date : row[0].created_at,

                      txn_id : txn_id

                    }

                  }

                  

                  // Send email.

                  app.mailer.send('ordersuccess', mailOptions, function (err, message) {

                    if (err) {

                      console.log(err);                  

                    }

                    console.log(message);

                  });

                  //mail end

            }else{

                //   sequelize.query("SELECT * FROM users WHERE id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[row[0].user_id]}).then(roww => {

                //       var mailOptions = {

                //          to: roww[0].email,

                //          subject: 'Your order has been placed successfully',

                //          user: {  // data to view template, you can access as - user.name

                //           name: roww[0].name,

                //           orderid: orderId,

                //           amount : row[0].price,

                //           date : row[0].created_at,

                //           txn_id : txn_id

                //          }

                //       }

                       

                //       // Send email.

                //         app.mailer.send('ordersuccess', mailOptions, function (err, message) {

                //           if (err) {

                //             console.log(err);                  

                //           }

                //           console.log(message);

                //         });

                //         //mail end

                //   });

                sequelize.query("SELECT * FROM users WHERE id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[row[0].user_id]}).then(roww => {



                    sequelize.query("SELECT o.*,p.name,p.product_code FROM order_detail as o join products as p ON o.item = p.id  WHERE o.order_id = ? ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[orderId]}).then(ro => {                    

                      var mailOptions = {

                         to: roww[0].email,

                         subject: 'Your order has been placed successfully',

                         user: {  // data to view template, you can access as - user.name

                           name: roww[0].name,

                           orderid: orderId,

                           amount : row[0].price,

                           date : row[0].created_at,

                           txn_id : txn_id,

                           row,

                           roww,

                           ro

                         }

                       }

                       

                       console.log(ro);

                       // Send email.

                        app.mailer.send('invoice', mailOptions, function (err, message) {

                          if (err) {

                            console.log(err);                  

                          }

                          console.log(message);

                        });

                        //mail end



                        //console.log(row);

                     });   

                  });

            }

                                  

          });

          

          res.json({

              success: true,

              message: 'update order successful!',          

              orderId:orderId,

              date:moment().format('MMMM DD YYYY'),

              rows,              

            });        

      }else{

          res.json({

            success:false,

            message:'Some thing wrong happened'

          });

      }

    })

})









router.post('/contact',function(req,res){

  let name = req.body.name;

  let email = req.body.email;

  let message = req.body.message;

  console.log(req.body);

  sequelize.query("SELECT * FROM settings WHERE field_key = 'website_email' ",{type:sequelize.QueryTypes.SELECT, raw:true, replacements:[]}).then(roww => {

  let adminMail = roww[0].field_value;

                //code

                 var mailOptions = {

                    to: adminMail,

                    subject: 'User wants to contact with you',

                    user: {  // data to view template, you can access as - user.name

                        name: name,                        

                        email : email,

                        message : message

                      }

                  }

                  

                  // Send email.

                  app.mailer.send('contact', mailOptions, function (err, message) {

                    if (err) {

                      console.log(err);                  

                    }

                    console.log(message);

                  });

                  //mail end

            

                                  

          

          

          res.json({

              success: true,

              message: 'mail send successful!',                                      

            });

  });

    

});



router.post("/zippayCheckout",(req,res)=>{

    var request = require("request");

    

    let total = req.body.total;

    let orderId = req.body.orderId;



    var options = { method: 'POST',

      url: 'https://api.sandbox.zipmoney.com.au/merchant/v1/checkouts',

      headers: 

       { 'postman-token': '7483dd73-13c0-a78a-713e-b112fcb5919a',

         'cache-control': 'no-cache',

         'zip-version': '2017-03-01',

         authorization: 'Bearer ZADBd3CnLkEWFcvgxyMRUnmWGjdFEN0yxr3ga4t0MZY=',

         'content-type': 'application/json' },

      body: 

       { shopper: 

          { title: 'Mr',

            first_name: 'Christina',

            last_name: 'Christina',

            middle_name: 'Joe',

            phone: '0400000000',

            email: 'info@Christina.com',

            birth_date: '2017-10-10',

            gender: 'Male',

            billing_address: 

             { line1: '10 Test st',

               city: 'Sydney',

               state: 'NSW',

               postal_code: '2000',

               country: 'AU' } },

         order: 

          { reference: orderId,

            amount: total,

            currency: 'AUD',

            shipping: 

             { pickup: false,

               address: 

                { line1: '10 Test st',

                  city: 'Sydney',

                  state: 'NSW',

                  postal_code: '2000',

                  country: 'AU' } },

            items: 

             [ { name: 'jewellery',

                 amount: total,

                 quantity: 1,

                 type: 'sku',

                 reference: '1' } ] },

         config: { redirect_uri: 'http://christinajewellery.com.au/jewellery/success' } },

      json: true };

    

    request(options, function (error, response, body) {

      if (error) throw new Error(error);

      res.json({body});

    });



})





router.post("/zippayCharge",(req,res)=>{

    var request = require("request");

        

    let checkoutId = req.body.checkoutId;

    

    var options = { method: 'GET',

        url: 'https://api.sandbox.zipmoney.com.au/merchant/v1/checkouts/'+checkoutId,

        headers: 

         { 'postman-token': 'ef9c580f-259b-0146-b7fa-d239475060a1',

           'cache-control': 'no-cache',

           'zip-version': '2017-03-01',

           authorization: 'Bearer ZADBd3CnLkEWFcvgxyMRUnmWGjdFEN0yxr3ga4t0MZY=' } };

      

      request(options, function (error, response, body) {

        if (error) throw new Error(error);

      

        let total = (JSON.parse(body).order.amount);

               if(total){

                    var options = { method: 'POST',

                    url: 'https://api.sandbox.zipmoney.com.au/merchant/v1/charges',

                    headers: 

                     { 'postman-token': '14ed3947-ecbd-4589-6143-e48900abe97d',

                       'cache-control': 'no-cache',

                       'zip-version': '2017-03-01',

                       authorization: 'Bearer ZADBd3CnLkEWFcvgxyMRUnmWGjdFEN0yxr3ga4t0MZY=',

                       'content-type': 'application/json' },

                    body: 

                     { authority: { type: 'checkout_id', value: checkoutId },

                       amount: total,

                       currency: 'AUD',

                       capture: false },

                    json: true };

                  

                  request(options, function (error, response, body1) {

                    if (error) throw new Error(error);

                  

                        res.json({success:true,orderId:(JSON.parse(body).order.reference)});

                  }); 

              } 

        

      }); 

})





router.post("/afterpayCheckout",(req,res)=>{

    var request = require("request");

    

    let total = req.body.total;

    let orderId = req.body.orderId;  



    var options = { method: 'POST',

        url: 'https://api-sandbox.afterpay.com/v1/orders',

        headers: 

         { 'postman-token': '41eea1f9-5d23-688b-f11c-b8ad0690b770',

           'cache-control': 'no-cache',

           'content-type': 'application/json',

           'user-agent': 'PHP/7.0.0',

           accept: 'application/json',

           authorization: 'Basic NDEyNjc6ZWFhYmQ0NjkyMDg2NmUzY2I5YjYxM2FmNTQyMjYwODhlYjUwYWJiZTY5YmIyZTY0MjdiNDY3NTI4NTM1YWRiM2Q3M2VkODFjNDA2ZTI3MjczODllMzVlYzEwMzVjYzk0ZTE0MTdlZTc3ZjcxNjg0NDU4OWE3MGVkNjk2MjE0ZWQ=' },

        body: 

         { totalAmount: { amount: total, currency: 'AUD' },

           consumer: 

            { givenNames: 'Christina',

              surname: 'Christina',

              email: 'info@christina.com',

              phoneNumber: '0400000000' },

           billing: 

            { name: 'Christina Consumer',

              line1: '123 Fake Street',

              postcode: '0000',

              countryCode: 'AU' },

           shipping: 

            { name: 'Christina Consumer',

              line1: '123 Fake Street',

              postcode: '0000',

              countryCode: 'AU' },

           items: 

            [ { price: { amount: total, currency: 'AUD' },

                name: 'jewellery',

                quantity: 1,

                sku: '123' } ],

           merchant: 

            { redirectConfirmUrl: 'https://christinajewellery.com.au/jewellery/success',

              redirectCancelUrl: 'https://christinajewellery.com.au/jewellery/failure' },

           taxAmount: { amount: '0.00', currency: 'AUD' },

           shippingAmount: { amount: '0.00', currency: 'AUD' },

           description: 'jewellery',

           merchantReference: orderId },

        json: true }; 

    

    request(options, function (error, response, body) {

      if (error) throw new Error(error);

      //console.log(body);

      res.json({body});

    });



  });



  router.post("/afterpayCharge",(req,res)=>{

    var request = require("request");

        

    let orderToken = req.body.orderToken;

    

    var options = {

      method: 'POST',

      url: 'https://api-sandbox.afterpay.com/v1/payments/capture',

      headers: {

        'content-type': 'application/json',

        'user-agent': 'Readme.io API Simulator',

        accept: 'application/json',

        authorization: 'Basic NDEyNjc6ZWFhYmQ0NjkyMDg2NmUzY2I5YjYxM2FmNTQyMjYwODhlYjUwYWJiZTY5YmIyZTY0MjdiNDY3NTI4NTM1YWRiM2Q3M2VkODFjNDA2ZTI3MjczODllMzVlYzEwMzVjYzk0ZTE0MTdlZTc3ZjcxNjg0NDU4OWE3MGVkNjk2MjE0ZWQ='

      },

      body: '{"token":"'+orderToken+'"}'

    };



      request(options, function (error, response, body) {

        if (error) throw new Error(error);



        console.log(JSON.parse(body).id);

          if(JSON.parse(body).status == 'APPROVED'){

               res.json({success:true,orderId:JSON.parse(body).merchantReference});            

          }else{

               res.json({success:false,orderId:''});            

          }

         

      });

    

              

  });



function makeCode(length,username) {

   var result           = '';

   var characters       = '0123456789';

   var charactersLength = characters.length;

   for ( var i = 0; i < length; i++ ) {

      result += characters.charAt(Math.floor(Math.random() * charactersLength));

   }

   return result;

}





module.exports = router;

