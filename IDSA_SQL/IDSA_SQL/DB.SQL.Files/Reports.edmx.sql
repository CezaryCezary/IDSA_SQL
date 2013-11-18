
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/19/2013 00:09:35
-- Generated from EDMX file: F:\GitRepoC#\IDSA_SQL\IDSA_SQL\IDSA_SQL\Reports.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [idsa-test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ReportsSet'
CREATE TABLE [dbo].[ReportsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Year] int  NOT NULL,
    [Quarter] smallint  NOT NULL,
    [FinancialStatmentDate] datetime  NOT NULL,
    [FinancialReportReleaseDate] datetime  NOT NULL,
    [Balance_Id_Id] int  NOT NULL,
    [IncomeStatment_Id_Id] int  NOT NULL,
    [CashFlow_Id_Id] int  NOT NULL
);
GO

-- Creating table 'BalanceSet'
CREATE TABLE [dbo].[BalanceSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AssetsPrimary] bigint  NOT NULL,
    [LiabilitiesPrimary] bigint  NOT NULL,
    [FixedAssets] bigint  NOT NULL,
    [IntangibleAssets] bigint  NOT NULL,
    [TangibleFixedAssets] bigint  NOT NULL,
    [LongTermReceivablesFixA] bigint  NOT NULL,
    [LongTermInvestmentFixA] bigint  NOT NULL,
    [OtherFixedAssets] bigint  NOT NULL,
    [CurrentAssets] bigint  NOT NULL,
    [Inventory] bigint  NOT NULL,
    [LongTermReceivablesCurA] bigint  NOT NULL,
    [LongTermInvestmentCurA] bigint  NOT NULL,
    [Cash] bigint  NOT NULL,
    [OtherCurrentAssets] bigint  NOT NULL,
    [AssetsForSale] bigint  NOT NULL,
    [Equity] bigint  NOT NULL,
    [CapitalMasterFund] bigint  NOT NULL,
    [ShareOfTreasuryStock] bigint  NOT NULL,
    [CapitalReserveFund] bigint  NOT NULL,
    [NonControllingIntrests] bigint  NOT NULL,
    [SuppliesAndServicesLT] bigint  NOT NULL,
    [LoansAndAdvancesLT] bigint  NOT NULL,
    [OtherFinancialLT] bigint  NOT NULL,
    [OtherLT] bigint  NOT NULL,
    [ShortTermLiabilities] bigint  NOT NULL,
    [SuppliesAndServicesST] bigint  NOT NULL,
    [LoansAndAdvancesST] bigint  NOT NULL,
    [OtherFinancialST] bigint  NOT NULL,
    [OtherST] bigint  NOT NULL
);
GO

-- Creating table 'IncomeStatmentSet'
CREATE TABLE [dbo].[IncomeStatmentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Sales] bigint  NOT NULL,
    [OwnSaleCosts] bigint  NOT NULL,
    [SalesCost1] bigint  NOT NULL,
    [SalesCost2] bigint  NOT NULL,
    [EarningsOnSales] bigint  NOT NULL,
    [OtherOperationalActivity1] bigint  NOT NULL,
    [OtherOperationalActivity2] bigint  NOT NULL,
    [EBIT] bigint  NOT NULL,
    [FinancialActivity1] bigint  NOT NULL,
    [FinancialActivity2] bigint  NOT NULL,
    [OtherCostOrSales] bigint  NOT NULL,
    [SalesOnEconomicActivity] bigint  NOT NULL,
    [ExceptionalOccurence] bigint  NOT NULL,
    [EarningsBeforeTaxes] bigint  NOT NULL,
    [DiscountinuedOperations] bigint  NOT NULL,
    [NetParentProfit] bigint  NOT NULL
);
GO

-- Creating table 'CashFlowSet'
CREATE TABLE [dbo].[CashFlowSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [OperatingActivitiesCF] bigint  NOT NULL,
    [Depreciation] bigint  NOT NULL,
    [ReceivablesChange] bigint  NOT NULL,
    [ObligationsStateChange] bigint  NOT NULL,
    [ReserveAndOtherChange] bigint  NOT NULL,
    [WorkingCapital] bigint  NOT NULL,
    [InvestmentCF] bigint  NOT NULL,
    [CapexIntangible] bigint  NOT NULL,
    [FinancialCF] bigint  NOT NULL,
    [SharesIssue] bigint  NOT NULL,
    [LoansAndAdvancesObtained] bigint  NOT NULL,
    [LoansAndAdvancesRepayed] bigint  NOT NULL,
    [LiabilitiesChange] bigint  NOT NULL,
    [Dividend] bigint  NOT NULL,
    [TotalCF] bigint  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ReportsSet'
ALTER TABLE [dbo].[ReportsSet]
ADD CONSTRAINT [PK_ReportsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BalanceSet'
ALTER TABLE [dbo].[BalanceSet]
ADD CONSTRAINT [PK_BalanceSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'IncomeStatmentSet'
ALTER TABLE [dbo].[IncomeStatmentSet]
ADD CONSTRAINT [PK_IncomeStatmentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CashFlowSet'
ALTER TABLE [dbo].[CashFlowSet]
ADD CONSTRAINT [PK_CashFlowSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Balance_Id_Id] in table 'ReportsSet'
ALTER TABLE [dbo].[ReportsSet]
ADD CONSTRAINT [FK_ReportsBalance]
    FOREIGN KEY ([Balance_Id_Id])
    REFERENCES [dbo].[BalanceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportsBalance'
CREATE INDEX [IX_FK_ReportsBalance]
ON [dbo].[ReportsSet]
    ([Balance_Id_Id]);
GO

-- Creating foreign key on [IncomeStatment_Id_Id] in table 'ReportsSet'
ALTER TABLE [dbo].[ReportsSet]
ADD CONSTRAINT [FK_ReportsIncomeStatment]
    FOREIGN KEY ([IncomeStatment_Id_Id])
    REFERENCES [dbo].[IncomeStatmentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportsIncomeStatment'
CREATE INDEX [IX_FK_ReportsIncomeStatment]
ON [dbo].[ReportsSet]
    ([IncomeStatment_Id_Id]);
GO

-- Creating foreign key on [CashFlow_Id_Id] in table 'ReportsSet'
ALTER TABLE [dbo].[ReportsSet]
ADD CONSTRAINT [FK_ReportsCashFlow]
    FOREIGN KEY ([CashFlow_Id_Id])
    REFERENCES [dbo].[CashFlowSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportsCashFlow'
CREATE INDEX [IX_FK_ReportsCashFlow]
ON [dbo].[ReportsSet]
    ([CashFlow_Id_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------