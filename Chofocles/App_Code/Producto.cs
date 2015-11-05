using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Producto
/// </summary>
public class Producto
{
	public Producto()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public long Id { set; get; }
    public string Nombre { set; get; }
    public string Descripcion { set; get; }
    public long Precio { set; get; }
    public string Img { set; get; }
    public int Estatus { set; get; }
   
}