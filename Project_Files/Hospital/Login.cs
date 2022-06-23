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
    public partial class Login : Form
    {
        Controller controllerObj;

        public Login()
        {
            InitializeComponent();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            Loginas La = new Loginas();
            La.Show();
        }
        int x = 0;

        private void button1_Click(object sender, EventArgs e)
        {
            controllerObj = new Controller();
            string check = textBox3.Text;
            int z = 0;
            if (textBox1.Text != "Admin")
            {
                z = int.Parse(textBox1.Text);
            }
            int D = 0, N = 0, R = 0, Ph = 0, A = 0 ,Ad=0;
         

            if (check == "Doctor")
                D = controllerObj.GetDPassowrd(z);   // get the passowrds of the users 
             else if (check == "Nurse")
                N = controllerObj.GetNPassowrd(z);
             else if (check == "Receptionist")
                R = controllerObj.GetRPassowrd(z);
             else if (check == "Pharmacist") 
                Ph = controllerObj.GetPhPassowrd(z);
             else if (check == "Accountant")
                A = controllerObj.GetAPassowrd(z);
            else if (check == "Admin")
                Ad= 12345;

            if (textBox2.Text == D.ToString())
            {
                this.Hide();
                Doctor d = new Doctor(int.Parse(textBox2.Text), textBox3.Text, z);
                d.Show();
            }
            else if (textBox2.Text == N.ToString())
            {
                this.Hide();
                Nurse n = new Nurse(int.Parse(textBox2.Text), textBox3.Text, z);
                n.Show();
            }
            else if (textBox2.Text == Ph.ToString())
            {
                this.Hide();
                Pharmacist ph = new Pharmacist(int.Parse(textBox2.Text), textBox3.Text, z);
                ph.Show();
            }
            else if (textBox2.Text == R.ToString())
            {
                this.Hide();
                Receptionist r = new Receptionist(int.Parse(textBox2.Text), textBox3.Text, z);
                r.Show();
            }
            else if (textBox2.Text == A.ToString())
            {
                this.Hide();
                Accountant a = new Accountant(int.Parse(textBox2.Text), textBox3.Text, z);
                a.Show();
            }
            else if (textBox2.Text == Ad.ToString())
            {
                this.Hide();
                Admin a = new Admin();
                a.Show();
            }
            else
            {
                x++;
                if (x >= 3)
                {
                    MessageBox.Show("We have to close the application, You entered a wrong password three times ..");
                    Application.Exit();
                }
                MessageBox.Show("Wrong password or username, try again ...");
            }
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked == true)
                 textBox2.PasswordChar = '\0';
            else
                textBox2.PasswordChar = '*';
        }

        private void textBox1_KeyUp(object sender, KeyEventArgs e)
        {
            

        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
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
