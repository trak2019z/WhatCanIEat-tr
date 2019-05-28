
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/28/2019 20:08:20
-- Generated from EDMX file: C:\Users\albert-virtual\Source\Repos\WhatCanIEat\WhatCanIEat\Models\Database\DbModel.edmx
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

IF OBJECT_ID(N'[dbo].[FK_Recipe_headerRecipe_components]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Recipe_components] DROP CONSTRAINT [FK_Recipe_headerRecipe_components];
GO
IF OBJECT_ID(N'[dbo].[FK_Recipe_componentsComponents]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Recipe_components] DROP CONSTRAINT [FK_Recipe_componentsComponents];
GO
IF OBJECT_ID(N'[dbo].[FK_Units_of_measureRecipe_components]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Recipe_components] DROP CONSTRAINT [FK_Units_of_measureRecipe_components];
GO
IF OBJECT_ID(N'[dbo].[FK_Recipe_headerCategories]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Recipe_header] DROP CONSTRAINT [FK_Recipe_headerCategories];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersRecipe_header]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Recipe_header] DROP CONSTRAINT [FK_UsersRecipe_header];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Components]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Components];
GO
IF OBJECT_ID(N'[dbo].[Units_of_measure]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Units_of_measure];
GO
IF OBJECT_ID(N'[dbo].[Recipe_header]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Recipe_header];
GO
IF OBJECT_ID(N'[dbo].[Recipe_components]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Recipe_components];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Components'
CREATE TABLE [dbo].[Components] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL
);
GO

-- Creating table 'Units_of_measure'
CREATE TABLE [dbo].[Units_of_measure] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Full_name] nvarchar(max)  NOT NULL,
    [Short_name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Recipe_header'
CREATE TABLE [dbo].[Recipe_header] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Quantity_of_portions] nvarchar(max)  NOT NULL,
    [Prepare_time] nvarchar(max)  NOT NULL,
    [Description_of_prepare] nvarchar(max)  NOT NULL,
    [Id_Categories] int IDENTITY(1,1) NOT NULL,
    [Create_by] int  NOT NULL
);
GO

-- Creating table 'Recipe_components'
CREATE TABLE [dbo].[Recipe_components] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Quantity] nvarchar(max)  NOT NULL,
    [Id_recipe] int IDENTITY(1,1) NOT NULL,
    [Id_component] int IDENTITY(1,1) NOT NULL,
    [Id_unit] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Login] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Permision] int  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Permission'
CREATE TABLE [dbo].[Permission] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Group] int  NOT NULL
);
GO

-- Creating table 'Comments'
CREATE TABLE [dbo].[Comments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Comment] nvarchar(max)  NOT NULL,
    [Create_by] int  NOT NULL,
    [Recipe_id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Components'
ALTER TABLE [dbo].[Components]
ADD CONSTRAINT [PK_Components]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Units_of_measure'
ALTER TABLE [dbo].[Units_of_measure]
ADD CONSTRAINT [PK_Units_of_measure]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Recipe_header'
ALTER TABLE [dbo].[Recipe_header]
ADD CONSTRAINT [PK_Recipe_header]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Recipe_components'
ALTER TABLE [dbo].[Recipe_components]
ADD CONSTRAINT [PK_Recipe_components]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Permission'
ALTER TABLE [dbo].[Permission]
ADD CONSTRAINT [PK_Permission]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [PK_Comments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Id_recipe] in table 'Recipe_components'
ALTER TABLE [dbo].[Recipe_components]
ADD CONSTRAINT [FK_Recipe_headerRecipe_components]
    FOREIGN KEY ([Id_recipe])
    REFERENCES [dbo].[Recipe_header]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Recipe_headerRecipe_components'
CREATE INDEX [IX_FK_Recipe_headerRecipe_components]
ON [dbo].[Recipe_components]
    ([Id_recipe]);
GO

-- Creating foreign key on [Id_component] in table 'Recipe_components'
ALTER TABLE [dbo].[Recipe_components]
ADD CONSTRAINT [FK_Recipe_componentsComponents]
    FOREIGN KEY ([Id_component])
    REFERENCES [dbo].[Components]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Recipe_componentsComponents'
CREATE INDEX [IX_FK_Recipe_componentsComponents]
ON [dbo].[Recipe_components]
    ([Id_component]);
GO

-- Creating foreign key on [Id_unit] in table 'Recipe_components'
ALTER TABLE [dbo].[Recipe_components]
ADD CONSTRAINT [FK_Units_of_measureRecipe_components]
    FOREIGN KEY ([Id_unit])
    REFERENCES [dbo].[Units_of_measure]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Units_of_measureRecipe_components'
CREATE INDEX [IX_FK_Units_of_measureRecipe_components]
ON [dbo].[Recipe_components]
    ([Id_unit]);
GO

-- Creating foreign key on [Id_Categories] in table 'Recipe_header'
ALTER TABLE [dbo].[Recipe_header]
ADD CONSTRAINT [FK_Recipe_headerCategories]
    FOREIGN KEY ([Id_Categories])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Recipe_headerCategories'
CREATE INDEX [IX_FK_Recipe_headerCategories]
ON [dbo].[Recipe_header]
    ([Id_Categories]);
GO

-- Creating foreign key on [Create_by] in table 'Recipe_header'
ALTER TABLE [dbo].[Recipe_header]
ADD CONSTRAINT [FK_UsersRecipe_header]
    FOREIGN KEY ([Create_by])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersRecipe_header'
CREATE INDEX [IX_FK_UsersRecipe_header]
ON [dbo].[Recipe_header]
    ([Create_by]);
GO

-- Creating foreign key on [Permision] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_PermissionUsers]
    FOREIGN KEY ([Permision])
    REFERENCES [dbo].[Permission]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PermissionUsers'
CREATE INDEX [IX_FK_PermissionUsers]
ON [dbo].[Users]
    ([Permision]);
GO

-- Creating foreign key on [Recipe_id] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [FK_CommentsRecipe_header]
    FOREIGN KEY ([Recipe_id])
    REFERENCES [dbo].[Recipe_header]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentsRecipe_header'
CREATE INDEX [IX_FK_CommentsRecipe_header]
ON [dbo].[Comments]
    ([Recipe_id]);
GO

-- Creating foreign key on [Create_by] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [FK_UsersComments]
    FOREIGN KEY ([Create_by])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersComments'
CREATE INDEX [IX_FK_UsersComments]
ON [dbo].[Comments]
    ([Create_by]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------