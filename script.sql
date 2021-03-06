USE [Decklist_Visualizer]
GO
/****** Object:  Table [dbo].[Deck]    Script Date: 28.03.2022 15:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deck](
	[DeckId] [int] IDENTITY(1,1) NOT NULL,
	[DName] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[DeckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farben]    Script Date: 28.03.2022 15:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farben](
	[FarbId] [int] IDENTITY(1,1) NOT NULL,
	[Farbe] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[FarbId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Karten]    Script Date: 28.03.2022 15:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Karten](
	[KartenId] [int] IDENTITY(1,1) NOT NULL,
	[fk_TypId] [int] NULL,
	[fk_FarbId] [int] NULL,
	[KName] [varchar](30) NULL,
	[fk_FarbId2] [int] NULL,
	[fk_FarbId3] [int] NULL,
	[fk_FarbId4] [int] NULL,
	[fk_FarbId5] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KartenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sindIn]    Script Date: 28.03.2022 15:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sindIn](
	[sindInId] [int] IDENTITY(1,1) NOT NULL,
	[fk_DeckId] [int] NULL,
	[fk_KartenId] [int] NULL,
	[AnzahlKarten] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[sindInId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Typ]    Script Date: 28.03.2022 15:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Typ](
	[TypId] [int] IDENTITY(1,1) NOT NULL,
	[TName] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deck] ON 

INSERT [dbo].[Deck] ([DeckId], [DName]) VALUES (1, N'Edgar Markov Commander')
INSERT [dbo].[Deck] ([DeckId], [DName]) VALUES (2, N'Nicol Bolas Commander')
SET IDENTITY_INSERT [dbo].[Deck] OFF
GO
SET IDENTITY_INSERT [dbo].[Farben] ON 

INSERT [dbo].[Farben] ([FarbId], [Farbe]) VALUES (1, N'Weiss     ')
INSERT [dbo].[Farben] ([FarbId], [Farbe]) VALUES (2, N'Blau      ')
INSERT [dbo].[Farben] ([FarbId], [Farbe]) VALUES (3, N'Schwarz   ')
INSERT [dbo].[Farben] ([FarbId], [Farbe]) VALUES (4, N'Rot       ')
INSERT [dbo].[Farben] ([FarbId], [Farbe]) VALUES (5, N'Grün      ')
SET IDENTITY_INSERT [dbo].[Farben] OFF
GO
SET IDENTITY_INSERT [dbo].[Karten] ON 

INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (1, 1, 1, N'Edgar Markov', 3, 4, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (2, 2, 3, N'Vampire Nocturnus', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (3, 2, 3, N'Rakdos, Lord of Riots', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (4, 2, 3, N'Valki, God of Lies', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (5, 2, 3, N'Kalitas, Traitor of Ghet', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (6, 2, 4, N'Marodeur aus Falkenrath', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (7, 2, 1, N'Gott-Verewigte Oketra', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (8, 2, 3, N'Drana, Liberator of Malakir', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (9, 2, 3, N'Immersturm Predator', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (10, 2, 3, N'Nighthawk Scavenger', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (11, 2, 1, N'Licia, Saguine Tribune', 3, 4, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (12, 2, 3, N'Bloodlord of Vassgoth', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (13, 2, 3, N'Bloodline Keeper', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (14, 2, 1, N'Elenda, the Dusk Rose', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (15, 2, 3, N'Drana, the Last Bloodchief', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (16, 2, 3, N'Olivia Voldaren', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (17, 2, 3, N'Prophetin der Dämmerung', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (18, 2, 3, N'Vampire Nighthawk', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (19, 2, 3, N'Vito, Thorn of the Dusk Rose', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (20, 2, 3, N'Ritter der Ebenholzlegion', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (21, 2, 4, N'Rakish Heir', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (22, 2, 3, N'Indulgent Aristocrat', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (23, 2, 3, N'Düstermond Vampirin', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (24, 2, 3, N'Anowon, the Ruin Sage', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (25, 2, 1, N'Leutnant der Legion', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (26, 2, 3, N'Thirsting Bloodlord', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (27, 2, 4, N'Adliger von Stromkirch', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (28, 2, NULL, N'Bloodline Pretender', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (29, 2, 3, N'Captivating Vampire', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (30, 2, 3, N'Stromkirk Captain', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (31, 2, 3, N'Cordial Vampire', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (32, 2, 3, N'Varragoth, Bloodsky Sire', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (33, 2, 1, N'Mavren Fein, Dusk Apostle', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (34, 3, 1, N'Mortify', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (35, 3, 3, N'Terminate', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (36, 3, 3, N'Doom Blade', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (37, 3, 3, N'Go for the Throat', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (38, 3, 1, N'Crackling Doom', 3, 4, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (39, 4, 3, N'Dreadbore', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (40, 4, 1, N'Vernichtendes Ultimatum', 3, 4, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (41, 4, 1, N'Doomskar', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (42, 4, 3, N'Extinction Event', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (43, 5, 1, N'Landung der Legion', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (44, 5, 3, N'Sanguine Bond', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (45, 5, 3, N'Exquisite Blood', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (46, 5, 4, N'Stensia Masquerade', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (47, 6, NULL, N'Replicating Ring', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (48, 6, NULL, N'Nyx Lotus', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (49, 6, NULL, N'Shadowspear', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (50, 6, NULL, N'Cosmos Elixir', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (51, 6, NULL, N'Beinschienen des Blitzes', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (52, 6, NULL, N'Stoneforge Masterwork', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (53, 6, NULL, N'Sonnenring', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (54, 6, NULL, N'Coalition Relic', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (55, 6, NULL, N'Gilded Lotus', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (56, 6, NULL, N'Chromatic Lantern', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (57, 6, NULL, N'Schwarzklinge, neu geschmiedet', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (58, 6, NULL, N'Arcane Signet', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (59, 6, NULL, N'Vanquisher''s Banner', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (60, 6, NULL, N'Abbild der Ahnen', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (61, 6, NULL, N'Klinge des Bluthäuptlings', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (62, 6, NULL, N'Door of Destinies', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (63, 7, 3, N'Sorin Markov', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (64, 7, 1, N'Sorin, Grimmige Nemesis', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (65, 7, 1, N'Sorin, rachsüchtiger Blutfürst', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (66, 8, 3, N'Höhlen des Blutvergiessens', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (67, 8, 1, N'Rupture Spire', 2, 3, 4, 5)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (68, 8, 1, N'Transguilde Promenade', 2, 3, 4, 5)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (69, 8, 1, N'Orzhov-Guildgate', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (70, 8, 1, N'Boros-Garnison', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (71, 8, 1, N'Tempel des Triumphes', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (72, 8, 3, N'Immerstrum Skullcairn', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (73, 8, 1, N'Command Tower', 2, 3, 4, 5)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (74, 8, 3, N'Rakdos-Schlachtstätte', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (75, 8, 1, N'Snowfield Sinkhole', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (76, 8, 1, N'Uraltes Amphitheater', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (77, 8, 1, N'Boros-Gildeneingang', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (78, 8, 1, N'Isolated Chapel', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (79, 8, 3, N'Blightstep Pathway', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (80, 8, 3, N'Sulfurous Mire', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (81, 8, 3, N'Dragonskull Summit', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (82, 8, 1, N'Alpine Meadow', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (83, 8, 1, N'Verlassene Ödnis', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (84, 8, NULL, N'Temple of the False God', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (85, 8, NULL, N'Tyrite Sanctum', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (86, 8, 3, N'Temple of Malice', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (87, 8, 3, N'Castle Locthwain', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (88, 8, 3, N'Great Hall of Starnheim', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (89, 8, 1, N'WIndgepeitschte Felswand', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (90, 8, 1, N'Tempel des Schweigens', 3, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (91, 8, 1, N'Savai Triome', 3, 4, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (92, 8, 1, N'Shimmerdrift Vale', 2, 3, 4, 5)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (93, 8, NULL, N'Labyrinth of Skophos', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (94, 8, 1, N'Torplatz', 2, 3, 4, 5)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (95, 8, 3, N'Cinder Barrens', 4, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (96, 8, 1, N'Plains', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (97, 8, 2, N'Island', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (98, 8, 3, N'Swamp', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (99, 8, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (100, 8, 5, N'Forest', NULL, NULL, NULL, NULL)
INSERT [dbo].[Karten] ([KartenId], [fk_TypId], [fk_FarbId], [KName], [fk_FarbId2], [fk_FarbId3], [fk_FarbId4], [fk_FarbId5]) VALUES (101, 8, 4, N'Mountain', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Karten] OFF
GO
SET IDENTITY_INSERT [dbo].[sindIn] ON 

INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (1, 1, 1, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (2, 1, 2, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (3, 1, 3, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (4, 1, 4, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (5, 1, 5, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (6, 1, 6, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (7, 1, 7, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (8, 1, 8, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (9, 1, 9, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (10, 1, 10, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (11, 1, 11, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (12, 1, 12, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (13, 1, 13, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (14, 1, 14, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (15, 1, 15, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (16, 1, 16, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (17, 1, 17, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (18, 1, 18, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (19, 1, 19, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (20, 1, 20, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (21, 1, 21, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (22, 1, 22, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (23, 1, 23, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (24, 1, 24, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (25, 1, 25, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (26, 1, 26, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (27, 1, 27, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (28, 1, 28, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (29, 1, 29, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (30, 1, 30, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (31, 1, 31, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (32, 1, 32, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (33, 1, 33, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (34, 1, 34, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (35, 1, 35, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (36, 1, 36, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (37, 1, 37, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (38, 1, 38, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (39, 1, 39, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (40, 1, 40, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (41, 1, 41, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (42, 1, 42, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (43, 1, 43, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (44, 1, 44, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (45, 1, 45, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (46, 1, 46, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (47, 1, 47, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (48, 1, 48, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (49, 1, 49, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (50, 1, 50, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (51, 1, 51, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (52, 1, 52, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (53, 1, 53, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (54, 1, 54, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (55, 1, 55, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (56, 1, 56, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (57, 1, 57, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (58, 1, 58, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (59, 1, 59, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (60, 1, 60, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (61, 1, 61, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (62, 1, 62, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (63, 1, 63, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (64, 1, 64, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (65, 1, 65, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (66, 1, 66, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (67, 1, 67, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (68, 1, 68, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (69, 1, 69, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (70, 1, 70, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (71, 1, 71, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (72, 1, 72, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (73, 1, 73, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (74, 1, 74, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (75, 1, 75, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (76, 1, 76, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (77, 1, 77, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (78, 1, 78, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (79, 1, 79, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (80, 1, 80, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (81, 1, 81, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (82, 1, 82, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (83, 1, 83, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (84, 1, 84, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (85, 1, 85, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (86, 1, 86, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (87, 1, 87, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (88, 1, 88, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (89, 1, 89, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (90, 1, 90, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (91, 1, 91, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (92, 1, 92, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (93, 1, 93, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (94, 1, 94, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (95, 1, 95, NULL)
INSERT [dbo].[sindIn] ([sindInId], [fk_DeckId], [fk_KartenId], [AnzahlKarten]) VALUES (96, 1, 96, N'5')
SET IDENTITY_INSERT [dbo].[sindIn] OFF
GO
SET IDENTITY_INSERT [dbo].[Typ] ON 

INSERT [dbo].[Typ] ([TypId], [TName]) VALUES (1, N'Commander')
INSERT [dbo].[Typ] ([TypId], [TName]) VALUES (2, N'Creature')
INSERT [dbo].[Typ] ([TypId], [TName]) VALUES (3, N'Instant')
INSERT [dbo].[Typ] ([TypId], [TName]) VALUES (4, N'Sorcery')
INSERT [dbo].[Typ] ([TypId], [TName]) VALUES (5, N'Enchantment')
INSERT [dbo].[Typ] ([TypId], [TName]) VALUES (6, N'Artifact')
INSERT [dbo].[Typ] ([TypId], [TName]) VALUES (7, N'Planeswalker')
INSERT [dbo].[Typ] ([TypId], [TName]) VALUES (8, N'Land')
SET IDENTITY_INSERT [dbo].[Typ] OFF
GO
ALTER TABLE [dbo].[Karten]  WITH CHECK ADD FOREIGN KEY([fk_FarbId])
REFERENCES [dbo].[Farben] ([FarbId])
GO
ALTER TABLE [dbo].[Karten]  WITH CHECK ADD FOREIGN KEY([fk_FarbId2])
REFERENCES [dbo].[Farben] ([FarbId])
GO
ALTER TABLE [dbo].[Karten]  WITH CHECK ADD FOREIGN KEY([fk_FarbId3])
REFERENCES [dbo].[Farben] ([FarbId])
GO
ALTER TABLE [dbo].[Karten]  WITH CHECK ADD FOREIGN KEY([fk_FarbId4])
REFERENCES [dbo].[Farben] ([FarbId])
GO
ALTER TABLE [dbo].[Karten]  WITH CHECK ADD FOREIGN KEY([fk_FarbId5])
REFERENCES [dbo].[Farben] ([FarbId])
GO
ALTER TABLE [dbo].[Karten]  WITH CHECK ADD FOREIGN KEY([fk_TypId])
REFERENCES [dbo].[Typ] ([TypId])
GO
ALTER TABLE [dbo].[sindIn]  WITH CHECK ADD FOREIGN KEY([fk_DeckId])
REFERENCES [dbo].[Deck] ([DeckId])
GO
ALTER TABLE [dbo].[sindIn]  WITH CHECK ADD FOREIGN KEY([fk_KartenId])
REFERENCES [dbo].[Karten] ([KartenId])
GO
