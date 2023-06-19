CREATE TABLE [dbo].[FactOnlineSales] (
    [OnlineSalesKey]       INT           IDENTITY (1, 1) NOT NULL,
    [DateKey]              DATETIME      NOT NULL,
    [StoreKey]             INT           NOT NULL,
    [ProductKey]           INT           NOT NULL,
    [PromotionKey]         INT           NOT NULL,
    [CurrencyKey]          INT           NOT NULL,
    [CustomerKey]          INT           NOT NULL,
    [SalesOrderNumber]     NVARCHAR (20) NOT NULL,
    [SalesOrderLineNumber] INT           NULL,
    [SalesQuantity]        INT           NOT NULL,
    [SalesAmount]          MONEY         NOT NULL,
    [ReturnQuantity]       INT           NOT NULL,
    [ReturnAmount]         MONEY         NULL,
    [DiscountQuantity]     INT           NULL,
    [DiscountAmount]       MONEY         NULL,
    [TotalCost]            MONEY         NOT NULL,
    [UnitCost]             MONEY         NULL,
    [UnitPrice]            MONEY         NULL,
    [ETLLoadID]            INT           NULL,
    [LoadDate]             DATETIME      NULL,
    [UpdateDate]           DATETIME      NULL,
    CONSTRAINT [PK_FactOnlineSales_SalesKey] PRIMARY KEY CLUSTERED ([OnlineSalesKey] ASC) WITH (DATA_COMPRESSION = PAGE),
    CONSTRAINT [FK_FactOnlineSales_DimCurrency] FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey]),
    CONSTRAINT [FK_FactOnlineSales_DimCustomer] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]),
    CONSTRAINT [FK_FactOnlineSales_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([Datekey]),
    CONSTRAINT [FK_FactOnlineSales_DimProduct] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]),
    CONSTRAINT [FK_FactOnlineSales_DimPromotion] FOREIGN KEY ([PromotionKey]) REFERENCES [dbo].[DimPromotion] ([PromotionKey]),
    CONSTRAINT [FK_FactOnlineSales_DimStore] FOREIGN KEY ([StoreKey]) REFERENCES [dbo].[DimStore] ([StoreKey])
);


GO

