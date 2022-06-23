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
    public partial class Nprofile : Form
    {
        Controller controllerObj;
        int Pas = 0;
        string type = "", fname = "";
        public Nprofile(int p, string t, string f)
        {
            InitializeComponent();
            Pas = p;
            type = t;
            fname = f;
        }

        private void Nprofile_Load(object sender, EventArgs e)
        {
            controllerObj = new Controller();
            this.Location = new Point(375, 170);
            textBox1.Text = controllerObj.getName(Pas,fname,type);
            textBox2.Text = (controllerObj.getID(Pas, fname, type)).ToString();
            textBox3.Text = controllerObj.getBirthDate(Pas, fname, type);
            textBox4.Text = controllerObj.getGender(Pas, fname, type);
            textBox5.Text = controllerObj.getAdress(Pas, fname, type);
            textBox6.Text = controllerObj.getPhoneNum(Pas, fname, type).ToString();
            textBox7.Text = controllerObj.getShift(Pas, fname, type);
            textBox8.Text = Pas.ToString();

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox5.BackColor = Color.White;
            textBox5.ReadOnly = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox6.BackColor = Color.White;
            textBox6.ReadOnly = false;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox8.BackColor = Color.White;
            textBox8.ReadOnly = false;
        }

        private void button1_Click(object sender, EventArgs e)   /// we need to make validation if we add only in 1tex box not all of them 
        {
            int result = controllerObj.Update_profile(textBox5.Text, Convert.ToInt32(textBox6.Text), Convert.ToInt32(textBox8.Text), type, int.Parse(textBox2.Text));
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
}
