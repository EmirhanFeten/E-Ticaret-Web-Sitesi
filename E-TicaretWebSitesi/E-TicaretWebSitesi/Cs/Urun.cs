using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_TicaretWebSitesi.Cs
{
    public class Urun
    {
        string pNo, pName, pExplanation, pPic, pPicTwo, pPicThree, pPicFour;
        int sızeId, pStock, pPrice;

        public string PNo { get => pNo; set => pNo = value; }
        public string PName { get => pName; set => pName = value; }
        public string PExplanation { get => pExplanation; set => pExplanation = value; }
        public string PPic { get => pPic; set => pPic = value; }
        public string PPicTwo { get => pPicTwo; set => pPicTwo = value; }
        public string PPicThree { get => pPicThree; set => pPicThree = value; }
        public string PPicFour { get => pPicFour; set => pPicFour = value; }
        public int SızeId { get => sızeId; set => sızeId = value; }
        public int PStock { get => pStock; set => pStock = value; }
        public int PPrice { get => pPrice; set => pPrice = value; }
    }
}