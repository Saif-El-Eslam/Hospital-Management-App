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
    public partial class Nurse : Form
    {
        Controller controlObj;
        int Pas = 0;
        string type = "", fname = "";
        public Nurse(int p, string t, int phone)
        {
            InitializeComponent();
            controlObj = new Controller();
            Pas = p;
            type = t;
            //fname = f;
            fname = controlObj.Get_N_Name(phone);
        }

        private void Nurse_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
           Nprofile n = new Nprofile(Pas, type, fname);
           n.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            Loginas l = new Loginas();
            l.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Npatient n = new Npatient();
            n.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Nroom n = new Nroom();
            n.Show();
        }
    }
}
