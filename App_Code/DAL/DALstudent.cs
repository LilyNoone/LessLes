using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DALstudent
/// </summary>
public class DALstudent
{
    dc_databankDataContext dc = new dc_databankDataContext();

    public void insertStudent(tblStudent s)
    {
        dc.tblStudents.InsertOnSubmit(s);
        dc.SubmitChanges();
    }
}