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
    public partial class Rpatients : Form
    {
        Controller controllerObj;

        public Rpatients()
        {
            InitializeComponent();
            controllerObj = new Controller();

            DataTable dt1 = controllerObj.SelectPatient();
            comboBox3.DataSource = dt1;
            comboBox3.DisplayMember = "Phone";


            DataTable dt2 = controllerObj.SelectUnitstype();
            comboBox2.DataSource = dt2;
            comboBox2.DisplayMember = "UnitType";


        }

        private void button3_Click(object sender, EventArgs e)
        {
            //delete all profiles
            // we can't delete the patient if his payment profile is still not paid 
            controllerObj = new Controller();
            int id = controllerObj.getpatientID(int.Parse(textBox6.Text));

            int f = controllerObj.getTotalFees(id);
            int r = controllerObj.getpatientRoom(int.Parse(textBox6.Text));

            if (r > 0)
            {
                MessageBox.Show("The Patient still in room " + r );
            }
            else if (f > 0)
            {
                MessageBox.Show("The Patient Payment Acount has " + f + " to be paid..");
            }
            else
            {
                controllerObj.DeletaPatient(id);
                MessageBox.Show("The Patient Profile is deleted Successfully..");

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            // select by name or phone number whatever is easier
            textBox1.Text = controllerObj.getpatientName(Convert.ToInt32(comboBox3.Text));

            textBox2.Text = controllerObj.getpatientRoom(Convert.ToInt32(comboBox3.Text)).ToString();

            textBox4.Text = controllerObj.getpatientGender(Convert.ToInt32(comboBox3.Text));

            textBox5.Text = controllerObj.getpatientAddress(Convert.ToInt32(comboBox3.Text));

            textBox6.Text = comboBox3.Text;

            textBox7.Text = controllerObj.getpatientDateCheckIn(Convert.ToInt32(comboBox3.Text));

            textBox8.Text = controllerObj.getpatientAge(Convert.ToInt32(comboBox3.Text)).ToString();


        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void Rpatients_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            textBox5.BackColor = Color.White;
            textBox5.ReadOnly = false;
        }

        private void button7_Click(object sender, EventArgs e)
        {
            textBox6.BackColor = Color.White;
            textBox6.ReadOnly = false;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            DataTable dt3 = controllerObj.SelectUnits(comboBox2.Text);
            comboBox4.DataSource = dt3;
            comboBox4.DisplayMember = "UnitNumber";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            controllerObj = new Controller();
            int id = controllerObj.getpatientID(int.Parse(textBox6.Text));

            int x = controllerObj.Update_Rpatient(id,int.Parse(textBox6.Text), textBox5.Text, int.Parse(comboBox4.Text));
            if (x == 0)
                MessageBox.Show("No rows are updated!");
            else
                MessageBox.Show("Data updated successfully");
        }
    }
}
