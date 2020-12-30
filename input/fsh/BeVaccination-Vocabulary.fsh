/* 
========================================================== VOCABULARY ==========================================================

 */
/*
CodeSystem:  BeCSStatusReason
Id: be-cs-vaccination-status-reason
//Usage: #definition
Title: "vaccination status reason Code System."
Description:  "vaccination reason status Code System."
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
Id: be-cs-vaccination-administration-route
//Usage: #definition
Title: "Vaccine Administration Route"
Description:  "Vaccine Administration Route"
* #IM "Intramuscular"
*/


ValueSet: BeVSVaccineAdministrationRoute
Id: be-vs-vaccination-administration-route
//Usage: #definition
Title: "Vaccine Administration Route"
Description:  "Vaccine Administration Route"
* ^status = #draft
* codes from system BeCSVaccineAdministrationRoute
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH "Other"


ValueSet: BeVSVaccinationStatusReason
Id: be-vs-vaccination-status-reason
//Usage: #definition
Title: "Vaccination status reason Value Set"
Description:  "Vaccination status reason Value Set - the reasons for an vaccination status - typically representing the reason why a vaccination is not performed"
* ^status = #draft
* codes from system BeCSStatusReason
* include http://terminology.hl7.org/CodeSystem/v3-ActReason#IMMUNE "Immune"
* include http://terminology.hl7.org/CodeSystem/v3-ActReason#MEDPREC "Medical Precaution"
* include http://terminology.hl7.org/CodeSystem/v3-ActReason#OSTOCK "Out of Stock"
* include http://terminology.hl7.org/CodeSystem/v3-ActReason#PATOBJ "Patient Objection"



/*
CodeSystem:  BeCSVaccinationConfirmationStatus
Id: be-cs-vaccination-confirmation-status
//Usage: #definition
Title: "vaccination status Code System."
Description:  "vaccination status Code System."
* #unconfirmed "unconfirmed"
* #confirmed "confirmed"
* #other "other"
*/

ValueSet: BeVSVaccinationConfirmationStatus
//Usage: #definition
Id: be-vs-vaccination-confirmation-status
Title: "Vaccination status Value Set"
Description:  "Vaccination status Value Set"
* ^status = #draft
* codes from system BeCSVaccinationConfirmationStatus


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

Instance: be-ns-one-vaccination
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - ONE vaccinations"
* status = #active
* date = "2020-07-24"
* name = "BeNSONEVaccinations"
* kind = #identifier
* description = "Naming System - ONE Vaccination"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/one-vaccinations"
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

