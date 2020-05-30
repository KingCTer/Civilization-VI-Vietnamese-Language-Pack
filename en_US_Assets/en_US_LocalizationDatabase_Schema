		
CREATE TABLE Languages(	'Locale' TEXT NOT NULL UNIQUE,
						'Name' TEXT NOT NULL,
                        'Collator' TEXT,
						'PluralRule' INTEGER DEFAULT 1,
						'SupportsSmallCaps' BOOLEAN NOT NULL DEFAULT 1);
						
CREATE TABLE AudioLanguages('AudioLanguage' TEXT NOT NULL,
							'Locale' TEXT NOT NULL,
							PRIMARY KEY (AudioLanguage),
							FOREIGN KEY (Locale) REFERENCES Languages(Locale));
						
CREATE TABLE DefaultAudioLanguages(	'Locale' TEXT NOT NULL,
									'AudioLanguage' TEXT NOT NULL,
									PRIMARY KEY (Locale),
									FOREIGN KEY (Locale) REFERENCES Languages(Locale),
									FOREIGN KEY (AudioLanguage) REFERENCES AudioLanguages(AudioLanguage));
									
CREATE TABLE SteamLanguages('SteamLanguage' TEXT NOT NULL,
							'Locale' TEXT NOT NULL,
							PRIMARY KEY (SteamLanguage));
							
CREATE TABLE EpicLanguages('EpicLanguage' TEXT NOT NULL,
							'Locale' TEXT NOT NULL,
							PRIMARY KEY (EpicLanguage));
						
CREATE TABLE LanguagePriorities('PrimaryLanguage' TEXT NOT NULL,
								'Language' TEXT NOT NULL,
								'Priority' INT NOT NULL,
								PRIMARY KEY(PrimaryLanguage, Language),
								FOREIGN KEY (PrimaryLanguage) REFERENCES Languages(Locale),
								FOREIGN KEY (Language) REFERENCES Languages(Locale));
						
					
CREATE TABLE LocalizedText(	'Language' TEXT NOT NULL,
							'Tag' TEXT NOT NULL,
							'Text' TEXT,						
							'Gender' TEXT,
							'Plurality' TEXT,
                            PRIMARY KEY (Language, Tag));
							
CREATE TABLE FontStyleSheets('Language' TEXT NOT NULL,
							'StyleSheet' TEXT NOT NULL,
							'StyleOverride' TEXT,
							'DefaultFont' TEXT NOT NULL,
							PRIMARY KEY (Language));
							
-- These views and triggers are temporary and are used to simplify the XML files used to populate the database.
-- They are dropped in post processing.
CREATE VIEW EnglishText AS
	SELECT Tag, Text, Gender, Plurality FROM LocalizedText WHERE Language = 'en_US';
	
CREATE TRIGGER AddEnglishText INSTEAD OF INSERT ON EnglishText
BEGIN
	INSERT INTO LocalizedText ('Language', 'Tag', 'Text', 'Gender', 'Plurality') VALUES('en_US', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality);
END;

CREATE VIEW BaseGameText AS 
	SELECT Tag, Text, Gender, Plurality FROM LocalizedText WHERE Language = 'en_US';
	
CREATE TRIGGER AddBaseGameText INSTEAD OF INSERT ON BaseGameText
BEGIN
	INSERT INTO LocalizedText ('Language', 'Tag', 'Text', 'Gender', 'Plurality') VALUES('en_US', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality);
END;

CREATE VIEW FrontEndText AS 
	SELECT Tag, Text, Gender, Plurality FROM LocalizedText WHERE Language = 'en_US';
	
CREATE TRIGGER AddFrontEndText INSTEAD OF INSERT ON FrontEndText
BEGIN
	INSERT INTO LocalizedText ('Language', 'Tag', 'Text', 'Gender', 'Plurality') VALUES('en_US', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality);
END;



						   
