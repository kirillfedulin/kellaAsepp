
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
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

IF OBJECT_ID(N'[dbo].[FK_tootajaSetametiTootajaSet]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ametiTootajaSetSet] DROP CONSTRAINT [FK_tootajaSetametiTootajaSet];
GO
IF OBJECT_ID(N'[dbo].[FK_ametSetametiTootajaSet]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ametiTootajaSetSet] DROP CONSTRAINT [FK_ametSetametiTootajaSet];
GO
IF OBJECT_ID(N'[dbo].[FK_klientkell]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[kellSet] DROP CONSTRAINT [FK_klientkell];
GO
IF OBJECT_ID(N'[dbo].[FK_tooKategooriatoo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tooSet] DROP CONSTRAINT [FK_tooKategooriatoo];
GO
IF OBJECT_ID(N'[dbo].[FK_kellremont]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remontSet] DROP CONSTRAINT [FK_kellremont];
GO
IF OBJECT_ID(N'[dbo].[FK_remontarve]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[arveSet] DROP CONSTRAINT [FK_remontarve];
GO
IF OBJECT_ID(N'[dbo].[FK_remontremontTootaja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remontTootajaSet] DROP CONSTRAINT [FK_remontremontTootaja];
GO
IF OBJECT_ID(N'[dbo].[FK_tootajaremontTootaja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remontTootajaSet] DROP CONSTRAINT [FK_tootajaremontTootaja];
GO
IF OBJECT_ID(N'[dbo].[FK_remontremontToo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remontTooSet] DROP CONSTRAINT [FK_remontremontToo];
GO
IF OBJECT_ID(N'[dbo].[FK_tooremontToo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remontTooSet] DROP CONSTRAINT [FK_tooremontToo];
GO
IF OBJECT_ID(N'[dbo].[FK_remontremontVaruosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remontVaruosaSet] DROP CONSTRAINT [FK_remontremontVaruosa];
GO
IF OBJECT_ID(N'[dbo].[FK_varuosaremontVaruosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remontVaruosaSet] DROP CONSTRAINT [FK_varuosaremontVaruosa];
GO
IF OBJECT_ID(N'[dbo].[FK_tootajatootajaAmetikoht]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tootajaAmetikohtSet] DROP CONSTRAINT [FK_tootajatootajaAmetikoht];
GO
IF OBJECT_ID(N'[dbo].[FK_ametiKohttootajaAmetikoht]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tootajaAmetikohtSet] DROP CONSTRAINT [FK_ametiKohttootajaAmetikoht];
GO
IF OBJECT_ID(N'[dbo].[FK_tarnijatarnijaVaruosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tarnijaVaruosaSet] DROP CONSTRAINT [FK_tarnijatarnijaVaruosa];
GO
IF OBJECT_ID(N'[dbo].[FK_varuosatarnijaVaruosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tarnijaVaruosaSet] DROP CONSTRAINT [FK_varuosatarnijaVaruosa];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ametiTootajaSetSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametiTootajaSetSet];
GO
IF OBJECT_ID(N'[dbo].[ametSetSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametSetSet];
GO
IF OBJECT_ID(N'[dbo].[tootajaSetSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootajaSetSet];
GO
IF OBJECT_ID(N'[dbo].[klientSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[klientSet];
GO
IF OBJECT_ID(N'[dbo].[kellSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kellSet];
GO
IF OBJECT_ID(N'[dbo].[tooKategooriaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tooKategooriaSet];
GO
IF OBJECT_ID(N'[dbo].[tooSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tooSet];
GO
IF OBJECT_ID(N'[dbo].[remontSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[remontSet];
GO
IF OBJECT_ID(N'[dbo].[arveSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[arveSet];
GO
IF OBJECT_ID(N'[dbo].[tootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootajaSet];
GO
IF OBJECT_ID(N'[dbo].[ametiKohtSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametiKohtSet];
GO
IF OBJECT_ID(N'[dbo].[varuosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[varuosaSet];
GO
IF OBJECT_ID(N'[dbo].[tarnijaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tarnijaSet];
GO
IF OBJECT_ID(N'[dbo].[remontTootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[remontTootajaSet];
GO
IF OBJECT_ID(N'[dbo].[remontTooSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[remontTooSet];
GO
IF OBJECT_ID(N'[dbo].[remontVaruosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[remontVaruosaSet];
GO
IF OBJECT_ID(N'[dbo].[tootajaAmetikohtSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootajaAmetikohtSet];
GO
IF OBJECT_ID(N'[dbo].[tarnijaVaruosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tarnijaVaruosaSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'klientSet'
CREATE TABLE [dbo].[klientSet] (
    [klientID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max) NOT NULL,
    [telefon] nvarchar(max) NOT NULL
);
GO

-- Creating table 'kellSet'
CREATE TABLE [dbo].[kellSet] (
    [kellID] int IDENTITY(1,1) NOT NULL,
    [klientID] int NOT NULL,
    [tootja] nvarchar(max) NOT NULL,
    [mudel] nvarchar(max) NOT NULL,
    [seerianumber] nvarchar(max) NOT NULL,
    [kellatuup] nvarchar(max) NOT NULL,
    [valmistamisaasta] int NOT NULL
);
GO

-- Creating table 'tooKategooriaSet'
CREATE TABLE [dbo].[tooKategooriaSet] (
    [kategooriaID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max) NOT NULL
);
GO

-- Creating table 'tooSet'
CREATE TABLE [dbo].[tooSet] (
    [tooID] int IDENTITY(1,1) NOT NULL,
    [kategooriaID] int NOT NULL,
    [nimetus] nvarchar(max) NOT NULL,
    [hind] decimal(18,2) NOT NULL
);
GO

-- Creating table 'remontSet'
CREATE TABLE [dbo].[remontSet] (
    [remontID] int IDENTITY(1,1) NOT NULL,
    [kellID] int NOT NULL,
    [kuupaev] datetime NOT NULL
);
GO

-- Creating table 'arveSet'
CREATE TABLE [dbo].[arveSet] (
    [arveID] int IDENTITY(1,1) NOT NULL,
    [remontID] int NOT NULL,
    [tooSumma] decimal(18,2) NOT NULL,
    [varuosadeSumma] decimal(18,2) NOT NULL,
    [kokkuSumma] decimal(18,2) NOT NULL,
    [makseStaatus] nvarchar(max) NOT NULL
);
GO

-- Creating table 'tootajaSet'
CREATE TABLE [dbo].[tootajaSet] (
    [tootajaID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max) NOT NULL
);
GO

-- Creating table 'ametiKohtSet'
CREATE TABLE [dbo].[ametiKohtSet] (
    [ametiKohtID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max) NOT NULL
);
GO

-- Creating table 'varuosaSet'
CREATE TABLE [dbo].[varuosaSet] (
    [varuosaID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max) NOT NULL,
    [tootaja] nvarchar(max) NOT NULL,
    [hind] decimal(18,2) NOT NULL,
    [laoseis] int NOT NULL
);
GO

-- Creating table 'tarnijaSet'
CREATE TABLE [dbo].[tarnijaSet] (
    [tarnijaID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max) NOT NULL
);
GO

-- Creating table 'remontTootajaSet'
CREATE TABLE [dbo].[remontTootajaSet] (
    [remontiTootajaID] int IDENTITY(1,1) NOT NULL,
    [remontID] int NOT NULL,
    [tootajaID] int NOT NULL
);
GO

-- Creating table 'remontTooSet'
CREATE TABLE [dbo].[remontTooSet] (
    [remontTooID] int IDENTITY(1,1) NOT NULL,
    [remontID] int NOT NULL,
    [tooID] int NOT NULL
);
GO

-- Creating table 'remontVaruosaSet'
CREATE TABLE [dbo].[remontVaruosaSet] (
    [remontVaruosaID] int IDENTITY(1,1) NOT NULL,
    [remontID] int NOT NULL,
    [varuosaID] int NOT NULL,
    [kogus] int NOT NULL
);
GO

-- Creating table 'tootajaAmetikohtSet'
CREATE TABLE [dbo].[tootajaAmetikohtSet] (
    [tootajaAmetiKohtID] int IDENTITY(1,1) NOT NULL,
    [tootajaID] int NOT NULL,
    [ametiKohtID] int NOT NULL,
    [alguskuupaev] datetime NOT NULL,
    [loppkuupaev] datetime NULL
);
GO

-- Creating table 'tarnijaVaruosaSet'
CREATE TABLE [dbo].[tarnijaVaruosaSet] (
    [tarnijaVaruosaID] int IDENTITY(1,1) NOT NULL,
    [tarnijaID] int NOT NULL,
    [varuosaID] int NOT NULL,
    [pakutavHind] decimal(18,2) NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [klientID] in table 'klientSet'
ALTER TABLE [dbo].[klientSet]
ADD CONSTRAINT [PK_klientSet]
    PRIMARY KEY CLUSTERED ([klientID] ASC);
GO

-- Creating primary key on [kellID] in table 'kellSet'
ALTER TABLE [dbo].[kellSet]
ADD CONSTRAINT [PK_kellSet]
    PRIMARY KEY CLUSTERED ([kellID] ASC);
GO

-- Creating primary key on [kategooriaID] in table 'tooKategooriaSet'
ALTER TABLE [dbo].[tooKategooriaSet]
ADD CONSTRAINT [PK_tooKategooriaSet]
    PRIMARY KEY CLUSTERED ([kategooriaID] ASC);
GO

-- Creating primary key on [tooID] in table 'tooSet'
ALTER TABLE [dbo].[tooSet]
ADD CONSTRAINT [PK_tooSet]
    PRIMARY KEY CLUSTERED ([tooID] ASC);
GO

-- Creating primary key on [remontID] in table 'remontSet'
ALTER TABLE [dbo].[remontSet]
ADD CONSTRAINT [PK_remontSet]
    PRIMARY KEY CLUSTERED ([remontID] ASC);
GO

-- Creating primary key on [arveID] in table 'arveSet'
ALTER TABLE [dbo].[arveSet]
ADD CONSTRAINT [PK_arveSet]
    PRIMARY KEY CLUSTERED ([arveID] ASC);
GO

-- Creating primary key on [tootajaID] in table 'tootajaSet'
ALTER TABLE [dbo].[tootajaSet]
ADD CONSTRAINT [PK_tootajaSet]
    PRIMARY KEY CLUSTERED ([tootajaID] ASC);
GO

-- Creating primary key on [ametiKohtID] in table 'ametiKohtSet'
ALTER TABLE [dbo].[ametiKohtSet]
ADD CONSTRAINT [PK_ametiKohtSet]
    PRIMARY KEY CLUSTERED ([ametiKohtID] ASC);
GO

-- Creating primary key on [varuosaID] in table 'varuosaSet'
ALTER TABLE [dbo].[varuosaSet]
ADD CONSTRAINT [PK_varuosaSet]
    PRIMARY KEY CLUSTERED ([varuosaID] ASC);
GO

-- Creating primary key on [tarnijaID] in table 'tarnijaSet'
ALTER TABLE [dbo].[tarnijaSet]
ADD CONSTRAINT [PK_tarnijaSet]
    PRIMARY KEY CLUSTERED ([tarnijaID] ASC);
GO

-- Creating primary key on [remontiTootajaID] in table 'remontTootajaSet'
ALTER TABLE [dbo].[remontTootajaSet]
ADD CONSTRAINT [PK_remontTootajaSet]
    PRIMARY KEY CLUSTERED ([remontiTootajaID] ASC);
GO

-- Creating primary key on [remontTooID] in table 'remontTooSet'
ALTER TABLE [dbo].[remontTooSet]
ADD CONSTRAINT [PK_remontTooSet]
    PRIMARY KEY CLUSTERED ([remontTooID] ASC);
GO

-- Creating primary key on [remontVaruosaID] in table 'remontVaruosaSet'
ALTER TABLE [dbo].[remontVaruosaSet]
ADD CONSTRAINT [PK_remontVaruosaSet]
    PRIMARY KEY CLUSTERED ([remontVaruosaID] ASC);
GO

-- Creating primary key on [tootajaAmetiKohtID] in table 'tootajaAmetikohtSet'
ALTER TABLE [dbo].[tootajaAmetikohtSet]
ADD CONSTRAINT [PK_tootajaAmetikohtSet]
    PRIMARY KEY CLUSTERED ([tootajaAmetiKohtID] ASC);
GO

-- Creating primary key on [tarnijaVaruosaID] in table 'tarnijaVaruosaSet'
ALTER TABLE [dbo].[tarnijaVaruosaSet]
ADD CONSTRAINT [PK_tarnijaVaruosaSet]
    PRIMARY KEY CLUSTERED ([tarnijaVaruosaID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [klientID] in table 'kellSet'
ALTER TABLE [dbo].[kellSet]
ADD CONSTRAINT [FK_klientkell]
    FOREIGN KEY ([klientID])
    REFERENCES [dbo].[klientSet]
        ([klientID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_klientkell'
CREATE INDEX [IX_FK_klientkell]
ON [dbo].[kellSet]
    ([klientID]);
GO

-- Creating foreign key on [kategooriaID] in table 'tooSet'
ALTER TABLE [dbo].[tooSet]
ADD CONSTRAINT [FK_tooKategooriatoo]
    FOREIGN KEY ([kategooriaID])
    REFERENCES [dbo].[tooKategooriaSet]
        ([kategooriaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tooKategooriatoo'
CREATE INDEX [IX_FK_tooKategooriatoo]
ON [dbo].[tooSet]
    ([kategooriaID]);
GO

-- Creating foreign key on [kellID] in table 'remontSet'
ALTER TABLE [dbo].[remontSet]
ADD CONSTRAINT [FK_kellremont]
    FOREIGN KEY ([kellID])
    REFERENCES [dbo].[kellSet]
        ([kellID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_kellremont'
CREATE INDEX [IX_FK_kellremont]
ON [dbo].[remontSet]
    ([kellID]);
GO

-- Creating foreign key on [remontID] in table 'arveSet'
ALTER TABLE [dbo].[arveSet]
ADD CONSTRAINT [FK_remontarve]
    FOREIGN KEY ([remontID])
    REFERENCES [dbo].[remontSet]
        ([remontID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_remontarve'
CREATE INDEX [IX_FK_remontarve]
ON [dbo].[arveSet]
    ([remontID]);
GO

-- Creating foreign key on [remontID] in table 'remontTootajaSet'
ALTER TABLE [dbo].[remontTootajaSet]
ADD CONSTRAINT [FK_remontremontTootaja]
    FOREIGN KEY ([remontID])
    REFERENCES [dbo].[remontSet]
        ([remontID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_remontremontTootaja'
CREATE INDEX [IX_FK_remontremontTootaja]
ON [dbo].[remontTootajaSet]
    ([remontID]);
GO

-- Creating foreign key on [tootajaID] in table 'remontTootajaSet'
ALTER TABLE [dbo].[remontTootajaSet]
ADD CONSTRAINT [FK_tootajaremontTootaja]
    FOREIGN KEY ([tootajaID])
    REFERENCES [dbo].[tootajaSet]
        ([tootajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootajaremontTootaja'
CREATE INDEX [IX_FK_tootajaremontTootaja]
ON [dbo].[remontTootajaSet]
    ([tootajaID]);
GO

-- Creating foreign key on [remontID] in table 'remontTooSet'
ALTER TABLE [dbo].[remontTooSet]
ADD CONSTRAINT [FK_remontremontToo]
    FOREIGN KEY ([remontID])
    REFERENCES [dbo].[remontSet]
        ([remontID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_remontremontToo'
CREATE INDEX [IX_FK_remontremontToo]
ON [dbo].[remontTooSet]
    ([remontID]);
GO

-- Creating foreign key on [tooID] in table 'remontTooSet'
ALTER TABLE [dbo].[remontTooSet]
ADD CONSTRAINT [FK_tooremontToo]
    FOREIGN KEY ([tooID])
    REFERENCES [dbo].[tooSet]
        ([tooID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tooremontToo'
CREATE INDEX [IX_FK_tooremontToo]
ON [dbo].[remontTooSet]
    ([tooID]);
GO

-- Creating foreign key on [remontID] in table 'remontVaruosaSet'
ALTER TABLE [dbo].[remontVaruosaSet]
ADD CONSTRAINT [FK_remontremontVaruosa]
    FOREIGN KEY ([remontID])
    REFERENCES [dbo].[remontSet]
        ([remontID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_remontremontVaruosa'
CREATE INDEX [IX_FK_remontremontVaruosa]
ON [dbo].[remontVaruosaSet]
    ([remontID]);
GO

-- Creating foreign key on [varuosaID] in table 'remontVaruosaSet'
ALTER TABLE [dbo].[remontVaruosaSet]
ADD CONSTRAINT [FK_varuosaremontVaruosa]
    FOREIGN KEY ([varuosaID])
    REFERENCES [dbo].[varuosaSet]
        ([varuosaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_varuosaremontVaruosa'
CREATE INDEX [IX_FK_varuosaremontVaruosa]
ON [dbo].[remontVaruosaSet]
    ([varuosaID]);
GO

-- Creating foreign key on [tootajaID] in table 'tootajaAmetikohtSet'
ALTER TABLE [dbo].[tootajaAmetikohtSet]
ADD CONSTRAINT [FK_tootajatootajaAmetikoht]
    FOREIGN KEY ([tootajaID])
    REFERENCES [dbo].[tootajaSet]
        ([tootajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootajatootajaAmetikoht'
CREATE INDEX [IX_FK_tootajatootajaAmetikoht]
ON [dbo].[tootajaAmetikohtSet]
    ([tootajaID]);
GO

-- Creating foreign key on [ametiKohtID] in table 'tootajaAmetikohtSet'
ALTER TABLE [dbo].[tootajaAmetikohtSet]
ADD CONSTRAINT [FK_ametiKohttootajaAmetikoht]
    FOREIGN KEY ([ametiKohtID])
    REFERENCES [dbo].[ametiKohtSet]
        ([ametiKohtID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ametiKohttootajaAmetikoht'
CREATE INDEX [IX_FK_ametiKohttootajaAmetikoht]
ON [dbo].[tootajaAmetikohtSet]
    ([ametiKohtID]);
GO

-- Creating foreign key on [tarnijaID] in table 'tarnijaVaruosaSet'
ALTER TABLE [dbo].[tarnijaVaruosaSet]
ADD CONSTRAINT [FK_tarnijatarnijaVaruosa]
    FOREIGN KEY ([tarnijaID])
    REFERENCES [dbo].[tarnijaSet]
        ([tarnijaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tarnijatarnijaVaruosa'
CREATE INDEX [IX_FK_tarnijatarnijaVaruosa]
ON [dbo].[tarnijaVaruosaSet]
    ([tarnijaID]);
GO

-- Creating foreign key on [varuosaID] in table 'tarnijaVaruosaSet'
ALTER TABLE [dbo].[tarnijaVaruosaSet]
ADD CONSTRAINT [FK_varuosatarnijaVaruosa]
    FOREIGN KEY ([varuosaID])
    REFERENCES [dbo].[varuosaSet]
        ([varuosaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_varuosatarnijaVaruosa'
CREATE INDEX [IX_FK_varuosatarnijaVaruosa]
ON [dbo].[tarnijaVaruosaSet]
    ([varuosaID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------