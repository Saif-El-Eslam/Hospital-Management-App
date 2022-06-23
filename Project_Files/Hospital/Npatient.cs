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
    public partial class Npatient : Form
    {
        Controller controllerObj;

        public Npatient()
        {
            InitializeComponent();
            controllerObj = new Controller();
            DataTable dt1 = controllerObj.SelectPatient();
            comboBox1.DataSource = dt1;
            comboBox1.DisplayMember = "Phone";  /// to display the patient IDs in the combo box

            DataTable dt2 = controllerObj.SelectavailableRoom();
            comboBox2.DataSource = dt2;
            comboBox2.DisplayMember = "RoomNumber";
        }

        private void Npatient_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox8.BackColor = Color.White;
            textBox8.ReadOnly = false; 
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DataTable dt2 = controllerObj.SelectavailableRoom();
            comboBox2.DataSource = dt2;
            comboBox2.DisplayMember = "RoomNumber";

            textBox1.Text = controllerObj.getpatientName(Convert.ToInt32(comboBox1.Text));

            textBox2.Text = controllerObj.getpatientID(Convert.ToInt32(comboBox1.Text)).ToString();

            textBox3.Text = controllerObj.getpatientAge(Convert.ToInt32(comboBox1.Text)).ToString();

            textBox4.Text = controllerObj.getpatientGender(Convert.ToInt32(comboBox1.Text));

            textBox5.Text = controllerObj.getpatientAddress(Convert.ToInt32(comboBox1.Text));

            textBox6.Text = comboBox1.Text;

            //textBox7.Text = " ";

            textBox8.Text = controllerObj.getpatientRoom(Convert.ToInt32(comboBox1.Text)).ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int result = controllerObj.Update_Room(Convert.ToInt32(textBox8.Text), Convert.ToInt32(comboBox2.Text), Convert.ToInt32(textBox2.Text));
            if (result == 0)
            {
                MessageBox.Show("No rows are updated");
            }
            else
            {
                MessageBox.Show("The Data is updated successfully");
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
