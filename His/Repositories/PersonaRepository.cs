using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Threading.Tasks;

namespace HistClinica.Repositories.Repositories
{
    public class PersonaRepository 
    {
        private static UtilRepository UtilRepository = new UtilRepository();
        public static T000_PERSONA GetPersona(DataRow dr)
        {
            return _ = new T000_PERSONA
            {
                apePaterno =    dr["apePaterno"].ToString(),
                apeMaterno =    dr["apeMaterno"].ToString(),
                nombres=        dr["nombres"].ToString(),
                idtpDocumento=  Convert.ToInt32(dr["idtpDocumento"].ToString()),
                dniPersona=     Convert.ToInt32(dr["dniPersona"].ToString()),
                idSexo=         Convert.ToInt32(dr["idSexo"].ToString()),
                fecNacimiento=  dr["fecNacimiento"].ToString(),
                idEstCivil=     Convert.ToInt32(dr["idEstCivil"].ToString()),
                idOcupacion=    Convert.ToInt32(dr["idOcupacion"].ToString()),
                domiFiscal=     dr["domiFiscal"].ToString(),
                telefono=       dr["telefono"].ToString(),
                celular=        dr["celular"].ToString(),
                correo=         dr["correo"].ToString(),

                //idPersona =     Convert.ToInt32(dr["idPersona"]),
                //estado =        dr["estado"].ToString(),
                //centroEduca=    dr["centroEduca"].ToString(),
                //condicionRuc=   dr["condicionRuc"].ToString(),
                //edad=           Convert.ToInt32(dr["edad"].ToString()),
                //estadoRuc=      dr["estadoRuc"].ToString(),
                //fotografia=     dr["fotografia"].ToString(),
                //idciaSeguro=    Convert.ToInt32(dr["idciaSeguro"].ToString()),
                //iddatoSiteds=   Convert.ToInt32(dr["iddatoSiteds"].ToString()),
                //idemprConvenio= Convert.ToInt32(dr["idemprConvenio"].ToString()),
                //idEtnico=       Convert.ToInt32(dr["idEtnico"].ToString()),
                //idFactorrh=     Convert.ToInt32(dr["idFactorrh"].ToString()),
                //idgpoSangre=    Convert.ToInt32(dr["idgpoSangre"].ToString()),
                //idGrdInstruc=   Convert.ToInt32(dr["idGrdInstruc"].ToString()),
                //idParentesco=   Convert.ToInt32(dr["idParentesco"].ToString()),
                //idReligion=     Convert.ToInt32(dr["idReligion"].ToString()),
                //idtipoIafa=     Convert.ToInt32(dr["idtipoIafa"].ToString()),
                //idtipoVia=      Convert.ToInt32(dr["idtipoVia"].ToString()),
                //idUbigeoNace=   Convert.ToInt32(dr["idUbigeoNace"].ToString()),
                //idUbigeoResi=   Convert.ToInt32(dr["idUbigeoResi"].ToString()),
                //interior=       Convert.ToInt32(dr["interior"].ToString()),
                //manzana=        Convert.ToInt32(dr["manzana"].ToString()),
                //nombreVia=      dr["nombreVia"].ToString(),
                //nroBlock=       Convert.ToInt32(dr["nroBlock"].ToString()),
                //nroDpto=        Convert.ToInt32(dr["nroDpto"].ToString()),
                //nroEtapa=       Convert.ToInt32(dr["nroEtapa"].ToString()),
                //nroKm=          Convert.ToInt32(dr["nroKm"].ToString()),
                //nroLote=        Convert.ToInt32(dr["nroLote"].ToString()),
                //nroRuc=         Convert.ToInt32(dr["nroRuc"].ToString()),
                //nroVia=         Convert.ToInt32(dr["nroVia"].ToString()),
                //razonSocial=    dr["razonSocial"].ToString(),
                //tpPersona =     Convert.ToInt32(dr["tpPersona"].ToString())
            };
        }
        public List<T000_PERSONA> listarPersonas()
        {
            List<T000_PERSONA> personas = new List<T000_PERSONA>();
            DataSet objects = UtilRepository.getAllData("usp_ListarPersona");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                personas.Add(GetPersona(dr));
            }
            return personas;
        }

        public T000_PERSONA listarxIdPersona(int id)
        {
            T000_PERSONA persona = new T000_PERSONA();

            DataSet objects = UtilRepository.getDataById("usp_listarxIdPersona", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                persona = GetPersona(dr);
            }
            return persona;
        }

        public string eliminarPersona(int id)
        {
            return UtilRepository.deleteById("usp_EliminarPersona", id);
        }

        public string insertarPersona(T000_PERSONA persona)
        {
            return UtilRepository.insertaActualiza("usp_InsertarPersona", persona, 1);
        }

        public string actualizarPersona(T000_PERSONA persona)
        {
            return UtilRepository.insertaActualiza("usp_ActualizarPersona", persona, 2);
        }
    }
}