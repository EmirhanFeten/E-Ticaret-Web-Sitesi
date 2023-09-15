using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_TicaretWebSitesi.Cs
{
    public class Uye
    {
        string mName, mSName, mUserName, mPsw, mMail;

        public string MName { get => mName; set => mName = value; }
        public string MSName { get => mSName; set => mSName = value; }
        public string MUserName { get => mUserName; set => mUserName = value; }
        public string MPsw { get => mPsw; set => mPsw = value; }
        public string MMail { get => mMail; set => mMail = value; }
    }
}