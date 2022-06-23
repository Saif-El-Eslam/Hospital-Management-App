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
    public partial class Accountant : Form
    {
        Controller controlObj ;
        int Pas = 0;
        string type = "", fname = "";
        public Accountant(int p, string t, int phone)
        {
            
            InitializeComponent();
            controlObj = new Controller();
            Pas = p;
            type = t;
            //fname = f;
          //  MessageBox.Show
            fname = controlObj.Get_A_Name(phone);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            Loginas l = new Loginas();
            l.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Nprofile n = new Nprofile(Pas, type, fname);
            n.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Abilling n = new Abilling();
            n.Show();
        }

        private void Accountant_Load(object sender, EventArgs e)
        {

        }
    }
}
