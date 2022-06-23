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
    public partial class Nroom : Form
    {
        Controller controllerObj;

        public Nroom()
        {
            InitializeComponent();
            controllerObj = new Controller();
            DataTable dt = controllerObj.Selectroom();
            comboBox1.DataSource = dt;
            comboBox1.DisplayMember = "RoomNumber";  /// to display the Room Numbers in the combo box
            comboBox1.SelectedIndex = 0;
            comboBox1.Text = "1";

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void Nroom_Load(object sender, EventArgs e)
        {
            this.Location = new Point(375, 170);
            comboBox1.SelectedIndex = 0;
            comboBox1.Text = "1";

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox3.Text = comboBox1.Text;

            textBox1.Text = controllerObj.RoomType(Convert.ToInt32(comboBox1.Text));

            textBox2.Text = controllerObj.RoomAvailability(Convert.ToInt32(comboBox1.Text));
        }
    }
}
