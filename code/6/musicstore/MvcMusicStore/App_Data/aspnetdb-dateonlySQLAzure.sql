INSERT [dbo].[Applications] ([ApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'a0348dbf-0fdd-487f-82be-e150be222929', NULL)
GO
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'a0348dbf-0fdd-487f-82be-e150be222929', N'ff0fc16d-a8f4-4bcf-9cae-17852ffe37a5', N'Administrator', 0, CAST(0x0000A266007210F8 AS DateTime))
GO
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName],  [IsAnonymous], [LastActivityDate]) VALUES (N'a0348dbf-0fdd-487f-82be-e150be222929', N'f295288f-1905-4045-a3f9-a874b6845464', N'Jon', N'jon', 0, CAST(0x00009EC400D9526B AS DateTime))
GO
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'a0348dbf-0fdd-487f-82be-e150be222929', N'f295288f-1905-4045-a3f9-a874b6845464', N'JnFi4SStSamOYXq846MG/bShrTQ=', 1, N'f71eyrzOz5RqvqFCulhinQ==',  N'jongalloway@gmail.com',  N'question', N'Blb/bZESY68TowDhZzJ4yyISxtI=', 1, 0, CAST(0x00009EC400D621F8 AS DateTime), CAST(0x00009EC400D9526B AS DateTime), CAST(0x00009EC400D621F8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt],  [Email],  [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'a0348dbf-0fdd-487f-82be-e150be222929', N'ff0fc16d-a8f4-4bcf-9cae-17852ffe37a5', N'FRAXk5xQYiIKJVfP8viiWiIs2pE=', 1, N'BflRJuLg3lfdKjOHlPoK8w==', N'test@test.com', N'test', N'102oJ+k3wi+FkwPyYz6GW9dTPu0=', 1, 0, CAST(0x00009EC400CDF884 AS DateTime), CAST(0x0000A266007210F8 AS DateTime), CAST(0x00009EC400CDF884 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[Roles] ([ApplicationId], [RoleId], [RoleName], [Description]) VALUES (N'a0348dbf-0fdd-487f-82be-e150be222929', N'2df9d3a9-b630-4e0f-922e-b2be482ba3e5', N'Administrator', NULL)
GO
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'ff0fc16d-a8f4-4bcf-9cae-17852ffe37a5', N'2df9d3a9-b630-4e0f-922e-b2be482ba3e5')
GO
--INSERT [dbo].[SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
--GO
--INSERT [dbo].[SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
--GO
--INSERT [dbo].[SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
--GO
--INSERT [dbo].[SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
--GO
--INSERT [dbo].[SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
--GO
--INSERT [dbo].[SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
--GO
