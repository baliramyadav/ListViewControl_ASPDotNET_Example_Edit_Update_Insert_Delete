using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace ListViewControl_Examplee
{
    public class ReadCS
    {
        public static string ConStr
        {
            get { return ConfigurationManager.ConnectionStrings["cs"].ConnectionString; }
        }
    }
}