using RNConnection.DataStorageLayer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Xml;
using System.Xml.Linq;

/// <summary>
/// Descripción breve de RNLogin
/// </summary>
public class RNLogin
{
    public RNLogin()
    {

    }

    public long Login(Credenciales cre)
    {
        DSL _connection = new DSL();
        try
        {
            _connection.Open(ConfigurationManager.ConnectionStrings["dbLogin"].ToString(), RNConnection.DataAbstractionLayer.eProvider.SQLServer);
            _connection.InitialSQLStatement("dbo.Autenticarse", System.Data.CommandType.StoredProcedure);
            _connection.SetParameterProcedure("@nick", System.Data.ParameterDirection.Input, RNConnection.DataAbstractionLayer.eTypes.Cadena, cre.Nick);
            _connection.SetParameterProcedure("@pwd", System.Data.ParameterDirection.Input, RNConnection.DataAbstractionLayer.eTypes.Cadena, cre.Password);

            long IdCredencial = long.Parse(_connection.ReturnObject().ToString());
            return IdCredencial;
        }
        catch (Exception ex)
        {
            throw new Exception("Error: " + ex.Message, ex);
        }
    }
    public long UpUser(Credenciales cre)
    {
        DSL _connection = new DSL();
        try
        {
            _connection.Open(ConfigurationManager.ConnectionStrings["dbLogin"].ToString(), RNConnection.DataAbstractionLayer.eProvider.SQLServer);
            _connection.InitialSQLStatement("dbo.UpUser", System.Data.CommandType.StoredProcedure);
            _connection.SetParameterProcedure("@nom", System.Data.ParameterDirection.Input, RNConnection.DataAbstractionLayer.eTypes.Cadena, cre.Nombre);
            _connection.SetParameterProcedure("@nick", System.Data.ParameterDirection.Input, RNConnection.DataAbstractionLayer.eTypes.Cadena, cre.Nick);
            _connection.SetParameterProcedure("@pwd", System.Data.ParameterDirection.Input, RNConnection.DataAbstractionLayer.eTypes.Cadena, cre.Password);

            long IdCredencial = long.Parse(_connection.ReturnObject().ToString());
            return IdCredencial;
        }
        catch (Exception ex)
        {
            throw new Exception("Error: " + ex.Message, ex);
        }
    }

    public long LoginOUTPUT(Credenciales cre)
    {
        DSL _connection = new DSL();
        try
        {
            _connection.Open(ConfigurationManager.ConnectionStrings["dbLogin"].ToString(), RNConnection.DataAbstractionLayer.eProvider.SQLServer);
            _connection.InitialSQLStatement("dbo.Autenticarse_out", System.Data.CommandType.StoredProcedure);
            _connection.SetParameterProcedure("@nick", System.Data.ParameterDirection.Input, RNConnection.DataAbstractionLayer.eTypes.Cadena, cre.Nick);
            _connection.SetParameterProcedure("@pwd", System.Data.ParameterDirection.Input, RNConnection.DataAbstractionLayer.eTypes.Cadena, cre.Password);
            _connection.SetParameterProcedure("@Credencial", System.Data.ParameterDirection.Output, RNConnection.DataAbstractionLayer.eTypes.Entero, null);

            long IdCredencial = long.Parse(_connection.ExecuteStroedOutPut().ToString());
            return IdCredencial;
        }
        catch (Exception ex)
        {
            return 0;
        }
    }

    public long LoginXML(Credenciales cre)
    {
        DSL _connection = new DSL();
        try
        {
            _connection.Open(ConfigurationManager.ConnectionStrings["dbLogin"].ToString(), RNConnection.DataAbstractionLayer.eProvider.SQLServer);
            _connection.InitialSQLStatement("dbo.fe_Autenticarse_xml", System.Data.CommandType.StoredProcedure);
            _connection.SetParameterProcedure("@nick", System.Data.ParameterDirection.Input, RNConnection.DataAbstractionLayer.eTypes.Cadena, cre.Nick);
            _connection.SetParameterProcedure("@pwd", System.Data.ParameterDirection.Input, RNConnection.DataAbstractionLayer.eTypes.Cadena, cre.Password);
            _connection.SetParameterProcedure("@ResultadoXML", System.Data.ParameterDirection.ReturnValue, RNConnection.DataAbstractionLayer.eTypes.XML, null);

            long IdCredencial = 0;
            XmlReader xmlr = _connection.ExecuteXMLReader();
            XDocument XDocEsquema = XDocument.Load(xmlr);
            var Cursor = from valor in XDocEsquema.Descendants("Personas")
                         select valor;
            foreach (var item in Cursor)
            {
                IdCredencial = long.Parse(item.Element("Credencial").Value.ToString());
                break;
            }
            return IdCredencial;
        }
        catch (Exception ex)
        {
            throw new Exception("Error: " + ex.Message, ex);
        }
    }
}