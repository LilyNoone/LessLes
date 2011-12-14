using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class DALstudent
{
    dc_databankDataContext dc = new dc_databankDataContext();

    public void insertStudent(Student s)
    {
        dc.Students.InsertOnSubmit(s);
        dc.SubmitChanges();
    }
    public Student selectStudentById(Student s) 
    {
        var student = (from studenten in dc.Students
                       where s.pk_studentID == studenten.pk_studentID
                       select studenten).Single();
        return student;
    }
}