using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_student_s_selectie_opleidingsonderdeel : System.Web.UI.Page
{
    BLLvak BLLvak = new BLLvak();
    private List<int> vakkenIDs = new List<int>();

    protected void Page_Load(object sender, EventArgs e)
    {
        // loopt alle vakken uit
        if (!IsPostBack)
        {
            // checklist vullen met vakken
            Student student = new Student();
            student.pk_studentID = 1;
            var data = BLLvak.selectVakkenByOpleiding(student);
            checkVakken.DataSource = data;
            checkVakken.DataValueField = "pk_vakID";
            checkVakken.DataTextField = "vakNaam";
            checkVakken.DataBind();
        }
        /*
        string strchklist = "";
        foreach (ListItem li in checkVakken.Items)
        {
            if (li.Selected)
            {
                strchklist += Convert.ToString(li.Value) + " ";
                vakkenIDs.Add(Convert.ToInt16(li.Value));
            }
        }
        lblFeedback.Text = strchklist;
         * 
         * */
        Vak vak = new Vak();
        // vakken eruit halen
        var values = checkVakken.Items.Cast<ListItem>().Where(n => n.Selected).Select(n => n.Value).ToList();
        foreach (var i in values)
        {
            lblFeedback.Text += i;
        }
    }
   
    protected void btnOk_Click1(object sender, EventArgs e)
    {
        Vak vak = new Vak();
        // vakken eruit halen
        var values = checkVakken.Items.Cast<ListItem>().Where(n => n.Selected).Select(n => n.Value).ToList();
        foreach(var i in values) 
        {
            lblFeedback.Text += i;
        }

        foreach (ListItem listItem in checkVakken.Items)
        {
            if (listItem.Selected)
            {
                vak.pk_vakID = Convert.ToInt16(listItem.Value);
                lblFeedback.Text += Convert.ToInt16(listItem.Value);

            }
            else 
            { 
                //do something else 
            }
        }
        
        
        // DOEL: alle vakken met tabel moeten worden aangemaakt



        // vakken uitlussen




        // alle titels + tabellen genereren
    }
    public void MakeEVKinput(String title) 
    {
        Label lblTitel = new Label();
        lblTitel.Text = title;

        Repeater rptEVK = new Repeater();
        TextBox txtExternVakVaam = new TextBox();

    }

    public void checkVakken_SelectedIndexChanged(Object sender, EventArgs e)
    {
        Vak vak = new Vak();
        // vakken eruit halen
        var values = checkVakken.Items.Cast<ListItem>().Where(n => n.Selected).Select(n => n.Value).ToList();
        foreach (var i in values)
        {
            lblFeedback.Text += i;
        }
        string strchklist = "";

        foreach (ListItem li in checkVakken.Items)
        {
            if (li.Selected)
            {
                strchklist += Convert.ToString(li.Value) + " ";
                vakkenIDs.Add(Convert.ToInt16(li.Value));
            }
        }
        lblVakkenID.Text = strchklist;
        
    }
}
