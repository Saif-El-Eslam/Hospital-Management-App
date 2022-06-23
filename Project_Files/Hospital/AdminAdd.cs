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
    public partial class AdminAdd : Form
    {
        Controller controllerObj;
        public AdminAdd()
        {
            InitializeComponent();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            Loginas l = new Loginas();
            l.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            controllerObj = new Controller();

            string fn = textBox1.Text;
            string mn = textBox2.Text;
            string ln = textBox3.Text;
            string bd = dateTimePicker1.Text;
            string g = comboBox1.Text;
            string ad = textBox5.Text;
             string sh = comboBox2.Text;
      
            string spec = textBox8.Text;
            if (fn == "" || mn == "" || ln == "" || bd == "" || g == "" || ad == "" || sh == "" || textBox4.Text == "" || textBox6.Text == "" || textBox7.Text == "")
            {
                MessageBox.Show("Please Fill in all the data....");

            }
            else
            {
                int s = int.Parse(textBox7.Text);
                int p = int.Parse(textBox4.Text);
                int phone = int.Parse(textBox6.Text);

                if (comboBox3.Text == "Doctor")
                {
                    int x = controllerObj.Insert_Doctor(fn, mn, ln, p, g, spec, ad, bd, phone, sh, s);
                    if (x == 0)
                        MessageBox.Show("No rows are updated!");
                    else
                        MessageBox.Show("Data updated successfully");

                }
                else if (comboBox3.Text == "Accountant")
                {
                    int x = controllerObj.Insert_Accountant(fn, mn, ln, p, g, ad, bd, phone, sh, s);
                    if (x == 0)
                        MessageBox.Show("No rows are updated!");
                    else
                        MessageBox.Show("Data updated successfully");

                }
                else if (comboBox3.Text == "Receptionist")
                {
                    // int x = controllerObj.Insert_Receptionist(fn, mn, ln, p, g, ad, bd, phone, sh, s);
                    // if (x == 0)
                    MessageBox.Show("No rows are updated!");
                    //  else
                    MessageBox.Show("Data updated successfully");

                }
                else if (comboBox3.Text == "Nurse")
                {
                    // int x = controllerObj.Insert_Nurse(fn, mn, ln, p, g, ad, bd, phone, sh, s);
                    //  if (x == 0)
                    MessageBox.Show("No rows are updated!");
                    //   else
                    MessageBox.Show("Data updated successfully");
                }
                else if (comboBox3.Text == "Pharmacist")
                {
                    // int x = controllerObj.Insert_Pharmacist(fn, mn, ln, p, g, ad, bd, phone, sh, s);
                    // if (x == 0)
                    MessageBox.Show("No rows are updated!");
                    //   else
                    MessageBox.Show("Data updated successfully");
                }
                else
                {
                    MessageBox.Show("Please Select Position");
                }
            }
        }

        private void Admin_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
            dateTimePicker1.Format = DateTimePickerFormat.Custom;
            dateTimePicker1.CustomFormat = "yyyy-MM-dd";
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
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

        private void textBox7_KeyPress(object sender, KeyPressEventArgs e)
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
