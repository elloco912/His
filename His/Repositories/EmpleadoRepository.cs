using His.DTO;
using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace His.Repositories
{
    public class EmpleadoRepository 
    {
        private static UtilRepository UtilRepository = new UtilRepository(); 
        private static PersonaRepository PersonaRepository = new PersonaRepository(); 
        public static T120_EMPLEADO GetEmpleado(DataRow dr)
        {
            return _ = new T120_EMPLEADO
            {
                idEmpleado = Convert.ToInt32(dr["idEmpleado"]),
                codEmpleado = dr["codEmpleado"].ToString(),
                descArea = dr["descArea"].ToString(),
                cargo = dr["cargo"].ToString(),
                fecIngreso = Convert.ToDateTime(dr["fecIngreso"].ToString()),
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
        public T120_EMPLEADO listarxNombre(string nombres)
        {
            T120_EMPLEADO empleado = new T120_EMPLEADO();

            DataSet objects = UtilRepository.getDataByName("usp_ListarxNombreEmpleado", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                empleado = GetEmpleado(dr);
            }
            return empleado;
        }
        public T120_EMPLEADO ListarEmpleadoxIdPersona(int id)
        {
            T120_EMPLEADO empleado = null;

            DataSet objects = UtilRepository.getDataById("usp_ListarEmpleadoxIdPersona", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                empleado = GetEmpleado(dr);
            }
            return empleado;
        }
        //ToDO: Terminar esto
        public PersonaDTO listarxIdEmpleado(int id)
        {
            PersonaDTO Persona = new PersonaDTO();
            T120_EMPLEADO empleado = new T120_EMPLEADO();

            DataSet objects = UtilRepository.getDataById("usp_ListarxIdEmpleado", (int)id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                empleado = GetEmpleado(dr);
                Persona = PersonaRepository.listarxIdPersona((int)empleado.idPersona);
            }


            return Persona;
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
