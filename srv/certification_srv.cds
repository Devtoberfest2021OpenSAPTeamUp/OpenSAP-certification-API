using app.certifications from '../db/certifications';

@requires: 'authenticated-user'
service CatalogService {

 entity Person
	as projection on certifications.Person;

 entity Documents
	as projection on  certifications.Documents;

 entity Profile
	as projection on  certifications.Profile;

}