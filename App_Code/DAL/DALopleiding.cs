using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DALopleiding
/// </summary>
public class DALopleiding
{
    dc_databankDataContext dc = new dc_databankDataContext();

    public IList<tblOpleiding> selectAll()
    {
        var result = (from o in dc.tblOpleidings
                      select o).ToList();
        return result;
    }
}