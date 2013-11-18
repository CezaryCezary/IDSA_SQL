//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IDSA_SQL.DB.SQL.Files
{
    using System;
    using System.Collections.Generic;
    
    public partial class Balance
    {
        public int Id { get; set; }
        public long AssetsPrimary { get; set; }
        public long LiabilitiesPrimary { get; set; }
        public long FixedAssets { get; set; }
        public long IntangibleAssets { get; set; }
        public long TangibleFixedAssets { get; set; }
        public long LongTermReceivablesFixA { get; set; }
        public long LongTermInvestmentFixA { get; set; }
        public long OtherFixedAssets { get; set; }
        public long CurrentAssets { get; set; }
        public long Inventory { get; set; }
        public long LongTermReceivablesCurA { get; set; }
        public long LongTermInvestmentCurA { get; set; }
        public long Cash { get; set; }
        public long OtherCurrentAssets { get; set; }
        public long AssetsForSale { get; set; }
        public long Equity { get; set; }
        public long CapitalMasterFund { get; set; }
        public long ShareOfTreasuryStock { get; set; }
        public long CapitalReserveFund { get; set; }
        public long NonControllingIntrests { get; set; }
        public long SuppliesAndServicesLT { get; set; }
        public long LoansAndAdvancesLT { get; set; }
        public long OtherFinancialLT { get; set; }
        public long OtherLT { get; set; }
        public long ShortTermLiabilities { get; set; }
        public long SuppliesAndServicesST { get; set; }
        public long LoansAndAdvancesST { get; set; }
        public long OtherFinancialST { get; set; }
        public long OtherST { get; set; }
    
        public virtual Reports Reports_Id { get; set; }
    }
}
