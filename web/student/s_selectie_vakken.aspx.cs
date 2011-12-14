using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_student_s_selectie_vakken : System.Web.UI.Page
{
    private BLLvak BLLvak = new BLLvak();
    private BLLevk BLLevk = new BLLevk();
    private Student student = new Student();
    private List<string> values = new List<string> { };
    private Vak vak = new Vak();
    private Evk evk = new Evk();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            student.pk_studentID = 1;
            var data = BLLvak.selectVakkenByOpleiding(student);
            checkVakken.DataSource = data;
            checkVakken.DataValueField = "pk_vakID";
            checkVakken.DataTextField = "vakNaam";
            checkVakken.DataBind();
            
        }
        // vakkenID eruit halen
        values = checkVakken.Items.Cast<ListItem>().Where(n => n.Selected).Select(n => n.Value).ToList();

        // wanneer de student bestaat in evk >>> lussen over items >>> select.
        student.pk_studentID=2;
        IList<Evk> vakkenStudent=BLLevk.selectEvkVakkenPerStudent(student);
        int aanalVakken = checkVakken.Items.Count+1;
        if(vakkenStudent.Count!=0)
        {
            foreach (var i in checkVakken.Items) 
            { 

            }
        }
       
       

       
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        foreach (var i in values)
        {
            Evk evk = new Evk();
            lblFeeback.Text += i;
            evk.fk_studentID = 1;
            evk.fk_vakID = Convert.ToInt16(i);
            try
            {
                BLLevk.insertVakkenEvk(evk);
                lblFeeback.Text="bewaard, klik op volgonde om je evk informatie aan te vullen.";
                lblFeeback.Style.Add("Color","green");
            }
            catch(Exception ex)
            {
                lblFeeback.Text=ex.Message.ToString();
                lblFeeback.Style.Add("Color","red");
            }
        }
    }

}