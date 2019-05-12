
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/12/2019 18:52:46
-- Generated from EDMX file: D:\Projekty C#\WhatCanIEat\WhatCanIEat\Models\Database\DbModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [WhatCanIEat];
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

-- Creating table 'ComponentsSet'
CREATE TABLE [dbo].[ComponentsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL
);
GO

-- Creating table 'Units_of_measureSet'
CREATE TABLE [dbo].[Units_of_measureSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Full_name] nvarchar(max)  NOT NULL,
    [Short_name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Recipe_headerSet'
CREATE TABLE [dbo].[Recipe_headerSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Quantity_of_portions] nvarchar(max)  NOT NULL,
    [Prepare_time] nvarchar(max)  NOT NULL,
    [Description_of_prepare] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Recipe_componentsSet'
CREATE TABLE [dbo].[Recipe_componentsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Quantity] nvarchar(max)  NOT NULL,
    [Id_recipe] int IDENTITY(1,1) NOT NULL,
    [Id_component] int IDENTITY(1,1) NOT NULL,
    [Id_unit] int IDENTITY(1,1) NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ComponentsSet'
ALTER TABLE [dbo].[ComponentsSet]
ADD CONSTRAINT [PK_ComponentsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Units_of_measureSet'
ALTER TABLE [dbo].[Units_of_measureSet]
ADD CONSTRAINT [PK_Units_of_measureSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Recipe_headerSet'
ALTER TABLE [dbo].[Recipe_headerSet]
ADD CONSTRAINT [PK_Recipe_headerSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Recipe_componentsSet'
ALTER TABLE [dbo].[Recipe_componentsSet]
ADD CONSTRAINT [PK_Recipe_componentsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Id_recipe] in table 'Recipe_componentsSet'
ALTER TABLE [dbo].[Recipe_componentsSet]
ADD CONSTRAINT [FK_Recipe_headerRecipe_components]
    FOREIGN KEY ([Id_recipe])
    REFERENCES [dbo].[Recipe_headerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Recipe_headerRecipe_components'
CREATE INDEX [IX_FK_Recipe_headerRecipe_components]
ON [dbo].[Recipe_componentsSet]
    ([Id_recipe]);
GO

-- Creating foreign key on [Id_component] in table 'Recipe_componentsSet'
ALTER TABLE [dbo].[Recipe_componentsSet]
ADD CONSTRAINT [FK_Recipe_componentsComponents]
    FOREIGN KEY ([Id_component])
    REFERENCES [dbo].[ComponentsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Recipe_componentsComponents'
CREATE INDEX [IX_FK_Recipe_componentsComponents]
ON [dbo].[Recipe_componentsSet]
    ([Id_component]);
GO

-- Creating foreign key on [Id_unit] in table 'Recipe_componentsSet'
ALTER TABLE [dbo].[Recipe_componentsSet]
ADD CONSTRAINT [FK_Units_of_measureRecipe_components]
    FOREIGN KEY ([Id_unit])
    REFERENCES [dbo].[Units_of_measureSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Units_of_measureRecipe_components'
CREATE INDEX [IX_FK_Units_of_measureRecipe_components]
ON [dbo].[Recipe_componentsSet]
    ([Id_unit]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------