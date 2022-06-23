using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Windows.Forms;


namespace Hospital
{
    public class Controller
    {
        DBManager dbMan;
        public Controller()
        {
            dbMan = new DBManager();
        }
         ///////////////////////////////////////////////////   login   //////////////////////////////////////////////////////////////
        public int login()
        {
            // make hidden textbox in login window and intiate it with different numbers based on the button clicked in Loginas window
         
            return 0;
        }

        ///////////////////////////////////////////////////   general function  //////////////////////////////////////////////////////////////

        public DataTable SelectPatient()
        {
            string query = "select * from Patient";
            return dbMan.ExecuteReader(query);
        }

        public string getpatientName(int phone)
        {
            string F = " ", M = " ", L = " ", name = " ";
            string FName = "select FName from Patient where Phone =" + phone + ";";
            F = (string)dbMan.ExecuteScalar(FName);
            string MName = "select MName from Patient where Phone =" + phone + ";";
            M = (string)dbMan.ExecuteScalar(MName);
            string LName = "select LName from Patient where Phone =" + phone + ";";
            L = (string)dbMan.ExecuteScalar(LName);
            name = F + " " + M + " " + L;
            return name;
        }
        public int getpatientID(int phone)
        {
            string query = "select Pa_ID from Patient where Phone =" + phone + ";";
            return (int)dbMan.ExecuteScalar(query);
        }
        public string getpatientAge(int phone)
        {
            string query = "select BD from Patient where Phone =" + phone + ";";
            return dbMan.ExecuteScalar(query).ToString();
        }
        public string getpatientGender(int phone)
        {
            string query = "select Gender from Patient where Phone =" + phone + ";";
            return (string)dbMan.ExecuteScalar(query);
        }
        public string getpatientAddress(int phone)
        {
            string query = "select Address from Patient where Phone =" + phone + ";";
            return (string)dbMan.ExecuteScalar(query);
        }
        public DataTable getpatientIllness(int phone)
        {
            string query = "select Illness from PatientDiagnostic, Patient where Pa_ID = PD_ID and Phone =" + phone + ";";
            return dbMan.ExecuteReader(query);
        }
        public DataTable getpatientNotes(int phone)
        {
            string query = "select Notes from PatientDiagnostic, Patient where Pa_ID = PD_ID and Phone =" + phone + ";";
            return dbMan.ExecuteReader(query);
        }
        public string getpatientTests(int phone)
        {
            string query = "select P_test from Patient_Tests, Patient where Pa_ID = P_ID and Phone =" + phone + ";";
            return (string)dbMan.ExecuteScalar(query);
        }
        public string getpatientMedicine(int phone)
        {
            string query = "select P_Med from Patient_Medicine, Patient where Pa_ID = P_ID and Phone =" + phone + ";";
            return (string)dbMan.ExecuteScalar(query);
        }
        public int getpatientRoom(int phone)
        {
            string query = "select coalesce (RoomNumber,0) from Patient where Phone =" + phone + ";";
            return (int)dbMan.ExecuteScalar(query);
        }
        public DataTable getpatienttests(int id)
        {
            string query = "select * from MedicalTests where Test_Name not in (select P_Test from Patient_Tests where P_ID =" + id + ")";
            return dbMan.ExecuteReader(query);
        }
            public DataTable getPatientMed(int id)
        {
            string query = "select * from Medicine where Med_Name not in (select P_Med from Patient_Medicine where P_ID =" + id + ")";
            return dbMan.ExecuteReader(query);
        }

        public string getpatientDateCheckIn(int phone)
        {
            string query = "select DateCheckIn from Patient where Phone =" + phone + ";";
            return dbMan.ExecuteScalar(query).ToString();
        }

