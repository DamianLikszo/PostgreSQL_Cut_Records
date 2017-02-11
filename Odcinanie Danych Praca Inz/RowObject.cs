using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Odcinanie_Danych_Praca_Inz
{
    public class RowObject
    {
        public Dictionary<string, object> aCols;

        public int count { get { return aCols.Count; } }

        public RowObject()
        {
            this.aCols = new Dictionary<string, object>();
        }

        public string sRead(string column)
        {
            return Convert.ToString(this.aCols[column]);
        }

        public void Add(string column, object obj)
        {
            aCols.Add(column, obj);
        }

        public static List<object> GetOneColumn(List<RowObject> aList, string column)
        {
            List<object> aRet = new List<object>();

            foreach (RowObject item in aList)
            {
                if (item.aCols.ContainsKey(column))
                {
                    aRet.Add(item.aCols[column]);
                }
            }

            return (aRet);
        }
    }
}
