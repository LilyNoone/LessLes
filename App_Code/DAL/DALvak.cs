using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DALvak
{
    dc_databankDataContext dc = new dc_databankDataContext();

    public IList<Vak> selectAllIMD()
    {
        var result = (from o in dc.Vaks
                      join ov in dc.OpleidingVaks 
                      on o.pk_vakID equals ov.fk_vakID
                      where ov.fk_opleidingID == 1
                      select o).ToList();
        return result;
    }
    public IList<Vak> selectAllIMS()
    {
        var result = (from o in dc.Vaks
                      join ov in dc.OpleidingVaks
                      on o.pk_vakID equals ov.fk_vakID
                      where ov.fk_opleidingID == 2
                      select o).ToList();
        return result;
    }
}