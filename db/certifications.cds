namespace app.certifications;

using { Country } from '@sap/cds/common';
type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);


entity Person {
    key ID : Integer;
        NAME : LText;
        DOCUMENTS  : Composition of many Documents on DOCUMENTS.DocHeader = $self;
        PARTNER  : BusinessKey;
        LOG_DATE  : SDate;
        BPCOUNTRY	: Country;
        INSTRUCTOR : association to Documents;
        //PROFILES  : Composition of many Profile on PROFILES.NAME = $self;
};
entity Documents {

	key DocHeader : association to Person;
	key TEXT_ID : BusinessKey;
		LANGU	: String(2);
		ISSUER	: LText;
        TERRITORY: Country;
        CERTIFICATIONID : String(30);
        DELIVEREDON : SDate;
        //INSTRUCTOR : Composition of many Person on INSTRUCTOR.NAME = $self
};
entity Profile {
    key ID : Integer;
    NAME : LText;
    URLLINK : LText;
    PERSON : association to Person;
};