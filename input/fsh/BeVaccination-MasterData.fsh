
/* 
========================================================== MASTER DATA ==========================================================
 */





Instance: org-one-brussels
InstanceOf: BeOrganization
Usage: #example
Description: "ONE Brussels"
Title:    "ONE Brussels"
* active = true
* name = "ONE Brussels"
* identifier.value = "457213512"
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi"
* telecom[0].system = #url
* telecom[0].value = "https://www.one.be"
* telecom[0].use = #work



Instance: org-kind-en-gezin
InstanceOf: BeOrganization
Usage: #example
Description: "Kind end Gezin organisation"
Title:    "Kind en Gezin"
* active = true
* name = "Kind en Gezin"
* identifier.value = "457223509"
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi"
* telecom[0].system = #url
* telecom[0].value = "https://www.kindengezin.be/"
* telecom[0].use = #work

Instance: org-uz-gent
InstanceOf: BeOrganization
Usage: #example
Description: "UZ Gent organisation"
Title:    "UZ Gent"
* active = true
* name = "UZ Gent"
* identifier.value = "4342357223509"
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi"
* telecom[0].system = #url
* telecom[0].value = "https://www.uzgent.be/"
* telecom[0].use = #work

Instance: org-msd-belgium
InstanceOf: BeOrganization
Usage: #example
Description: "MSD Belgium"
* active = true
* name = "MSD Belgium"
* identifier.value = "111111111111"

Instance: org-sanofi
InstanceOf: BeOrganization
Usage: #example
Description: "Sanofi France"
* active = true
* name = "Sanofi France"
* identifier.value = "111111111122"


/*
Instance: belgianVaccinationPlan
InstanceOf: PlanDefinition
Usage: #example
Description: "Belgian Standard vaccination schedule "
Title:    "Immunization Example - 1. Toto normal"
* status = #draft
*/

/*
2m/8 weeks: 
  hexavalent ()
  pneumo
  OPT: rotavirus
3m/12 weeks: 
  hexavalent
  OPT: rotavirus
 
4m/16 weeks: 
  hexavalent
  pneumo
  OPT: rotavirus
12m:
  MMR
15m : 
  hexavalent
  mening C
5-6y:
  quad: Polio + dypht+tetanus+
11-12y:
  MMR
13-14:
  HPV (2x)
15-16y: DTP

Pregnancy: DTP

every 10 years: T D

Age 65: pneumo + flu 
*/



/*
Instance: pia
InstanceOf: BePatient
Usage: #example
Description: "Patient Pia Peters"
Title:    "Pia Peters"
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* identifier.value = "59050937740"
* name.family = "Peters"
* name.given = "Pia"
* gender = #female
*/