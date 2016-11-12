using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Integrador.Acesso_Público
{
    public partial class Cadastro1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CompleteWizardStep1_Activate(object sender, EventArgs e)
        {
            Response.Redirect("~/PaginaInicial.aspx");
        }
    }
}