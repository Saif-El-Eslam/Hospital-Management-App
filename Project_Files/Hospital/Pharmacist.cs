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
    public partial class Pharmacist : Form
    {
        Controller controlObj;
        int Pas = 0;
        string type = "", fname = "";
        public Pharmacist(int p, string t, int phone )
        {
            InitializeComponent();
            controlObj = new Controller();
            Pas = p;
            type = t;
            //fname = f;
            fname = controlObj.Get_P_Name(phone);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
           /* Pupdate.ActiveForm.Hide();
            Pnew.ActiveForm.Hide();
            Ppatient.ActiveForm.Hide();
            Nprofile.ActiveForm.Hide();*/
            
            Loginas l = new Loginas();
            l.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Nprofile n = new Nprofile(Pas, type, fname);
           n.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Ppatient n = new Ppatient();
            n.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Pmedical n = new Pmedical();
            n.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Pnew n = new Pnew();
            n.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Pupdate n = new Pupdate();
            n.Show();
        }

        private void Pharmacist_Load(object sender, EventArgs e)
        {

        }
    }
}
