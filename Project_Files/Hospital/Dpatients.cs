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
    public partial class Dpatients : Form
    {
        Controller controllerObj;

        public Dpatients()
        {
            InitializeComponent();
            controllerObj = new Controller();
            DataTable dt1 = controllerObj.SelectPatient();
            comboBox1.DataSource = dt1;
            comboBox1.DisplayMember = "Phone";  /// to display the patient phones in the combo box

            
            // note that illness and notes are just a way of communiction between docotors
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            // if the checkbox = 1 then empty this section and add the bill of the patient ; it indicates that he has recieved them
               

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void Dpatients_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            controllerObj = new Controller();

            textBox1.Text = controllerObj.getpatientName(Convert.ToInt32(comboBox1.Text));

            textBox2.Text = controllerObj.getpatientID(Convert.ToInt32(comboBox1.Text)).ToString();

            textBox3.Text = controllerObj.getpatientAge(Convert.ToInt32(comboBox1.Text)).ToString();

            textBox4.Text = controllerObj.getpatientGender(Convert.ToInt32(comboBox1.Text));

            DataTable t = controllerObj.getpatientIllness(Convert.ToInt32(comboBox1.Text));
            textBox5.Text = t.Rows[0]["Illness"].ToString();

            DataTable T = controllerObj.getpatientNotes(Convert.ToInt32(comboBox1.Text));
            textBox6.Text = T.Rows[0]["Notes"].ToString();

            //textBox7.Text = controllerObj.getpatientTests(Convert.ToInt32(comboBox1.Text));

            // textBox8.Text = controllerObj.getpatientMedicine(Convert.ToInt32(comboBox1.Text));
            controllerObj = new Controller();

            DataTable dt2 = controllerObj.getpatienttests(int.Parse(textBox2.Text));
            comboBox2.DataSource = dt2;
            comboBox2.DisplayMember = "Test_Name";  /// to display the patient phones in the combo box

            DataTable dt3 = controllerObj.getPatientMed(int.Parse(textBox2.Text));
            comboBox3.DataSource = dt3;
            comboBox3.DisplayMember = "Med_Name";  /// to display the patient phones in the combo box
        }

        private void button4_Click(object sender, EventArgs e)
        {
            controllerObj = new Controller();
            if (textBox2.Text == "")
                MessageBox.Show("Please select a patient...");
            else
            {
                int result = controllerObj.UpdatePatient_D(textBox5.Text, textBox6.Text, comboBox2.Text, comboBox3.Text, int.Parse(textBox2.Text));
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

        private void button1_Click(object sender, EventArgs e)
        {
            textBox5.BackColor = Color.White;
            textBox5.ReadOnly = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox6.BackColor = Color.White;
            textBox6.ReadOnly = false;
        }
    }
}
