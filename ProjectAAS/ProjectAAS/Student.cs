using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectAAS
{
    public class Student
    {
        private string fNumber;
        private int specialtyId;
        private string fName;
        private string mName;
        private string lName;
        private string address;
        private string phone;
        private string eMail;
        public string FNumber
        {
            get { return fNumber; }
            set { fNumber = value; }
        }
        public int SpecialtyId
        {
            get { return specialtyId; }
            set { specialtyId = value; }
        }
        public string FName
        {
            get { return fName; }
            set { fName = value; }
        }


        public string MName
        {
            get { return mName; }
            set { mName = value; }
        }
        public string LName
        {
            get { return lName; }
            set { lName = value; }
        }
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }
        public string EMail
        {
            get { return eMail; }
            set { eMail = value; }
        }
    }
}