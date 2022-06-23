using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hospital
{
    public partial class Doctor : Form
    {
        Controller controlObj;
        int Pas = 0;
        string type = "", fname = "";
        public Doctor(int p, string t, int phone)
        {
            InitializeComponent();
            controlObj = new Controller();
            Pas = p;
            type = t;
            // fname = f;
            fname = controlObj.Get_D_Name(phone);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
           
            Loginas l = new Loginas();
            l.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Nprofile n = new Nprofile(Pas,type,fname);
            n.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Dpatients n = new Dpatients();
            n.Show();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Doctor_Load(object sender, EventArgs e)
        {

        }
    }
}
