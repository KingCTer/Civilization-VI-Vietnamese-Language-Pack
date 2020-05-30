-- Installation via user Civilization VI Text folder --

-- Add so that language is at the top of the list --
UPDATE "Languages" SET Locale = 'vi_VI', Name = 'Vietnamese' WHERE Locale = 'en_US';
---- But also restore option to choose English --
INSERT OR IGNORE INTO "Languages" (Locale, Name, Collator, PluralRule, SupportsSmallCaps) VALUES('en_US', 'English', null, 2, 1);
INSERT OR IGNORE INTO "Languages" (Locale, Name, PluralRule, SupportsSmallCaps) VALUES('en_US', 'English', 2, 1);

INSERT INTO "Languages" VALUES('vi_VI','Vietnamese',null,2,1);
INSERT INTO "DefaultAudioLanguages" VALUES('vi_VI', 'English(US)');
INSERT INTO "SteamLanguages" VALUES('vietnamese', 'vi_VI');
INSERT INTO "EpicLanguages" VALUES('vi','vi_VI');
INSERT INTO "EpicLanguages" VALUES('vi_VI','vi_VI');
INSERT INTO "LanguagePriorities" VALUES('vi_VI', 'vi_VI', 100);
INSERT INTO "LanguagePriorities" VALUES('vi_VI', 'en_US', 90);
INSERT INTO "LanguagePriorities" VALUES('en_US', 'vi_VI', 90);
INSERT INTO "FontStyleSheets" VALUES('vi_VI', 'Civ6_FontStyles_EFIGS.xml', null, 'MinionPro-Medium.otf');
