/* 
========================================================== VOCABULARY ==========================================================

 */
/*
CodeSystem:  BeCSStatusReason
Id: be-cs-immunization-status-reason
//Usage: #definition
Title: "Immunization status reason Code System."
Description:  "Immunization reason status Code System."
* #other "other"
* #IMMUNE "immunity"
* #MEDPREC "medical precaution"
* #OSTOCK "product out of stock"
* #PATOBJ "patient objection"

//* #PHILISOP "philosophical objection"
//* #RELIG "religious objection"
//* #VACEFF "vaccine efficacy concerns"
//* #VACSAF "vaccine safety concerns" 
*/

/*
CodeSystem:  BeCSVaccineAdministrationRoute
Id: be-cs-vaccine-administration-route
//Usage: #definition
Title: "Vaccine Administration Route"
Description:  "Vaccine Administration Route"
* #IM "Intramuscular"
*/


ValueSet: BeVSVaccineAdministrationRoute
Id: be-vs-vaccine-administration-route
//Usage: #definition
Title: "Vaccine Administration Route"
Description:  "Vaccine Administration Route"
* ^status = #draft
* codes from system BeCSVaccineAdministrationRoute



ValueSet: BeVSImmunizationStatusReason
Id: be-vs-immunization-status-reason
//Usage: #definition
Title: "Immunization status Value Set"
Description:  "Immunization status Value Set"
* ^status = #draft
* codes from system BeCSStatusReason

/*
CodeSystem:  BeCSImmunizationConfirmationStatus
Id: be-cs-immunization-confirmation-status
//Usage: #definition
Title: "Immunization status Code System."
Description:  "Immunization status Code System."
* #unconfirmed "unconfirmed"
* #confirmed "confirmed"
* #other "other"
*/

ValueSet: BeVSImmunizationConfirmationStatus
//Usage: #definition
Id: be-vs-immunization-confirmation-status
Title: "Vaccination status Value Set"
Description:  "Vaccination status Value Set"
* ^status = #draft
* codes from system BeCSImmunizationConfirmationStatus


/*
CodeSystem:  BeCSCareLocation
//Usage: #definition
Id: be-cs-care-location
Title: "Care Location Code System"
Description:  "Care Location Code System"
* #hospital "Hospital"
* #patient-home "Patient home"
* #nursing-home "Nursing home"
* #recovery-home "Recovery home (?)"
* #workplace "Workplace"
* #medical-center "Medical center"
* #clinic "Clinic"
* #pediatric-ic "Pediatric IC"
* #neonatal-ic "Neonatal IC"
* #prenatal-consult "Prenatal consult"
* #m-accueil "Milieu d’accueil"
* #child-consult "Child consult"
* #one "ONE"
* #kind-gezin "Kind&Gezin"
* #ambulance "Ambulance"
* #school "School"
* #school-health-serv "School health service"
* #pharmacy "Pharmacy"
* #med-monde "Doctor of the world"
* #ong "ONG"
* #family-planning "Family planning center"
* #abroad "Another country"
* #other "other"
*/


ValueSet: BeVSCareLocation
//Usage: #definition
Id: be-vs-care-location
Title: "Care Location Value Set"
Description:  "Care Location Value Set"
* ^status = #draft
* codes from system BeCSCareLocation



Instance: be-ns-cnk-codes
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - CNK Product Codes"
* status = #active
* name = "BeNSCNK"
* date = "2020-07-24"
* kind = #codesystem
* description = "Naming System - CNK Product Codes"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/cnk-codes"
* uniqueId[0].preferred = true
* jurisdiction = urn:iso:std:iso:3166#BE

          
Instance: be-ns-product-manufacturer
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - Product Manufacturers"
* status = #active
* date = "2020-07-24"
* name = "BeNSManufacturers"
* kind = #codesystem
* description = "Naming System - Product Manufacturers"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/product-manufacturer"
* uniqueId[0].preferred = true
* jurisdiction = urn:iso:std:iso:3166#BE



Instance: be-ns-one-immunizations
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - ONE Immunizations"
* status = #active
* date = "2020-07-24"
* name = "BeNSONEImmunizations"
* kind = #identifier
* description = "Naming System - ONE Immunizations"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/one-immunizations"
* uniqueId[0].preferred = true
* jurisdiction = urn:iso:std:iso:3166#BE

Instance: be-ns-nihdi-professional
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - Nihdi - Professional"
* status = #active
* date = "2020-07-24"
* name = "BeNSNIHDIProfessional"
* kind = #identifier
* description = "Naming System - Nihdi - Professional"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-professional"
* uniqueId[0].preferred = true
* jurisdiction = urn:iso:std:iso:3166#BE


Instance: be-ns-nihdi-organization
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - Nihdi - Organization"
* status = #active
* date = "2020-07-24"
* name = "BeNSNIHDIOrganization"
* kind = #identifier
* description = "Naming System - Nihdi - Organization"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization"
* uniqueId[0].preferred = true
* jurisdiction = urn:iso:std:iso:3166#BE

