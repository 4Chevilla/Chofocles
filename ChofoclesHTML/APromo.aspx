<%@ Page Language="C#" AutoEventWireup="true" CodeFile="APromo.aspx.cs" Inherits="APromo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Aministracion</title>
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

		    $(document).ready(function () {
		        $('#btnGen').click(function () {
		            $('#res').empty();
		            var IMG = $('#txtIMG').val();
		            var T1 = $('#txtT1').val();
		            var T2 = $('#txtT2').val();
		            var Al1 = $('#cmbAl1').val();
		            var Al2 = $('#cmbAl2').val();
		            var Alh1 = $('#cmbAlh1').val();
		            var Alh2 = $('#cmbAlh2').val();
		            var Ta1 = $('#cmbTamaño1').val();
		            var Ta2 = $('#cmbTamaño2').val();
		            var C1 = $('#cmbColor1').val();
		            var C2 = $('#cmbColor2').val();
		            var Ti1 = $('#cmbLetra1').val();
		            var Ti2 = $('#cmbLetra2').val();
		            var BA = $('#cmbbtnA').val();
		            var BC = $('#cmbbtnC').val();


		            switch (Al1) {
		                case "Arriba":
		                    Al1 = "txtArriba";
		                    break;
		                case "Central":
		                    Al1 = "txtEnmedio";
		                    break;
		                case "Abajo":
		                    Al1 = "txtAbajo";
		                    break;
		            }
		            switch (Alh2) {
		                case "Izq":
		                    Alh2 = "txtIzquierda";
		                    break;
		                case "Central":
		                    Alh2 = "txtCentral";
		                    break;
		                case "Der":
		                    Alh2 = "txtDerecha";
		                    break;
		            }
		            switch (Alh1) {
		                case "Izq":
		                    Alh1 = "txtIzquierda";
		                    break;
		                case "Central":
		                    Alh1 = "txtCentral";
		                    break;
		                case "Der":
		                    Alh1 = "txtDerecha";
		                    break;
		            }
		            switch (C1) {
		                case "Negro":
		                    C1 = "txtNegro";
		                    break;
		                case "Rojo":
		                    C1 = "txtRojo";
		                    break;
		                case "Verde":
		                    C1 = "txtVerde";
		                    break;
		                case "Blanco":
		                    C1 = "txtBlanco";
		                    break;
		                case "Naranja":
		                    C1 = "txtNaranja";
		                    break;
		            }
		            switch (C2) {
		                case "Negro":
		                    C2 = "txtNegro";
		                    break;
		                case "Rojo":
		                    C2 = "txtRojo";
		                    break;
		                case "Verde":
		                    C2 = "txtVerde";
		                    break;
		                case "Blanco":
		                    C2 = "txtBlanco";
		                    break;
		                case "Naranja":
		                    C2 = "txtNaranja";
		                    break;
		            }
		            switch (BA) {
		                case "Izq":
		                    BA = "btnIzquierda";
		                    break;
		                case "Central":
		                    BA = "btnCentrado ";
		                    break;
		                case "Der":
		                    BA = "btnDerecha";
		                    break;
		            }
		            switch (BC) {
		                case "Verda":
		                    BC = "bntVerde";
		                    break;
		                case "Blanco":
		                    BC = "bntBlanco ";
		                    break;
		                case "Naranja":
		                    BC = "bntNaranja";
		                    break;
		            }


		            var code = "<section id=\"section3\" style=\"background-image:url("+IMG+")\" data-type=\"parallax_section\" data-speed=\"10\"> <div class=\"img-responsive divPromo\" ><div class=\"divTope\" ></div><div class=\"divContenido\"><br/><h1 class=\" txt "+Alh1+" "+Al1+" "+C1+"\" style=\"font-size:"+Ta1+"; font-family:'"+Ti1+"'; \" >"+T1+"</h1><h1 class=\"txt "+Alh2+" "+C2+"\" style=\"font-family:'"+Ti2+"'; font-size:"+Ta2+";\" > "+T2+"</h1><p class=\""+BA+"\"  \"><a class=\"btn btn-primary btn-lg "+BC+"\" href=\"#\" role=\"button\">Conoce mas.</a></p></div></div></section>"
		            $('#res').append ( code);
		        });
		    });


		</script>
