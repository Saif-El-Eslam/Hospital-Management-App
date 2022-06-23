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
    public partial class Admin : Form
    {
        public Admin()
        {
            InitializeComponent();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            Loginas l = new Loginas();
            l.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AdminStat n = new AdminStat();
            n.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            AdminAdd n = new AdminAdd();
            n.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form1 n = new Form1();
            n.Show();
        }
    }
}
