using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calculadora
{
    public partial class codigo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool isValid = true;

            if (string.IsNullOrWhiteSpace(txtEspejo.Text))
            {
                lblValidacionEspejo.Text = "*Este campo es obligatorio";
                isValid = false;
                lblResultado.Text = "";
            }
            else
            {
                lblValidacionEspejo.Text = "";
            }

            if (string.IsNullOrWhiteSpace(txtEspaciado.Text))
            {
                lblValidacionEspaciado.Text = "*Este campo es obligatorio";
                isValid = false;
                lblResultado.Text = "";
            }
            else
            {
                lblValidacionEspaciado.Text = "";
            }

            if (!isValid)
            {
                return;
            }

            try
            {
                double espejo = double.Parse(txtEspejo.Text);
                double espaciado = double.Parse(txtEspaciado.Text);
                double resultado;

                resultado = espejo - ((espaciado * 2) + 3);
                lblResultado.Text = resultado.ToString() + " cm";
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void botonReinicio_Click(object sender, EventArgs e)
        {
            txtEspejo.Text = "";
            txtEspaciado.Text = "";
            lblResultado.Text = "";
            lblValidacionEspejo.Text = "";
            lblValidacionEspaciado.Text = "";
        }
    }
}