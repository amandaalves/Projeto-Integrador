using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Integrador.Modelo
{
    public class Usuario
    {
        public string id { get; set; }
        public string nome { get; set; }
        public DateTime dataDeNascimento { get; set; }
        public string enderecoFoto { get; set; }

        public Usuario()
        {
            this.id = "";
            this.nome = "";
            this.dataDeNascimento = DateTime.MinValue;
            this.enderecoFoto = "";
        }

        public Usuario(string aid, string anome, DateTime adataDeNascimento, string aenderecoFoto)
        {
            this.id = aid;
            this.nome = anome;
            this.dataDeNascimento = adataDeNascimento;
            this.enderecoFoto = aenderecoFoto;
        }
    }
}