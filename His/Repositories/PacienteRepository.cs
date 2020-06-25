using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Threading.Tasks;

namespace His.Repositories
{
    public class PacienteRepository 
    {
        private static UtilRepository UtilRepository = new UtilRepository();
        public static T001_PACIENTE GetPaciente(DataRow dr)
        {
            return _ = new T001_PACIENTE
            {
                idPaciente =    Convert.ToInt32(dr["idPaciente"]),
                codPaciente =   dr["codPaciente"].ToString(),
                descripcion =   dr["descripcion"].ToString(),
                nrohc =         dr["nrohc"].ToString(),
                nombreAcom =    dr["nombreAcom"].ToString(),
                edadAcom =      Convert.ToInt32(dr["edadAcom"].ToString()),
                dniAcom =       Convert.ToInt32(dr["dniAcom"].ToString()),
                idgpoSangre =   Convert.ToInt32(dr["idgpoSangre"].ToString()),
                idFactorrh =    Convert.ToInt32(dr["idFactorrh"].ToString()),
                cobertura = dr["cobertura"].ToString(),
                ordenAtenMed= dr["ordenAtenMed"].ToString(),
                nomAsegurado= dr["nomAsegurado"].ToString(),
                codAsegurado = dr["codAsegurado"].ToString(),
                poliza = dr["poliza"].ToString(),
                parentesco=      Convert.ToInt32(dr["parentesco"].ToString()),
                iniVigencia=     Convert.ToDateTime(dr["iniVigencia"].ToString()),
                finVigencia=     Convert.ToDateTime(dr["finVigencia"].ToString()),
                tpPlanSalud=     Convert.ToInt32(dr["tpPlanSalud"].ToString()),
                nroPlanSalud=    Convert.ToInt32(dr["nroPlanSalud"].ToString()),
                estadoSeguro= dr["estadoSeguro"].ToString(),
                tpAfiliacion=    Convert.ToInt32(dr["tpAfiliacion"].ToString()),
                fecAfiliacion=   Convert.ToDateTime(dr["fecAfiliacion"].ToString()),
                codTitular =     Convert.ToInt32(dr["codTitular"].ToString()),
                moneda= dr["moneda"].ToString(),
                nomContratante= dr["nomContratante"].ToString(),
                tpDocumento=     Convert.ToInt32(dr["tpDocumento"].ToString()),
                dniContratante=  Convert.ToInt32(dr["dniContratante"].ToString()),
                planSalud = dr["planSalud"].ToString(),
                codCobertura =   Convert.ToInt32(dr["codCobertura"].ToString()),
                beneficio = dr["beneficio"].ToString(),
                restriccion= dr["restriccion"].ToString(),
                copagoFijo =     Convert.ToInt32(dr["copagoFijo"].ToString()),
                copagoVariable = Convert.ToInt32(dr["copagoVariable"].ToString()),
                finCarencia=     Convert.ToInt32(dr["finCarencia"].ToString()),
                convenio = dr["convenio"].ToString(),
                descuento =      Convert.ToInt32(dr["descuento"].ToString()),
                codPaConvenio = dr["codPaConvenio"].ToString(),
                dsPacConv= dr["dsPacConv"].ToString(),
                statPaconv= dr["statPaconv"].ToString(),
                codPacSoat = dr["codPacSoat"].ToString(),
                dsPacSoat= dr["dsPacSoat"].ToString(),
                statPacSoat= dr["statPacSoat"].ToString(),
                codpacExterno = dr["codpacExterno"].ToString(),
                dspacExter= dr["dspacExter"].ToString(),
                stapacexter= dr["stapacexter"].ToString(),
                tpPaciente= dr["tpPaciente"].ToString(),
                idPersona =     Convert.ToInt32(dr["idPersona"]),
                hojafiliacion=   Convert.ToBoolean(dr["hojafiliacion"].ToString()),
                concienteDato =  Convert.ToBoolean(dr["concienteDato"].ToString()),
                estado =        dr["estado"].ToString(),
            };
        }
        public List<T001_PACIENTE> listarPacientes()
        {
            List<T001_PACIENTE> pacientes = new List<T001_PACIENTE>();
            DataSet objects = UtilRepository.getAllData("usp_ListarPaciente");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                pacientes.Add(GetPaciente(dr));
            }
            return pacientes;
        }
        //ToDO: Terminar esto
        public T001_PACIENTE listarxIdPaciente(int id)
        {
            T001_PACIENTE paciente = new T001_PACIENTE();

            DataSet objects = UtilRepository.getDataById("usp_ListarxIdPaciente", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                paciente = GetPaciente(dr);
            }
            return paciente;
        }
        //ToDO: Terminar esto
        public T001_PACIENTE listarxDni(int dni)
        {
            T001_PACIENTE paciente = new T001_PACIENTE();

            DataSet objects = UtilRepository.getDataByDni("usp_BuscarDniPaciente", dni);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                paciente = GetPaciente(dr);
            }
            return paciente;
        }

        public T001_PACIENTE listarxNombre(string nombres)
        {
            T001_PACIENTE paciente = new T001_PACIENTE();

            DataSet objects = UtilRepository.getDataByName("usp_ListarxNombrePaciente", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                paciente = GetPaciente(dr);
            }
            return paciente;
        }

        public string eliminarPaciente(int id)
        {
            return UtilRepository.deleteById("usp_EliminarPaciente", id);
        }

        public string insertarPaciente(T001_PACIENTE paciente)
        {
            return UtilRepository.insertaActualiza("usp_InsertarPaciente", paciente, 1);
        }

        public string actualizarPaciente(T001_PACIENTE paciente)
        {
            return UtilRepository.insertaActualiza("usp_ActualizarPaciente", paciente, 2);
        }
    }
}
