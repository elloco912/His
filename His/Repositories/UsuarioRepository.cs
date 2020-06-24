using His.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using static His.Repositories.UtilRepository;

namespace His.Repositories
{
    public class UsuarioRepository
    {
        private static UtilRepository UtilRepository = new UtilRepository();

        public List<D001_USUARIO> listarUsuarios()
        {
            List<D001_USUARIO> usuarios = new List<D001_USUARIO>();
            DataSet objects = UtilRepository.getAllData("usp_listarUsuario");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                var usuario = new D001_USUARIO
                {
                    idUsuario = Convert.ToInt32(dr["idUsuario"]),
                    claveUser = dr["claveUser"].ToString(),
                    loginUser = dr["loginUser"].ToString(),
                    estado = dr["estado"].ToString(),
                    idEmpleado = Convert.ToInt32(dr["idEmpleado"])
                };
                usuarios.Add(usuario);
            }
            return usuarios;
        }

        public D001_USUARIO listarxIdUsuario(int id)
        {
            D001_USUARIO usuario = new D001_USUARIO();

            DataSet objects = UtilRepository.getDataById("usp_listarxIdUsuario", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                usuario = new D001_USUARIO
                {
                    idUsuario = Convert.ToInt32(dr["idUsuario"]),
                    claveUser = dr["claveUser"].ToString(),
                    loginUser = dr["loginUser"].ToString(),
                    estado = dr["estado"].ToString(),
                    idEmpleado = Convert.ToInt32(dr["idEmpleado"])
                };
            }
            return usuario;
        }

        public ValidacionLogueo logueo(string user, string clave)
        {
            return UtilRepository.logueo("usp_listarxNombreUsuario", user, clave);
        }

        public string eliminarUsuario(int id)
        {
            return UtilRepository.deleteById("usp_eliminarUsuario", id);
        }

        public string insertarUsuario(D001_USUARIO usuario)
        {
            return UtilRepository.insertaActualiza("usp_InsertarUsuario", usuario,1);
        }

        public string actualizarUsuario(D001_USUARIO usuario)
        {
            return UtilRepository.insertaActualiza("usp_actualizarUsuario", usuario,2);
        }
    }
}