</head>
<body>

		<section id="home" data-type="parallax_section" data-speed="10">
                <div class="img-responsive divPromo">

                    <div >
                        <br/><br/><br/>
                        Ruta de imagen<input id="txtIMG" type="text" /><br/>
                        Titulo 1<input id="txtT1" type="text" /><br/>
                        Alineacion vertical del titulo 1<select id="cmbAl1"> 
                            <option value="Arriva">Arriva</option>
                            <option value="Central">Central</option>
                            <option value="Abajo">Abajo</option>
                        </select> <br/>
                        Alineacion horizontal del titulo 1<select id="cmbAlh1"> 
                            <option value="Izq">Izq</option>
                            <option value="Central">Central</option>
                            <option value="Der">Der</option>
                        </select> <br/>
                        Color del titulo 1<select id="cmbColor1"> 
                            <option value="Blanco">Blanco</option>
                            <option value="Naranja">Naranja</option>
                            <option value="Negro">Negro</option>
                            <option value="Verde">Verde</option> 
                            <option value="Rojo">Rojo</option>
                        </select> <br/>
                        Tamaño del titulo 1<select id="cmbTamaño1"> 
                            <option value="30px">30px</option> 
                            <option value="40px">40px</option>
                            <option value="50px">50px</option>
                            <option value="60px">60px</option>
                            <option value="70px">70px</option> 
                            <option value="80px">80px</option>
                            <option value="90px">90px</option>
                            <option value="100px">100px</option>
                            <option value="110px">110px</option> 
                            <option value="120px">120px</option>
                            <option value="130px">130px</option> 
                        </select> <br/>
                        Tipografia del titulo 1<select id="cmbLetra1"> 
                            <option style="font-family:'SketchFlow Print'" value="SketchFlow Print">SketchFlow Print</option>
                            <option style="font-family:'Fredericka the Great'" value="Fredericka the Great">Fredericka the Great</option>
                            <option style="font-family:'Walter Turncoat'" value="Walter Turncoat">Walter Turncoat</option>
                            <option style="font-family:'Arial'" value="Arial">Arial</option> 
                        </select><br/>
                        Titulo 2<input id="txtT2" type="text" /><br/>
                        Alineacion horizontal del titulo 2<select id="cmbAlh2"> 
                            <option value="Izq">Izq</option>
                            <option value="Central">Central</option>
                            <option value="Der">Der</option>
                        </select> <br/>
                        Color del titulo 2<select id="cmbColor2"> 
                            <option value="Blanco">Blanco</option>
                            <option value="Naranja">Naranja</option>
                            <option value="Negro">Negro</option>
                            <option value="Verde">Verde</option> 
                            <option value="Rojo">Rojo</option>
                        </select> <br/>
                        Tamaño del titulo 2<select id="cmbTamaño2"> 
                            <option value="30px">30px</option> 
                            <option value="40px">40px</option>
                            <option value="50px">50px</option>
                            <option value="60px">60px</option>
                            <option value="70px">70px</option> 
                            <option value="80px">80px</option>
                            <option value="90px">90px</option>
                            <option value="100px">100px</option>
                            <option value="110px">110px</option> 
                            <option value="120px">120px</option>
                            <option value="130px">130px</option> 
                        </select><br/>
                        Tipografia del titulo 2<select id="cmbLetra2"> 
                            <option style="font-family:'SketchFlow Print'" value="SketchFlow Print">SketchFlow Print</option>
                            <option style="font-family:'Fredericka the Great'" value="Fredericka the Great">Fredericka the Great</option>
                            <option style="font-family:'Walter Turncoat'" value="Walter Turncoat">Walter Turncoat</option>
                            <option style="font-family:'Arial'" value="Arial">Arial</option> 
                        </select><br/>

                        Posicion del Boton<select id="cmbbtnA"> 
                            <option value="Izq">Izq</option>
                            <option value="Central">Central</option>
                            <option value="Der">Der</option>
                        </select> <br/>
                        Color del boton<select id="cmbbtnC"> 
                            <option value="Blanco">Blanco</option>
                            <option value="Naranja">Naranja</option>
                            <option value="Verde">Verde</option> 
                        </select> <br/>


                        <input id="btnGen" type="button" value="Generar" />
                        <br/>
                        Resultado:
                        <br/>
                        <label id="res" style="width:100%; height:auto">

                        </label>
                    </div>
                </div>
		</section>
</body>
</html>
