CREATE TABLE [dim].[Time] (
    [dateid]                    INT           NOT NULL,
    [Date]                      DATETIME      NULL,
    [DayOfWeekNum]              INT           NULL,
    [DayOfWeekName]             NVARCHAR (15) NULL,
    [WeekOfYearNum]             INT           NULL,
    [WeekOfMonthNum]            INT           NULL,
    [FirstDayOfMonth]           DATETIME      NULL,
    [MonthName]                 NVARCHAR (15) NULL,
    [MonthNum]                  INT           NULL,
    [CalendarQuarter]           INT           NULL,
    [CalendarYear]              INT           NULL,
    [FiscalQuarter]             INT           NULL,
    [FiscalYear]                INT           NULL,
    [DayOfMonth]                INT           NULL,
    [DayOfYear]                 INT           NULL,
    [DayOfFiscalYear]           INT           NULL,
    [WeekOfFiscalYearNum]       INT           NULL,
    [MonthOfFiscalYearNum]      INT           NULL,
    [isWeekday]                 BIT           NULL,
    [isHoliday]                 BIT           NULL,
    [isWorkingDay]              BIT           NULL,
    [DayOfWeekOccuranceInMonth] INT           NULL,
    [PayPeriodStartDate]        DATETIME      NULL,
    [PayPeriodEndDate]          DATETIME      NULL,
    CONSTRAINT [PK_dimTime] PRIMARY KEY CLUSTERED ([dateid] ASC)
);


GO