        public DataTable showD()
        {
            string query = "EXECUTE getDoctors;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable showN()
        {
            string query = "EXECUTE getNurses;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable showA()
        {
            string query = "EXECUTE getAccountants;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable showR()
        {
            string query = "EXECUTE getReceptionists;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable showP()
        {
            string query = "EXECUTE getPharmacists;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable showRoom()
        {
            string query = "EXECUTE getRooms;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable showUnit()
        {
            string query = "EXECUTE getUnits;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable showMed()
        {
            string query = "EXECUTE getMedicine;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable showTest()
        {
            string query = "EXECUTE getTests;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable showPa()
        {
            string query = "EXECUTE getpatients;";
            return dbMan.ExecuteReader(query);
        }

        /*******************************************************   My Profile ******************/

        public int Update_profile(string address , int phone , int password, string type, int id)
        {

            if (type == "Doctor")
            {
                string query = "Update Doctor set Address = '" + address + "', Phone = " + phone + ", Password =" + password + "where D_ID =" + id + ";";
                return dbMan.ExecuteNonQuery(query);
            }
            else if (type == "Nurse")
            {
                string query = "Update Nurse set Address = '" + address + "', Phone = " + phone + ", Password =" + password + "where N_ID =" + id + ";";
                return dbMan.ExecuteNonQuery(query);
            }
            else if (type == "Pharmacist")
            {
                string query = "Update Pharmacist set Address = '" + address + "', Phone = " + phone + ", Password =" + password + "where P_ID =" + id + ";";
                return dbMan.ExecuteNonQuery(query);
            }
            else if (type == "Receptionist")
            {
                string query = "Update Receptionist set Address = '" + address + "', Phone = " + phone + ", Password =" + password + "where R_ID =" + id + ";";
                return dbMan.ExecuteNonQuery(query);
            }
            else if (type == "Accountant")
            {
                string query = "Update Accountant set Address = '" + address + "', Phone = " + phone + ", Password =" + password + "where A_ID =" + id + ";";
                return dbMan.ExecuteNonQuery(query);
            }
            else
                return 0;

        }
        public string getName(int pas, string fname, string type)
        {
            if (type == "Doctor")
            {
                string name = " ", mname = "", lname = "";
                string query1 = "select MName from Doctor where FName = '" + fname + "' and Password =" + pas + ";";
                mname = (string)dbMan.ExecuteScalar(query1);
                string query2 = "select LName from Doctor where FName = '" + fname + "' and Password =" + pas + ";";
                lname = (string)dbMan.ExecuteScalar(query2);
                name = fname + " " + mname + " " + lname;
                return name;
            }
            else if (type == "Nurse")
            {
                string name = " ", mname = "", lname = "";
                string query1 = "select MName from Nurse where FName = '" + fname + "' and Password =" + pas + ";";
                mname = (string)dbMan.ExecuteScalar(query1);
                string query2 = "select LName from Nurse where FName = '" + fname + "' and Password =" + pas + ";";
                lname = (string)dbMan.ExecuteScalar(query2);
                name = fname + " " + mname + " " + lname;
                return name;
            }
            else if (type == "Receptionist")
            {
                string name = " ", mname = "", lname = "";
                string query1 = "select MName from Receptionist where FName = '" + fname + "' and Password =" + pas + ";";
                mname = (string)dbMan.ExecuteScalar(query1);
                string query2 = "select LName from Receptionist where FName = '" + fname + "' and Password =" + pas + ";";
                lname = (string)dbMan.ExecuteScalar(query2);
                name = fname + " " + mname + " " + lname;
                return name;
            }
            else if (type == "Pharmacist")
            {
                string name = " ", mname = "", lname = "";
                string query1 = "select MName from Pharmacist where FName = '" + fname + "' and Password =" + pas + ";";
                mname = (string)dbMan.ExecuteScalar(query1);
                string query2 = "select LName from Pharmacist where FName = '" + fname + "' and Password =" + pas + ";";
                lname = (string)dbMan.ExecuteScalar(query2);
                name = fname + " " + mname + " " + lname;
                return name;
            }
            else if (type == "Accountant")
            {
                string name = " ", mname = "", lname = "";
                string query1 = "select MName from Accountant where FName = '" + fname + "' and Password =" + pas + ";";
                mname = (string)dbMan.ExecuteScalar(query1);
                string query2 = "select LName from Accountant where FName = '" + fname + "' and Password =" + pas + ";";
                lname = (string)dbMan.ExecuteScalar(query2);
                name = fname + " " + mname + " " + lname;
                return name;
            }
            else
                return " ";

        }
        public int getID(int pas, string fname, string type)
        {
            if (type == "Doctor")
            {
                string query = "select D_ID from Doctor where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else if (type == "Nurse")
            {
                string query = "select N_ID from Nurse where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else if (type == "Pharmacist")
            {
                string query = "select P_ID from Pharmacist where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else if (type == "Receptionist")
            {
                string query = "select R_ID from Receptionist where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else if (type == "Accountant")
            {
                string query = "select A_ID from Accountant where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else
                return 0;
        }

        public string getBirthDate(int pas, string fname, string type)
        {
            if (type == "Doctor")
            {
                string query = "select BD from Doctor where FName = '" + fname + "' and Password =" + pas + ";";
                return (dbMan.ExecuteScalar(query)).ToString();
            }
            else if (type == "Nurse")
            {
                string query = "select BD from Nurse where FName = '" + fname + "' and Password =" + pas + ";";
                return (dbMan.ExecuteScalar(query)).ToString();
            }
            else if (type == "Pharmacist")
            {
                string query = "select BD from Pharmacist where FName = '" + fname + "' and Password =" + pas + ";";
                return (dbMan.ExecuteScalar(query)).ToString();
            }
            else if (type == "Receptionist")
            {
                string query = "select BD from Receptionist where FName = '" + fname + "' and Password =" + pas + ";";
                return (dbMan.ExecuteScalar(query)).ToString();
            }
            else if (type == "Accountant")
            {
                string query = "select BD from Accountant where FName = '" + fname + "' and Password =" + pas + ";";
                return (dbMan.ExecuteScalar(query)).ToString();
            }
            else
                return " ";
        }

        public string getGender(int pas, string fname, string type)
        {
            if (type == "Doctor")
            {
                string query = "select Gender from Doctor where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Nurse")
            {
                string query = "select Gender from Nurse where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Pharmacist")
            {
                string query = "select Gender from Pharmacist where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Receptionist")
            {
                string query = "select Gender from Receptionist where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Accountant")
            {
                string query = "select Gender from Accountant where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else
                return " ";
        }

        public string getAdress(int pas, string fname, string type)
        {
            if (type == "Doctor")
            {
                string query = "select Address from Doctor where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Nurse")
            {
                string query = "select Address from Nurse where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Pharmacist")
            {
                string query = "select Address from Pharmacist where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Receptionist")
            {
                string query = "select Address from Receptionist where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Accountant")
            {
                string query = "select Address from Accountant where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else
                return " ";
        }

        public int getPhoneNum(int pas, string fname, string type)
        {
            if (type == "Doctor")
            {
                string query = "select Phone from Doctor where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else if (type == "Nurse")
            {
                string query = "select Phone from Nurse where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else if (type == "Pharmacist")
            {
                string query = "select Phone from Pharmacist where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else if (type == "Receptionist")
            {
                string query = "select Phone from Receptionist where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else if (type == "Accountant")
            {
                string query = "select Phone from Accountant where FName = '" + fname + "' and Password =" + pas + ";";
                return (int)dbMan.ExecuteScalar(query);
            }
            else
                return 0;
        }

        public string getShift(int pas, string fname, string type)
        {
            if (type == "Doctor")
            {
                string query = "select Shift from Doctor where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Nurse")
            {
                string query = "select Shift from Nurse where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Pharmacist")
            {
                string query = "select Shift from Pharmacist where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Receptionist")
            {
                string query = "select Shift from Receptionist where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else if (type == "Accountant")
            {
                string query = "select Shift from Accountant where FName = '" + fname + "' and Password =" + pas + ";";
                return (string)dbMan.ExecuteScalar(query);
            }
            else
                return " ";
        }

        ///////////////////////////////////////////////////   Doctor      //////////////////////////////////////////////////////////////
        /************************************************   Dpatients  ******************/

        // select patient is in general

        public int UpdatePatient_D(string illness , string notes, string tests , string medicine, int id)
        {
            // name , id , gender, age can't be updated by  doctor
            string query1 = "Update PatientDiagnostic set Illness ='" + illness + "', notes ='" + notes + "'where PD_ID = " + id + ";";
            int x = 0;
            x = dbMan.ExecuteNonQuery(query1);
            string query2 = "insert into Patient_Medicine values (" + id + ",'" + medicine + "');";
            int y = 0;
            y = dbMan.ExecuteNonQuery(query2);
            string query3 = "insert into Patient_Tests values (" + id + ",'" + tests + "');";
            int z = 0;
            z = dbMan.ExecuteNonQuery(query3);
            return x + y + z;
        }

        ///////////////////////////////////////////////////   Nurse      //////////////////////////////////////////////////////////////
        /************************************************   Npatient  ******************/


        // select is in general functions
        public int Update_Room(int Onumber, int Nnumber, int id)
        {
            string query1 = "execute setRoomAvailYes @num = " + Onumber + ";";
            int y = dbMan.ExecuteNonQuery(query1);

            string query2 = "EXECUTE setRoomAvailNo @num = " + Nnumber + ";";
            int z = dbMan.ExecuteNonQuery(query2);

            string query3 = "Update Patient set RoomNumber =" + Nnumber + "where Pa_ID = " + id + ";";
            int x = dbMan.ExecuteNonQuery(query3);

            return x + y + z;
        }
        public DataTable SelectavailableRoom()
        {
            string query = "Execute availRoomProc ;";
            return dbMan.ExecuteReader(query);
        }
        /************************************************   Nroom ******************/
        public DataTable Selectroom()
        {
            string query = "select * from Room;";
            return dbMan.ExecuteReader(query);

        }

        public string RoomType(int Num)
        {
            string query = "select RoomType from Room where RoomNumber =" + Num + ";";
            return (string)dbMan.ExecuteScalar(query);
        }

        public string RoomAvailability(int Num)
        {
            string query = "select Availability from Room where RoomNumber =" + Num + ";";
            return dbMan.ExecuteScalar(query).ToString();
        }
        /*public int getroomcount()
        {
            string query = "select count(RoomNumber) from Room";
            return (int)dbMan.ExecuteScalar(query);
        }*/

        ///////////////////////////////////////////////////   Pharamcist      //////////////////////////////////////////////////////////////
        /************************************************   Pmedical  ******************/
        public DataTable Selectmedicine(string name)
        {
            string query = "     ";
            return dbMan.ExecuteReader(query);

        }

        public DataTable ViewAllMedicine()
        {
            string query = "     ";
            return dbMan.ExecuteReader(query);
        }

        /************************************************   Pnew  ******************/
        public int AddMed(string name, int code, int price, int unitToAdd)
        {
            string query = "insert into Medicine Values ('" + name + "'," + code + "," + price + "," + unitToAdd + ") ;";
            return dbMan.ExecuteNonQuery(query);
        }

        /************************************************   Pupdate  ******************/
        public DataTable SelectAllMed()    
        {
            string query = "select * from Medicine";
            return dbMan.ExecuteReader(query);
        }
        public int getCode(string name)
        {
            string query = "select Med_Code from Medicine where Med_Name = '" + name + "';";
            return (int)dbMan.ExecuteScalar(query);
        }
        
        public int getmedPrice(string name)
        {
            string query = "select Med_Price from Medicine where Med_Name = '" + name + "';";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int getUnitsavailable(string name)
        {
            string query = "select Units_Available from Medicine where Med_Name = '" + name + "';";
            return (int)dbMan.ExecuteScalar(query);
        }


        public int UpdateMed(string name, int price, int available)
        {
            string query = "update Medicine set Med_Price =" + price + ", Units_Available = " + available + "where Med_Name = '" + name + "';";
            return dbMan.ExecuteNonQuery(query);
        }

        /************************************************   PMedical  ******************/

        public DataTable ViewAllMed()  
        {
            string query = "Select * from Medicine";
            return dbMan.ExecuteReader(query);
        }
        public DataTable SalectMed(string name)
        {
            string query = "Select * from Medicine where Med_Name = '" + name + "';";
            return dbMan.ExecuteReader(query);
        }
        

        /************************************************   Ppatient  ******************/

        // select is in general 
        // selecy medicine in pMedical

        public DataTable SelectPatientMedicine(int phone)
        {

            // to get the values for the checkbox list ... we need to add the new tables of patient medicine and patient tests as I mentioned
            string query = "select P_Med from Patient, Medicine join Patient_Medicine on Med_Name = P_Med where Pa_ID = P_ID And Units_Available > 0 AND Phone =" + phone +";";
            return dbMan.ExecuteReader(query);

        }

        // select queries are used from General Function Section

        public int Update_pPatient(int phone, int fees)
        {
            // should update the fees based on the checkbox list of medicine
            string query1 = "update PatientPayment set Med_fees =" + fees + "where P_ID in (Select Pa_ID from Patient where Phone =" + phone + ");";
            int x = dbMan.ExecuteNonQuery(query1);

            string query2 = "update Medicine set Units_Available = (Units_Available-1) where Med_Name in (select P_Med from Patient, Medicine join Patient_Medicine on Med_Name = P_Med where Pa_ID = P_ID And Units_Available > 0 AND Phone =" + phone + ");";
            int y = dbMan.ExecuteNonQuery(query2);

            string query3 = "delete from Patient_Medicine where (P_Med in (select P_Med from Patient, Medicine join Patient_Medicine on Med_Name = P_Med where Pa_ID = P_ID And Units_Available > 0 AND Phone =" + phone + ")) and P_ID in (Select Pa_ID from Patient where Phone =" + phone + ");";
            int z = dbMan.ExecuteNonQuery(query3);

            return x + y + z;
        }

        public int GetMedPriceSum(int phone)
        {
            string query = "SELECT sum(Med_Price) FROM Medicine WHERE Med_Name IN (select P_Med from Patient, Medicine join Patient_Medicine on Med_Name = P_Med where Pa_ID = P_ID And Units_Available > 0 AND Phone =" + phone + ");";
            return (int)dbMan.ExecuteScalar(query);
        }


        ///////////////////////////////////////////////////   Accountant      //////////////////////////////////////////////////////////////
        /************************************************   Abilling ******************/

        // select is in general 
        public DataTable incUCap(int id)
        {
            string query = "select P_Unit from P_Unit where P_ID = " + id + ";";
            DataTable un = dbMan.ExecuteReader(query);
            return un;
        }
        public int Pay(int id)
        {

             string query5 = "update Unit set Capacity = (Capacity + 1) where UnitNumber in ( select P_Unit from P_Unit where P_ID="+id+ "); ";
             int v = dbMan.ExecuteNonQuery(query5);
            

            string query0 = "delete from P_Unit where P_ID = " + id + ";";
            int a = dbMan.ExecuteNonQuery(query0);

            string query00 = "delete from Patient_Room where P_ID = " + id + ";";
            int b = dbMan.ExecuteNonQuery(query00);

            string query000 = "delete from Patient_Medicine where P_ID = " + id + ";";
            int c = dbMan.ExecuteNonQuery(query000);

            string query0000 = "delete from Patient_Tests where P_ID = " + id + ";";
            int d = dbMan.ExecuteNonQuery(query0000);

            string query1 = "update PatientPayment set Room_fees = 0, Unit_fees = 0, Med_fees = 0, Test_fees = 0 where P_ID =" + id + ";";
            int x = dbMan.ExecuteNonQuery(query1);

            string query2 = "select RoomNumber from Patient where Pa_ID = " + id + ";";
            int z = (int)dbMan.ExecuteScalar(query2);

            string query3 = "execute setRoomAvailYes @num =" + z + ";";
            int w = dbMan.ExecuteNonQuery(query3);

            string query4 = "update Patient set RoomNumber = 0 where Pa_ID = " + id + ";";
            int y = dbMan.ExecuteNonQuery(query4);

            return x + y;
        }
        ///////////////////////////////////////////////////   Admin     //////////////////////////////////////////////////////////////
        public int Insert_Doctor(string fn, string mn, string ln, int p, string g, string spec, string ad, string bd, int phone, string sh, int s)
        {
            string query = "select max (D_ID) from Doctor;";
            int x = (int)dbMan.ExecuteScalar(query);
            string query5 = "Insert Into Doctor Values ('" + fn + "','" + mn + "','" + ln + "'," + (x + 1) + ","+p+",'" + g + "','" + spec + "','" + ad + "','"+ bd +"'," + phone + ",'" + sh + "','" + s + "'); ";
            int w = dbMan.ExecuteNonQuery(query5);
            return w;

        }
        public int Insert_Accountant(string fn, string mn, string ln, int p, string g, string ad, string bd, int phone, string sh, int s)
        {
            string query = "select max (A_ID) from Accountant;";
            int x = (int)dbMan.ExecuteScalar(query);
            string query5 = "Insert Into Accountant Values ('" + fn + "','" + mn + "','" + ln + "'," + (x + 1) + "," + p + ",'" + g + "','" + ad + "','" + bd + "'," + phone + ",'" + sh + "','" + s + "'); ";
            int w = dbMan.ExecuteNonQuery(query5);
            return w;

        }


         public string Get_A_Name(int phone)
        {
            string query = " Select FName From Accountant Where Phone = " + phone + ";";
            return (string)dbMan.ExecuteScalar(query);
        }
        public string Get_N_Name(int phone)
        {
            string query = " Select FName From Nurse Where Phone = " + phone + ";";
            return (string)dbMan.ExecuteScalar(query);
        }

        public string Get_D_Name(int phone)
        {
            string query = " Select FName From Doctor Where Phone = " + phone + ";";
            return (string)dbMan.ExecuteScalar(query);
        }

        public string Get_R_Name(int phone)
        {
            string query = " Select FName From Receptionist Where Phone = " + phone + ";";
            return (string)dbMan.ExecuteScalar(query);
        }

        public string Get_P_Name(int phone)
        {
            string query = " Select FName From Pharmacist Where Phone = " + phone + ";";
            return (string)dbMan.ExecuteScalar(query);
        }


        ///////////////////////////////////////////////////   Receptionist     //////////////////////////////////////////////////////////////
        /************************************************   Anew ******************/
        public int Insert_patient(string Fname, string Mname, string Lname, string BD, string Gender, string Address, int phone, string dateCheck, string room , int unit)
        {
            // that should create patient diagnosis and patient payment as well

            string query = "select max (Pa_ID) from Patient;";
            int x=  (int)dbMan.ExecuteScalar(query);

            string query5 = "Insert Into Patient Values ('" + Fname + "','" + Mname + "','" + Lname + "'," + (x + 1) + ",'" + BD + "','" + Gender + "','" + Address + "'," + phone + "," + room + ",'" + dateCheck + "'); ";
            int w= dbMan.ExecuteNonQuery(query5);
            // room
            string query1 = "Insert Into PatientDiagnostic Values (" + (x + 1) + ",' ' ,' ', ' ');";
            int m = dbMan.ExecuteNonQuery(query1);

            string query4 = "Insert Into PatientPayment Values (" + (x + 1) + ",0 ,0, 0 , 0);";
            int h = dbMan.ExecuteNonQuery(query4);

            string query2 = "Insert Into Patient_Room Values ("+(x+1)+","+room +", 0);";
            int y = dbMan.ExecuteNonQuery(query2);

            string query6 = "EXECUTE setRoomAvailNo @num =  " + room + ";";
            int q = dbMan.ExecuteNonQuery(query6);

            string query3 = "Insert Into P_Unit Values (" + (x + 1) + "," + unit + ");";
            int z = dbMan.ExecuteNonQuery(query3);

            int id = getpatientID(phone); 
            
            string query8 = "update PatientPayment set Unit_fees =  (select sum (UFees) from Unit where UnitNumber in (select P_Unit from P_Unit where P_ID =" + id + ")) where P_ID =" + id +";";
            int f = dbMan.ExecuteNonQuery(query8);

            string query7 = "EXECUTE DecUnit @Unit = " + unit + ";";
            int e = dbMan.ExecuteNonQuery(query7);

            return z + w + y + h + m + q + e + f;

        }

        public DataTable SelectUnits(string type)
        {
            string query = "select * from Unit where (Capacity > 0) and UnitType = '" + type + "';";
            return dbMan.ExecuteReader(query);
        }
        public DataTable SelectUnitstype()
        {
            string query = "select distinct UnitType from Unit where (Capacity > 0) ;";
            return dbMan.ExecuteReader(query);
        }



        /************************************************   Rpatient   ******************/

        
        public int getTotalFees(int id)
        {
            string query = "select coalesce (Unit_fees,0) + coalesce (Room_fees,0) + coalesce (Med_fees,0)+ coalesce (Test_fees,0) from PatientPayment where P_ID = " +  id + ";";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int DeletaPatient(int id)
        {
            string query1 = "delete from PatientDiagnostic where PD_ID = " + id + ";";
            int x = dbMan.ExecuteNonQuery(query1);

            string query2 = "delete from PatientPayment where P_ID = " + id + ";";
            int y = dbMan.ExecuteNonQuery(query2);

            string query3 = "delete from Patient where Pa_ID = " + id + ";";
            int z = dbMan.ExecuteNonQuery(query3);

            return x + y + z;
        }

        public int Update_Rpatient(int id, int phone, string address, int unit)
        {
            string query1 = "update Patient Set Phone = " + phone + ", Address = '" + address + "' where Pa_ID = " + id + ";";
            int y = dbMan.ExecuteNonQuery(query1);

            string query2 = "Insert Into P_Unit Values (" + id + "," + unit + ");";
            int z = dbMan.ExecuteNonQuery(query2);

            string query3 = "EXECUTE DecUnit @Unit = " + unit + ";";
            int x = dbMan.ExecuteNonQuery(query3);

            string query4 = "update PatientPayment set Unit_fees =  (select sum (UFees) from Unit where UnitNumber in (select P_Unit from P_Unit where P_ID =" + id + ")) where P_ID =" + id + ";";
            int f = dbMan.ExecuteNonQuery(query4);

            return x + z + y;
        }

        /************************************************   Apatient ******************/

        // select is in general 

        public int getRoomFees(int id, string date)
        {
            string query1 = "select datediff(day, (select DateCheckIn from Patient where Pa_ID =" + id + "),'" + date + "')";
            int days = (int)dbMan.ExecuteScalar(query1);

            string query2 = "update Patient_Room set Ndays =" + days + ";";
            int x = dbMan.ExecuteNonQuery(query2);

            string query3 = "select coalesce (RoomNumber,0) from Patient where Pa_ID = " + id + ";";
            int rn = (int)dbMan.ExecuteScalar(query3);

            if (rn == 0)
            {
                return 0;
            }
            string query4 = "select RFees from Room where RoomNumber = " + rn + ";";
            int y = (int)dbMan.ExecuteScalar(query4);

            return (days * y);
        }

        public int getUnitFees(int id)
        {
            string query = "select coalesce (Unit_fees,0) from PatientPayment where P_ID = " + id + ";";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int getMedFees(int id)
        {
            string query = "select coalesce (Med_fees,0) from PatientPayment where P_ID = " + id + ";";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int getTestFees(int id)
        {
            string query = "select coalesce (Test_fees,0) from PatientPayment where P_ID = " + id + ";";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int UpdateRoomFees(int id, string date)
        {
            int rf = getRoomFees(id, date);
            string query = "update PatientPayment set Room_fees = " + rf + " where P_ID =" + id + ";";
            return (int)dbMan.ExecuteNonQuery(query);
        }
        /************************************************   Passowrds ******************/


        public int GetDPassowrd(int phone)
        {
            string query = "select Password from Doctor where Phone = '" + phone + "';";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int GetNPassowrd(int phone)
        {
            string query = "select Password from Nurse where Phone = '" + phone + "';";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int GetPhPassowrd(int phone)
        {
            string query = "select Password from Pharmacist where Phone = '" + phone + "';";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int GetRPassowrd(int phone)
        {
            string query = "select Password from Receptionist where Phone = '" + phone + "';";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int GetAPassowrd(int phone)
        {
            string query = "select Password from Accountant where Phone = '" + phone + "';";
            return (int)dbMan.ExecuteScalar(query);
        }

    }
}
