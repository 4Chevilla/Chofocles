using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Promocion
/// </summary>
public class Promocion
{
	public Promocion()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public long Id { set; get; }
    public string Nombre { set; get; }
    public string Descripcion{ set; get; }
    public string Img { set; get; }
    public long FechaI { set; get; }
    public string FechaF { set; get; }
    public string PorcDesc { set; get; }
    public string Estatus { set; get; }
}