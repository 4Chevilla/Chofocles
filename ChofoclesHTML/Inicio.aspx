<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chofocles</title>
    <link href='https://fonts.googleapis.com/css?family=Fredericka+the+Great' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Walter+Turncoat' rel='stylesheet' type='text/css'/>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/Style.css" rel="stylesheet" />
    <link href="CSS/inicio.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

        <script src="Scripts/jquery-2.1.4.min.js"></script>
		<script>
		    $(document).ready(function () {
		        $('section[data-type="parallax_section"]').each(function () {
		            var $bgobj = $(this); // Variable para asignacion de objeto
		            $(window).scroll(function () {
		                $window = $(window);
		                var yPos = -($window.scrollTop() / $bgobj.data('speed'));
		                // cordinadas del background
		                var coords = '50% ' + yPos + 'px';
		                // moviendo el background
		                $bgobj.css({ backgroundPosition: coords });
		            });
		        });
		    });
		</script>

    
</head>
<body>
        <div class="form1">
        </div>
		<section id="home" style="background-image:url(Img/IMG_7519.JPG)" data-type="parallax_section" data-speed="10">
                <div class="img-responsive divPromo">
                   <div class="divTope" >
                        <input type="button" class="buttonIn buttonActive" value="inicio"/><br/>
                        <input type="button" class="buttonMe" value="Menú"/><br/>
                        <input type="button" class="buttonHi" value="Historia"/><br/>
                        <input type="button" class="buttonCo" value="Contacto" onclick="contacto.aspx"/>
                    </div>
                    <div class="divContenido" >
                        <br/><h1 class="txt txtCentrado txtEnmedio txtBlanco" style="font-size:60px; font-family:'SketchFlow Print';" >No solo nachos. Un estilo de</h1>
                         <h1 class="txtCentrado txt txtVerde"style="font-family:'SketchFlow Print'; font-size:60px;" > vida!</h1>
                        <p class=" btnCentrado"><a  class="btn btn-primary btn-lg bntVerde" href="#" role="button">Conoce mas.</a></p>
                    </div>
                </div>
		</section>
		<section id="seccion2" style="background-image:url(Img/IMG_7517.JPG)" data-type="parallax_section" data-speed="10">
            <div class="img-responsive divPromo">
                <div class=" divTope" >

                </div>
                <div class="divContenido">
                    <br/><h1 class="txtDerecha txtEnmedio txt txtNegro" style="font-size:100px; font-family:'Fredericka the Great';" >Flautas de</h1>
                    <h1 class="txt txtDerecha txtNaranja" style="font-family:'Walter Turncoat'; font-size:80px;" > Pollo!</h1>
                    <p class=" btnDerecha " ><a class="btn btn-primary btn-lg bntVerde" href="#" role="button">Conoce mas.</a></p>
                 </div>
            </div>
		</section>
		<section id="section3" style="background-image:url(Img/IMG_7528.JPG)" data-type="parallax_section" data-speed="10">
                <div class="img-responsive divPromo" >
                   <div class="divTope" >

                    </div>
                    <div class="divContenido">
                        <br/><h1 class=" txt txtDerecha txtEnmedio txtNaranja" style="font-size:80px; font-family:'SketchFlow Print'; " >Jeri-callas</h1>
                         <h1 class="txt txtDerecha txtNegro" style="font-family:'Arial'; font-size:80px;" > 2x1</h1>
                        <p class="btnDerecha"  "><a class="btn btn-primary btn-lg bntVerde" href="#" role="button">Conoce mas.</a></p>
                    </div>
                </div>
		</section>
                <section class="img-responsive" style=" min-width:400px;  background-color:green; opacity:3;"data-type="parallax_section" data-speed="10">
               <div class="img-responsive divBanner" >
                   <div class="divTope">

                    </div>
                    <div class="divContenido">
                        <br/><h1 class="txt txtCentrado txtNaranja" style=" margin-top:10px;  font-size:50px; font-family: 'Fredericka the Great', cursive; " >Ven y conocenos</h1>
                        <h1 class="txt txtCentrado txtBlanco" style="font-size:30px; font-family: 'Walter Turncoat', cursive;" > blvd. Campestre #7234 Colonia: Jardines del Moral</h1>
                        <p class=" btnCentrado"><a  class="btn btn-primary btn-lg bntBlanco" href="Contacto.aspx" role="button">Contacto.</a></p>
                    </div>
                </div>
            </section>
   
</body>
</html>
