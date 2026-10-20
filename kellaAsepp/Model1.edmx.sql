
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/20/2026 09:15:24
-- Generated from EDMX file: C:\Users\opilane\source\repos\ABseotudMudel\kirillfedulin\kellaAsepp\kellaAsepp\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [kellaAseppbaas];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Entity1Entity2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tabel2Set] DROP CONSTRAINT [FK_Entity1Entity2];
GO
IF OBJECT_ID(N'[dbo].[FK_Entity1Entity3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tabel3Set] DROP CONSTRAINT [FK_Entity1Entity3];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tabel1Set]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tabel1Set];
GO
IF OBJECT_ID(N'[dbo].[tabel2Set]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tabel2Set];
GO
IF OBJECT_ID(N'[dbo].[tabel3Set]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tabel3Set];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ametiTootajaSetSet'
CREATE TABLE [dbo].[ametiTootajaSetSet] (
    [ametitootajaid] int IDENTITY(1,1) NOT NULL,
    [tootajaSet_tootajaid] int  NOT NULL,
    [ametSet_ametid] int  NOT NULL
);
GO

-- Creating table 'ametSetSet'
CREATE TABLE [dbo].[ametSetSet] (
    [ametid] int IDENTITY(1,1) NOT NULL,
    [ametNimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tootajaSetSet'
CREATE TABLE [dbo].[tootajaSetSet] (
    [tootajaid] int IDENTITY(1,1) NOT NULL,
    [nimiPerenimi] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ametitootajaid] in table 'ametiTootajaSetSet'
ALTER TABLE [dbo].[ametiTootajaSetSet]
ADD CONSTRAINT [PK_ametiTootajaSetSet]
    PRIMARY KEY CLUSTERED ([ametitootajaid] ASC);
GO

-- Creating primary key on [ametid] in table 'ametSetSet'
ALTER TABLE [dbo].[ametSetSet]
ADD CONSTRAINT [PK_ametSetSet]
    PRIMARY KEY CLUSTERED ([ametid] ASC);
GO

-- Creating primary key on [tootajaid] in table 'tootajaSetSet'
ALTER TABLE [dbo].[tootajaSetSet]
ADD CONSTRAINT [PK_tootajaSetSet]
    PRIMARY KEY CLUSTERED ([tootajaid] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [tootajaSet_tootajaid] in table 'ametiTootajaSetSet'
ALTER TABLE [dbo].[ametiTootajaSetSet]
ADD CONSTRAINT [FK_tootajaSetametiTootajaSet]
    FOREIGN KEY ([tootajaSet_tootajaid])
    REFERENCES [dbo].[tootajaSetSet]
        ([tootajaid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootajaSetametiTootajaSet'
CREATE INDEX [IX_FK_tootajaSetametiTootajaSet]
ON [dbo].[ametiTootajaSetSet]
    ([tootajaSet_tootajaid]);
GO

-- Creating foreign key on [ametSet_ametid] in table 'ametiTootajaSetSet'
ALTER TABLE [dbo].[ametiTootajaSetSet]
ADD CONSTRAINT [FK_ametSetametiTootajaSet]
    FOREIGN KEY ([ametSet_ametid])
    REFERENCES [dbo].[ametSetSet]
        ([ametid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ametSetametiTootajaSet'
CREATE INDEX [IX_FK_ametSetametiTootajaSet]
ON [dbo].[ametiTootajaSetSet]
    ([ametSet_ametid]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------