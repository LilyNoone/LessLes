using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for BLLstudent
/// </summary>
public class BLLstudent
{
    DALstudent DALstudent = new DALstudent();

    public void insertStudent(Student s)
    {
        DALstudent.insertStudent(s);
    }

    public string getMD5Hash(string passwd)
    {
        MD5CryptoServiceProvider x = new MD5CryptoServiceProvider();
        byte[] bs = Encoding.UTF8.GetBytes(passwd);
        bs = x.ComputeHash(bs);
        StringBuilder str = new StringBuilder();
        foreach (byte b in bs)
        {
            str.Append(b.ToString("x2").ToLower());
        }
        string password = str.ToString();
        return password;
    }


}