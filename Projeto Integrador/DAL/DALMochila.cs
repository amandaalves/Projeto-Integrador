using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projeto_Integrador.DAL
{
    public class DALMochila
    {
        string connectionString = "";

        public DALMochila()
        {
            connectionString = ConfigurationManager.ConnectionStrings["ImproveConnectionString"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Mochila> SelectAll()
        {
            // Variavel para armazenar um livro
            Modelo.Mochila aMochila;
            // Cria Lista Vazia
            List<Modelo.Mochila> aListMochila = new List<Modelo.Mochila>();
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand cmd = conn.CreateCommand();
            // define SQL do comando
            cmd.CommandText = "Select * from Mochila";
            // Executa comando, gerando objeto DbDataReader
            SqlDataReader dr = cmd.ExecuteReader();
            // Le titulo do livro do resultado e apresenta no segundo rótulo
            if (dr.HasRows)
            {
                while (dr.Read()) // Le o proximo registro
                {
                    // Cria objeto com dados lidos do banco de dados
                    aMochila = new Modelo.Mochila(
                        dr["id"].ToString(),
                        dr["descricao"].ToString(),
                        dr["endereco"].ToString(),
                        dr["usuario_id"].ToString()
                        );
                    // Adiciona o livro lido à lista
                    aListMochila.Add(aMochila);
                }
            }
            // Fecha DataReader
            dr.Close();
            // Fecha Conexão
            conn.Close();
            return aListMochila;
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void Delete(Modelo.Mochila obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("DELETE FROM Mochila WHERE id = @id", conn);
            cmd.Parameters.AddWithValue("@id", obj.id);

            // Executa Comando
            cmd.ExecuteNonQuery();
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void Insert(Modelo.Mochila obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("INSERT INTO Mochila(descricao, endereco, usuario_id) VALUES (@descricao, @endereco, @usuario_id)", conn);
            cmd.Parameters.AddWithValue("@descricao", obj.descricao);
            cmd.Parameters.AddWithValue("@endereco", obj.endereco);
            cmd.Parameters.AddWithValue("@usuario_id", obj.usuario_id);

            // Executa Comando
            cmd.ExecuteNonQuery();
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public void Update(Modelo.Mochila obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("UPDATE Mochila SET descricao = @descricao, endereco = @endereco, usuario_id = @usuario_id WHERE id = @id", conn);
            cmd.Parameters.AddWithValue("@descricao", obj.descricao);
            cmd.Parameters.AddWithValue("@endereco", obj.endereco);
            cmd.Parameters.AddWithValue("@usuario_id", obj.usuario_id);

            // Executa Comando
            cmd.ExecuteNonQuery();
        }
    }
}