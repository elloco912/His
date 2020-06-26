using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace His.Data.Repositories
{
    public class ConexionRepository
    {
        public SqlConnection getConexion(string conexion)
        {
            SqlConnection sqlConnection;
            if (conexion == "") sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["CEM"].ToString());
            else sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings[conexion].ToString());
            return sqlConnection;
        }
    }
}