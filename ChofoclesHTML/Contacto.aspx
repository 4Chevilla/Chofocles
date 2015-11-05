<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<!DOCTYPE html>
<html>
	<head>
    <title>Chofocles/Contacto</title>
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
		<section id="home" data-type="parallax_section" data-speed="10">
                <div class="img-responsive divPromo">
                   <div class="divTope" >
                        <input type="button" class="buttonIn buttonActive" value="inicio"/><br/>
                        <input type="button" class="buttonMe" value="Menú"/><br/>
                        <input type="button" class="buttonHi" value="Historia"/><br/>
                        <input type="button" class="buttonCo" value="Contacto"/>
                    </div>
                    <div class="divContenido" >
                        <br/><h1 class="txt txtCentrado txtEnmedio txtBlanco" style="font-size:60px; font-family:'SketchFlow Print';" >No solo nachos. Un estilo de</h1>
                         <h1 class="txtCentrado txtVerde"style="font-family:'SketchFlow Print'; font-size:60px;" > vida!</h1>
                        <p class=" btnCentrado"><a  class="btn btn-primary btn-lg bntVerde" href="#" role="button">Conoce mas.</a></p>
                    </div>
                </div>
		</section>
            
	</body>
</html>