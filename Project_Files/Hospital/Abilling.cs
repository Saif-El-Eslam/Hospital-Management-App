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
    public partial class Abilling : Form
    {
        Controller controllerObj;

        public Abilling()
        {
            InitializeComponent();
            controllerObj = new Controller();

            DataTable dt1 = controllerObj.SelectPatient();
            comboBox3.DataSource = dt1;
            comboBox3.DisplayMember = "Phone";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // should set the payment profile to 0
            int id = controllerObj.getpatientID(Convert.ToInt32(comboBox3.Text));

            int x = controllerObj.Pay(id);
            if (x == 0)
                MessageBox.Show("No rows are updated!");
            else
                MessageBox.Show("Data updated successfully");

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void Abilling_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
            dateTimePicker1.Format = DateTimePickerFormat.Custom;
            dateTimePicker1.CustomFormat = "yyyy-MM-dd";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = controllerObj.getpatientName(Convert.ToInt32(comboBox3.Text));

            textBox9.Text = controllerObj.getpatientDateCheckIn(Convert.ToInt32(comboBox3.Text));


        }

        private void button3_Click(object sender, EventArgs e)
        {
            int id = controllerObj.getpatientID(Convert.ToInt32(comboBox3.Text));

            textBox7.Text = controllerObj.getRoomFees(id, dateTimePicker1.Text).ToString();

            controllerObj.UpdateRoomFees(id, dateTimePicker1.Text);

            textBox3.Text = controllerObj.getUnitFees(id).ToString();

            textBox5.Text = controllerObj.getMedFees(id).ToString();

            textBox6.Text = controllerObj.getTestFees(id).ToString();

            textBox8.Text = controllerObj.getTotalFees(id).ToString();
        }
    }
}
