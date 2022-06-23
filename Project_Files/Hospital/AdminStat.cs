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
    public partial class AdminStat : Form
    {
        Controller objController;
        public AdminStat()
        {
            InitializeComponent();
        }

        private void button5_Click(object sender, EventArgs e)
        { 
            this.Hide();
        }
        private void AdminStat_Load(object sender, EventArgs e)
        {
            objController = new Controller();
            this.Location = new Point(375, 170);
            DataTable dt = objController.showD();
            DataTable dt1 = objController.showN();
            DataTable dt2 = objController.showR();
            DataTable dt3 = objController.showA();
            DataTable dt4 = objController.showP();
            DataTable dt5 = objController.showPa();
            DataTable dt6 = objController.showRoom();
            DataTable dt7 = objController.showUnit();
            textBox7.Text = (dt.Rows.Count).ToString();
            textBox1.Text = (dt1.Rows.Count).ToString();
            textBox2.Text = (dt2.Rows.Count).ToString();
            textBox3.Text = (dt3.Rows.Count).ToString();
            textBox4.Text = (dt4.Rows.Count).ToString();
            textBox5.Text = (dt5.Rows.Count).ToString();
            textBox6.Text = (dt6.Rows.Count).ToString();
            textBox8.Text = (dt7.Rows.Count).ToString();
            textBox9.Text = ((dt.Rows.Count)+ (dt1.Rows.Count) + (dt2.Rows.Count) + (dt3.Rows.Count) + (dt4.Rows.Count)).ToString();
            this.Hide();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            objController = new Controller ();
            DataTable dt= objController.showD();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            objController = new Controller();
            DataTable dt = objController.showN();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }


        private void button3_Click_1(object sender, EventArgs e)
        {
            objController = new Controller();
            DataTable dt = objController.showR();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
            
        }

        private void button4_Click_1(object sender, EventArgs e)
        {
            objController = new Controller();
            DataTable dt = objController.showA();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }

        private void button6_Click_1(object sender, EventArgs e)
        {
            objController = new Controller();
            DataTable dt = objController.showP();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }

        private void button7_Click_1(object sender, EventArgs e)
        {
            objController = new Controller();
            DataTable dt = objController.showPa();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            objController = new Controller();
            DataTable dt = objController.showRoom();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            objController = new Controller();
            DataTable dt = objController.showUnit();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            objController = new Controller();
            DataTable dt = objController.showMed();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }

        private void button11_Click(object sender, EventArgs e)
        {
            objController = new Controller();
            DataTable dt = objController.showTest();
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
        }

        private void CrystalReport12_InitReport(object sender, EventArgs e)
        {

        }
    }


}
