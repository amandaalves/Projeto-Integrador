using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Integrador.Modelo
{
    public class Sala
    {
        public string id { get; set; }
        public string descricao { get; set; }
        public string senha { get; set; }

        public Sala()
        {
            this.id = "";
            this.descricao = "";
            this.senha = "";
        }

        public Sala(string aid, string adescricao, string asenha)
        {
            this.id = aid;
            this.descricao = adescricao;
            this.senha = asenha;
        }
    }
}