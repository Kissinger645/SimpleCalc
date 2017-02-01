using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public float First;
    public float Second;
    public float Answer = 0;
    public string Choice;
    public List<string> Options = new List<string>() { "+", "-", "*", "/" };
    protected void Page_Load(object sender, EventArgs e)
    {
        //If Page_Load is a result of a form submission...
        if (IsPostBack)
        {
            First = float.Parse(Request.Form["First Number"]);
            Second = float.Parse(Request.Form["Second Number"]);
            Choice = Request.Form["Choice"];
            Calculate(First, Second);
            
        }
    }
    public void Calculate(float _first, float _second)
    {
        switch (Choice)
        {
            case "-":
                Answer = First - Second;
                break;
            case "*":
                Answer = First * Second;
                break;
            case "/":
                Answer = First / Second;
                break;
            default:
                Answer = First + Second;
                break;
        }
    }

}
