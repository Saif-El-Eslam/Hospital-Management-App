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
    public partial class Pmedical : Form
    {
        Controller controllerObj;

        public Pmedical()
        {
            InitializeComponent();
            controllerObj = new Controller();
            DataTable dt = controllerObj.SelectAllMed();
            comboBox1.DataSource = dt;
            comboBox1.DisplayMember = "Med_Name";  /// to display the patient IDs in the combo box

        }

        private void Pmedical_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DataTable dt = controllerObj.SalectMed(comboBox1.Text);
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataTable dt = controllerObj.ViewAllMed();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }
    }
}
