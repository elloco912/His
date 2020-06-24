using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace HistClinica.Repositories.Repositories
{
    public class EmpleadoRepository 
    {
        private static UtilRepository UtilRepository = new UtilRepository(); 
        public static T120_EMPLEADO GetEmpleado(DataRow dr)
        {
            return _ = new T120_EMPLEADO
            {
                idEmpleado = Convert.ToInt32(dr["idEmpleado"]),
                codEmpleado = dr["codEmpleado"].ToString(),
                descArea = dr["descArea"].ToString(),
                cargo = dr["cargo"].ToString(),
                fecIngreso = Convert.ToDateTime(dr["cargo"].ToString()),
                salario = Convert.ToInt32(dr["salario"].ToString()),
                genero = dr["genero"].ToString(),
                idtpEmpleado = Convert.ToInt32(dr["idtpEmpleado"]),
                idPersona = Convert.ToInt32(dr["idPersona"]),
                estado = dr["estado"].ToString()
            };
        }
        public List<T120_EMPLEADO> listarEmpleados()
        {
            List<T120_EMPLEADO> empleados = new List<T120_EMPLEADO>();
            DataSet objects = UtilRepository.getAllData("usp_ListarEmpleado");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                empleados.Add(GetEmpleado(dr));
            }
            return empleados;
        }

        public T120_EMPLEADO listarxIdEmpleado(int id)
        {
            T120_EMPLEADO empleado = new T120_EMPLEADO();

            DataSet objects = UtilRepository.getDataById("usp_listarxIdEmpleado", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                empleado = GetEmpleado(dr);
            }
            return empleado;
        }

        public string eliminarEmpleado(int id)
        {
            return UtilRepository.deleteById("usp_EliminarEmpleado", id);
        }

        public string insertarEmpleado(T120_EMPLEADO empleado)
        {
            return UtilRepository.insertaActualiza("usp_InsertarEmpleado", empleado, 1);
        }

        public string actualizarEmpleado(T120_EMPLEADO empleado)
        {
            return UtilRepository.insertaActualiza("usp_ActualizarEmpleado", empleado, 2);
        }
    }
}
