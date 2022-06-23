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
    public partial class Pnew : Form
    {
        Controller controllerObj;

        public Pnew()
        {
            InitializeComponent();
        }

        private void Pnew_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            controllerObj = new Controller();
            int result = controllerObj.AddMed(textBox3.Text, Convert.ToInt32(textBox4.Text), Convert.ToInt32(textBox5.Text), Convert.ToInt32(textBox1.Text));
            if (result == 0)
            {
                MessageBox.Show("No rows are updated");
            }
            else
            {
                MessageBox.Show("The Data is updated successfully");
            }
        }
    }
}
