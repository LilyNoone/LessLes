using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class DALevk
{
    dc_databankDataContext dc = new dc_databankDataContext();

    public void insertEvkVakken(Evk e) 
    {
        dc.Evks.InsertOnSubmit(e);
        dc.SubmitChanges();
    }
    public IList<Evk> selectEvkVakkenPerStudent(Student s) 
    {
        var vakken = (from e in dc.Evks
                      where e.fk_studentID == s.pk_studentID
                      select e).ToList();
        return vakken;
    }

}