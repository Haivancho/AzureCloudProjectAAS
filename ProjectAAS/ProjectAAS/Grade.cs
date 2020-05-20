using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
namespace ProjectAAS
{
    public class Grade
    {
        private string fNumber;
        private int subjectId;
        private int finalGrade;

        public string FNumber
        {
            get { return fNumber; }
            set { fNumber = value; }
        }
        public int SubjectId
        {
            get { return subjectId; }
            set { subjectId = value; }
        }
        public int FinalGrade
        {
            get { return finalGrade; }
            set { finalGrade = value; }
        }
    }
}
