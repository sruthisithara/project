using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

/// <summary>
/// Summary description for validations
/// </summary>
public class validations
{
    public bool isValidEmail(string inputEmail)
    {

        Regex re = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
        Match match = re.Match(inputEmail);
        if (match.Success)
            return false;
        else
            return true;
    }
    public bool IsAllDigits(string s)
    {
        foreach (char c in s)
        {
            if (!Char.IsDigit(c))
                return true;
        }
        return false;
    }
    public bool IsAllLettersOrDigits(string s)
    {
        foreach (char c in s)
        {
            if (!Char.IsLetterOrDigit(c))
                return false;
        }
        return true;

    }
    public bool IsAllLetters(string s)
    {
        foreach (char c in s)
        {
            if (!Char.IsLetter(c))
                return false;
        }
        return true;
    }
    public bool IsBlank(string blank)
    {
        if (blank == "")
        {
            return true;
        }
        return false;
    }
    public void cleartextBoxes(Control Parent)
    {
        foreach (Control x in Parent.Controls)
        {
            if (x.GetType() == typeof(TextBox))
            {
                ((TextBox)(x)).Text = "";

            }
            if (x.HasControls())
            {
                cleartextBoxes(x);
            }
        }
    }
}