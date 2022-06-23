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
    public partial class Ppatient : Form
    {
        Controller controllerObj;

        public Ppatient()
        {
            InitializeComponent();
            controllerObj = new Controller();
            DataTable dt = controllerObj.SelectPatient();
            comboBox1.DataSource = dt;
            comboBox1.DisplayMember = "Phone";
        }

        private void Ppatient_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void checkedListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // by checking the bos beside each medicine , that would automatically fill the bill
            // the medicince would be fille from the med_fees relation , and we need to add table in order for the docotor to add more than 
            // one medicine 
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Text = controllerObj.getpatientName(Convert.ToInt32(comboBox1.Text)).ToString();

            textBox2.Text = controllerObj.getpatientID(Convert.ToInt32(comboBox1.Text)).ToString();

            DataTable DT = controllerObj.SelectPatientMedicine(int.Parse(comboBox1.Text));
            listBox1.DataSource = DT;
            listBox1.DisplayMember = "P_Med";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            controllerObj = new Controller();

            if (listBox1.Items.Count == 0)
            {
                MessageBox.Show("Patient has no prescribed medicine ...");
            }
            else
            {
                int sum = controllerObj.GetMedPriceSum(Convert.ToInt32(comboBox1.Text)); // the sum of the medicine price

                int result = controllerObj.Update_pPatient(Convert.ToInt32(comboBox1.Text), sum); // this is must be edited to get the value of the price to be updated
                if (result < 3)
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
}
