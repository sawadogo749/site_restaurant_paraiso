<?php 
   $db=new PDO('mysql:host=localhost;dbname=paraiso','root','');

   $req=$db->prepare('SELECT * FROM produit WHERE categorie=?');
   $req->execute([3]);
   $datas=$req->fetchAll();


?>    
<!DOCTYPE html>
<html lang="en">
<head> 
 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap-4.6.1-dist/css/Bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>mon restaurant</title>
    <style>
        body
        {
           height: auto; width: auto;
           /*background-color: black*/;
        }

        header h1
        {
           text-align: center;
           
        }

        nav ul{

           display: flex;
           justify-content:center;
           list-style: none;
           background-color: lightcoral;
           padding: 1px;
        }
        nav ul li{
            margin-left: auto;
        }
        nav ul li a
        {
            padding: 40px 40px;
            font-size: 40px;
            text-decoration: none;
            color: white;
        }
        /*.container{
             
               height: 500vh;
               background-color: black;
        }*/

        div .container{ border:500px solid; position: left; }
      
      }

      div .divhaut { background-color: white; }

      img{width: /*35*/45vh;height: /*24*/34vh;}
      /*span{position: right; width: 50%;height: 30%;}
      .col-md-2, .col-md-3{z-index: 20px;}*/
      .menucolor {text-align: center; color: red; font-family: Arial;}

      .divnavmenu{
          display: flex;
           justify-content:center;
           list-style: none;
           /*background: -webkit-linear-gradient(left, purple, black, yellow);
           background: -o-linear-gradient(right, purple, black, yellow);
           background: -moz-linear-gradient(right, purple, black, yellow);
           background: linear-gradient(to right, purple, black, yellow); */

           background-image: url("./images/img.jpg");
           background-size: 100%, 100%;
          background-repeat: no-repeat;

           webkit-animation-name: diapo;
           webkit-animation-duration:15s;
           webkit-animation-timing-function: linear;
           webkit-animation-iteration-count:infinite;
           webkit-animation-direction:normal;

           moz-animation-name: diapo;
           moz-animation-duration:15s;
           moz-animation-timing-function: linear;
           moz-animation-iteration-count:infinite;
           moz-animation-direction:normal;

           animation-name: diapo;
           animation-duration:15s;
           animation-timing-function: linear;
           animation-iteration-count:infinite;
           animation-direction:normal;

           /*------------------------------------*/

           padding: 30px 30px;
            font-size: 30px;
            text-decoration: underline;
            color: white;
      }

      @-webkit-keyframes diapo {
        0%{background-image: url(./images/img.jpg);}
        33%{background-image: url(./images/bissap.jpg);}
        66%{background-image: url(./images/poulet braise.jpg);}
      }

      @-moz-keyframes diapo {
        0%{background-image: url(./images/img.jpg);}
        33%{background-image: url(./images/bissap.jpg);}
        66%{background-image: url(./images/poulet braise.jpg);}
      }

      @keyframes diapo {
        0%{background-image: url(./images/img.jpg);}
        33%{background-image: url(./images/bissap.jpg);}
        66%{background-image: url(./images/poulet braise.jpg);}
      }

    </style>
</head>
<body>
<header>
            
     <div class="divhaut">
           <header>
               <h1>Restorant</h1>
           </header>
     </div>       
    <div class="divnav">
       <nav>
           <ul>
             <li><a href="#">Accueuil</a></li>
             <li><a href="#">Menu</a></li>
             <li><a href="#">a propos de nous</a></li>
             <li><a href="#">reservation</a></li>
           </ul>
       </nav>
    </div>
</header>

<!-- pour la partie du menu-->

<div>
        <h1 class="menucolor">Menu</h1>
      </div>

      <div class="divnavmenu">
         <nav>
             <ol type=" ">
               <li><a href="Plats Africain.<?php  ?>">Plats Africain</a></li>
               <li><a href="Plats Exotiques.php">Plats Exotiques</a></li>
               <li><a href="Fast-food.php">Fast-food</a></li>
               <li><a href="Boissons et jus.php">Boissons et jus</a></li>
               <li><a href="Desserts.php">Désserts</a></li>
             </ol>
         </nav>
      </div> 


<div class="container">

    <header>
      <!--<div>
        <h1 class="menucolor">Menu</h1>
      </div>

      <div class="divnavmenu">
         <nav>
             <ol type=" ">
               <li><a href="#">Plats Africain</a></li>
               <li><a href="#">Plats Exotiques</a></li>
               <li><a href="#">Fast-food</a></li>
               <li><a href="#">Boissons et jus</a></li>
             </ol>
         </nav>
      </div> -->

    </header>
    <br>
    <br>
    <h3 style="color: #793550">Fast-food</h3>
      <br>
      <section class="row">
  

         <?php  foreach($datas as $data):?>

            <div class="col-xs-4 col-sm-3 col-md-4"> <img src="<?php echo $data['img']?>">
              <div class="col-xs-4 col-sm-3 col-md-12"> <pre style="font-family: Arial"><?php echo $data['nom']?> : <?php echo $data['prix']?>fcfa</pre></div>
              <br>
            </div>
        <?php  endforeach?>

      </section>
      <br>
      <br>
    </div>

    <div style="text-align: center">
      <ul style="list-style: none;text-decoration:underline;">
        <li><a href="menu.html"><h4>retour au menu</h4></a></li>
      </ul>
    </div>


  </body>
  </html>
