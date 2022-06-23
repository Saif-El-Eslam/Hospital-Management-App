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
    public partial class Rnew : Form
    {
        Controller controllerObj;

        public Rnew()
        {
            InitializeComponent();
            controllerObj = new Controller();

            DataTable dt1 = controllerObj.SelectavailableRoom();
            comboBox1.DataSource = dt1;
            comboBox1.DisplayMember = "RoomNumber";

            DataTable dt2 = controllerObj.SelectUnitstype();
            comboBox2.DataSource = dt2;
            comboBox2.DisplayMember = "UnitType";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            controllerObj = new Controller();
            if (textBox1.Text == "" || textBox2.Text == "" || textBox3.Text == "" || comboBox4.Text == "" || textBox5.Text == "" || textBox6.Text == "")
            {
                MessageBox.Show("Please Enter the whole fields");
            }
            else
            { 
                int x = controllerObj.Insert_patient(textBox1.Text, textBox2.Text, textBox3.Text, dateTimePicker1.Text, comboBox4.Text, textBox5.Text, int.Parse(textBox6.Text), dateTimePicker2.Text, comboBox1.Text, int.Parse(comboBox3.Text));
            if (x == 0)
                MessageBox.Show("No rows are updated!");
            else
                MessageBox.Show("Data updated successfully");
                }
            //patient
            //patient payment
            //patientdiagnosis
            // room
            // unit

            // by adding patient, we need to create a patient payment and diagnosis profiles with the basic inf. and NULLS for other attrributes
            // we need to use the IS_IN relation to assign unit , and decrease the availability of this unit by 1 
            // , and when being assigned to another unit by the docotr or the receptionist , increment the availability again 

            // room combobox should be for empty rooms only , and so on the units 
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void Rnew_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
            dateTimePicker1.Format = DateTimePickerFormat.Custom;
            dateTimePicker1.CustomFormat = "yyyy-MM-dd";
            dateTimePicker2.Format = DateTimePickerFormat.Custom;
            dateTimePicker2.CustomFormat = "yyyy-MM-dd";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DataTable dt3 = controllerObj.SelectUnits(comboBox2.Text);
            comboBox3.DataSource = dt3;
            comboBox3.DisplayMember = "UnitNumber";
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void textBox6_KeyPress(object sender, KeyPressEventArgs e)
        {
            Char chr = e.KeyChar;
            if (!Char.IsDigit(chr) && chr != 8)
            {
                e.Handled = true;
                MessageBox.Show("Please Enter Valid Value");
            }
        }
    }
}
