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
    public partial class Pupdate : Form
    {
        Controller controllerObj;

        public Pupdate()
        {
            InitializeComponent();
            controllerObj = new Controller();
            DataTable dt = controllerObj.SelectAllMed();
            comboBox1.DataSource = dt;
            comboBox1.DisplayMember = "Med_Name";  /// to display the patient IDs in the combo box

        }

        private void Pupdate_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox3.Text = comboBox1.Text;

            textBox4.Text = controllerObj.getCode(textBox3.Text).ToString();

            textBox5.Text = controllerObj.getmedPrice(textBox3.Text).ToString();

            textBox6.Text = controllerObj.getUnitsavailable(textBox3.Text).ToString();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            int result = controllerObj.UpdateMed(textBox3.Text, Convert.ToInt32(textBox5.Text), Convert.ToInt32(textBox6.Text));
            if (result == 0)
            {
                MessageBox.Show("No rows are updated");
            }
            else
            {
                MessageBox.Show("The Data is updated successfully");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox5.BackColor = Color.White;
            textBox5.ReadOnly = false;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox6.BackColor = Color.White;
            textBox6.ReadOnly = false;
        }
    }
}
