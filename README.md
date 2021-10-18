# OpenSAP-certification-API
Share list of available OpenSAP Traning and certifications granted to individual from people.sap.com profile

## Main objectives and Context
- Provide a simple source to OpenSAP courses list.
- Feed external API with metadata related to OpenSAP courses list and certifications.
- Get to courses list
- Enhance courses with related details
- Opentional batch : Offer a source storage for certification details (kind of OpenBadge backpack)

## Purposed Value
- Enhance SAP people profile with certifications

## Project Management
An organization with  guests has been set with a team crew to manage the project through a dedicated git repository.
https://developers.sap.com/ provides resources to learn and practices ABAP in Cloud, Cloud Application Programming, RESTful ABAP application and SAPUI5.
- Individual own responsability of features with support of team members, manage in a RASCI Matrix.
- Weekly 30' meeting point during a call until the 12/11/2021 (end of devtoberfest contest and TechEd2021 launch).
- Daily update through the Project Kanban (without meeting)
- Discussions section available

## Functional Design
- Ability to share required details from OpenSAP courses list to an external Aptitudes & Certifications module of Human Capital/Resources system management
- Enable SAP people profile OpenSAP certification badges

## Technical Design
Example of mandatory fields to store required metadata related to OpenSAP Certification by an Human Capital/Resources system management.

Course and certificate
- Certification Name : SAP Enable Now Framework 
- Issuer : Open SAP 
- Territory : Worldwild

Instructors
- (Optional) Instructor(s) name : Robyn Brown, Dieter Voll, Johnson Bandela, Christoph Haffner, Jaco van Zyl
- (Optional) (Instructor(s) professional social profile

Individual metadata
- Link to external website (and certificate) : https://open.sap.com/verify/xogem-gahop-vimul-dozeb-bufuv
- Delivered on : (date)
- (Optional) Expiration date : (date)
- (Optional) professional social profile

## Resources
- Open SAP : Building Apps with the ABAP RESTful Application Programming Model https://open.sap.com/courses/cp13
- Code Samples  : https://github.com/SAP-samples/abap-platform-rap-opensap
- ABAP RESTful Application Programming "scaffoling" => rapid prototype and code generator : https://github.com/SAP-samples/cloud-abap-rap
- https://community.sap.com/resources/code-samples

## data model sample

# JSON for RAP generator
{
    "$schema": "https://raw.githubusercontent.com/SAP-samples/cloud-abap-rap/main/json_schemas/RAPGenerator-schema-all.json",
    "namespace": "ZOCERTAPI",
    "dataSourceType": "table",
    "implementationtype": "managed_uuid",
    "bindingType": "odata_v4_ui",
    "package": "ZRAP_OCERTAPI",
    "draftenabled": true,
    "prefix": "ZOCERT",
    "suffix": "_V0",
    "hierarchy": {
        "entityName": "Course",
        "dataSource": "/dmo/a_courses_d",
        "objectId": "course_id",
        "uuid": "course_uuid",
        "etagMaster": "local_last_changed_at",
        "lastChangedAt": "last_changed_at",
        "lastChangedBy": "last_changed_by",
        "localInstanceLastChangedAt": "local_last_changed_at",
        "createdAt": "created_at",
        "createdBy": "created_by",
        "children": [
            {
                "entityName": "Instructors",
                "dataSource": "/dmo/a_instructor_d",
                "objectId": "instructor_id",
                "uuid": "instructor_uuid",
                "parentUuid": "parent_uuid",
                "etagMaster": "local_last_changed_at",
                "localInstanceLastChangedAt": "local_last_changed_at",
                "children": [
                    {
                        "entityName": "Social",
                        "dataSource": "/dmo/a_people_social_d",
                        "objectId": "people_social_id",
                        "uuid": "people_social_uuid",
                        "parentUuid": "parent_uuid",
                        "etagMaster": "local_last_changed_at",
                        "localInstanceLastChangedAt": "local_last_changed_at"
                       
                    }
                ]
            }
        ]
    }
}
