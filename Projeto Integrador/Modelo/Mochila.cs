using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Integrador.Modelo
{
    public class Mochila
    {
        public string id { get; set; }
        public string descricao { get; set; }
        public string endereco { get; set; }
        public string usuario_id { get; set; }

        public Mochila()
        {
            this.id = "";
            this.descricao = "";
            this.endereco = "";
            this.usuario_id = "";
        }

        public Mochila(string aid, string adescricao, string aendereco, string ausuario_id)
        {
            this.id = aid;
            this.descricao = adescricao;
            this.endereco = aendereco;
            this.usuario_id = ausuario_id;
        }
    }
}