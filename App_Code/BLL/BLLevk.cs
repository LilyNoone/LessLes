using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class BLLevk
{
    DALevk DALevk = new DALevk();
    public void insertVakkenEvk(Evk e) 
    {
        try
        {
            DALevk.insertEvkVakken(e);
        }
        catch
        {
            throw new Exception("Vakken saven gaat niet.");
        }
    }
    public IList<Evk> selectEvkVakkenPerStudent(Student s) 
    {
        IList<Evk> vakken=null;
        try
        {
            vakken=DALevk.selectEvkVakkenPerStudent(s);
        }
        catch(Exception ex)
        {
            throw new Exception(ex.Message);
        }
        return vakken;
    }

}