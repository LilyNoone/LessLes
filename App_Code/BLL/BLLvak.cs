using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class BLLvak
{
    DALstudent DALstudent = new DALstudent();
    DALvak DALvak = new DALvak();

    public IList<Vak> selectVakkenByOpleiding(Student s)
    {
        var student = DALstudent.selectStudentById(s);
        var opleidingID = student.fk_opleidingID;
        IList<Vak> vakken=null;
        if (opleidingID == 1) 
        { 
            vakken = DALvak.selectAllIMD();
        }
        if(opleidingID==2)
        {
            vakken = DALvak.selectAllIMS();
        }
        return vakken;
    }
}