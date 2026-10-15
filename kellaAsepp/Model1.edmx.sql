
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/15/2026 12:31:20
-- Generated from EDMX file: C:\Users\opilane\source\repos\kellaAsepp\kellaAsepp\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Model1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Entity1Entity2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entity2Set] DROP CONSTRAINT [FK_Entity1Entity2];
GO
IF OBJECT_ID(N'[dbo].[FK_Entity1Entity3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entity3Set] DROP CONSTRAINT [FK_Entity1Entity3];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Entity1Set]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entity1Set];
GO
IF OBJECT_ID(N'[dbo].[Entity2Set]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entity2Set];
GO
IF OBJECT_ID(N'[dbo].[Entity3Set]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entity3Set];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Entity1Set'
CREATE TABLE [dbo].[Entity1Set] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Entity2Set'
CREATE TABLE [dbo].[Entity2Set] (
    [kasutajaId] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [Id] nvarchar(max)  NOT NULL,
    [Entity1_Id] int  NOT NULL
);
GO

-- Creating table 'Entity3Set'
CREATE TABLE [dbo].[Entity3Set] (
    [tooId] int IDENTITY(1,1) NOT NULL,
    [tooNimi] nvarchar(max)  NOT NULL,
    [Id] nvarchar(max)  NOT NULL,
    [Entity1_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Entity1Set'
ALTER TABLE [dbo].[Entity1Set]
ADD CONSTRAINT [PK_Entity1Set]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [kasutajaId] in table 'Entity2Set'
ALTER TABLE [dbo].[Entity2Set]
ADD CONSTRAINT [PK_Entity2Set]
    PRIMARY KEY CLUSTERED ([kasutajaId] ASC);
GO

-- Creating primary key on [tooId] in table 'Entity3Set'
ALTER TABLE [dbo].[Entity3Set]
ADD CONSTRAINT [PK_Entity3Set]
    PRIMARY KEY CLUSTERED ([tooId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Entity1_Id] in table 'Entity2Set'
ALTER TABLE [dbo].[Entity2Set]
ADD CONSTRAINT [FK_Entity1Entity2]
    FOREIGN KEY ([Entity1_Id])
    REFERENCES [dbo].[Entity1Set]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Entity1Entity2'
CREATE INDEX [IX_FK_Entity1Entity2]
ON [dbo].[Entity2Set]
    ([Entity1_Id]);
GO

-- Creating foreign key on [Entity1_Id] in table 'Entity3Set'
ALTER TABLE [dbo].[Entity3Set]
ADD CONSTRAINT [FK_Entity1Entity3]
    FOREIGN KEY ([Entity1_Id])
    REFERENCES [dbo].[Entity1Set]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Entity1Entity3'
CREATE INDEX [IX_FK_Entity1Entity3]
ON [dbo].[Entity3Set]
    ([Entity1_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------