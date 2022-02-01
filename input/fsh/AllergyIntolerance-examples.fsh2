Alias: $allergyClinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyVerificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $sct = http://snomed.info/sct
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $be-fed-country = https://www.ehealth.fgov.be/standards/fhir/CodeSystem/be-fed-country
Alias: $be-patient = https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $be-civilstate = https://www.ehealth.fgov.be/standards/fhir/CodeSystem/be-civilstate


Instance: noel-allergy.v0
InstanceOf: https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-allergyintolerance
Usage: #example
Description: "Patient Noel - allergy (suspected)"
Title:  "Patient Noel - allergy (suspected)"
* clinicalStatus = $allergyClinicalStatus#active
* verificationStatus = $allergyClinicalStatus#unconfirmed

* type = #allergy
* category = #medication
* code = $sct#373270004 "Penicillin antibacterial"
* code.text = "Allergic to Penicillin antibacterial"
* patient = Reference(Noel)
* onsetDateTime = "2020"
* recordedDate = "2020-02-20T14:58:00+11:00"
* recorder = Reference(Durant)
* note.text = "to be confirmed by tests."


Instance: noel-allergy.v1
InstanceOf: https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-allergyintolerance
Usage: #example
Description: "Patient Noel - allergy (suspected)"
Title:  "Patient Noel - allergy (suspected)"
* clinicalStatus = $allergyClinicalStatus#resolved
* verificationStatus = $allergyClinicalStatus#refuted

* type = #allergy
* category = #medication
* code = $sct#373270004 "Penicillin antibacterial"
* code.text = "Allergic to Penicillin antibacterial"
* patient = Reference(Noel)
* onsetDateTime = "2020"
* recordedDate = "2020-02-21T14:58:00+11:00"
* recorder = Reference(Lenoir)
* note.text = "test results 21/02/2020"
* reaction.manifestation = $sct#126485001 "Urticaria"




Instance: noel
InstanceOf: $be-patient
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-nationality"
* extension.extension[0].url = "code"
* extension.extension[0].valueCodeableConcept = $be-fed-country#BE "Belgium"
* identifier.use = #official
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* identifier.value = "80010112344"
* active = true
* name.use = #official
* name.family = "Joyeux"
* name.given = "Noël"
* telecom[+].system = #email
* telecom[=].value = "noel.joyeux@belgium.be"
* telecom[=].system = #phone
* telecom[+].value = "+322476792981"
* telecom[=].use = #mobile
* telecom[+].system = #phone
* telecom[=].value = "+3226718655"
* telecom[=].use = #home
* gender = #male
* birthDate = "1980-01-10"
* address[+].extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* address[=].extension.valueCode = #nl
* address[=].use = #home
* address[=].type = #both
* address[=].text = "Sloordelle 42, 1160 Oudergem"
* address[=].line = "Sloordelle 42"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Sloordelle"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "42"
* address[=].city = "Oudergem"
* address[=].postalCode = "1160"
* address[=].country = "BE"
* address[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/language"
* address[=].extension[0].valueCode = #fr
* address[=].use = #home
* address[=].type = #both
* address[=].text = "42, Allee des Colzas, 1160 Auderghem"
* address[=].line = "42, Allee des Colzas"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Allee des Colzas"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "42"
* address[=].city = "Auderghem"
* address[=].postalCode = "1160"
* address[=].country = "BE"
* maritalStatus.coding[+] = $v3-MaritalStatus#M "Married"
* maritalStatus.coding[+] = $be-civilstate#20 "Married"
* generalPractitioner.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* generalPractitioner.identifier.value = "50010112345"


Instance: durant
InstanceOf: $be-practitioner
Usage: #example
* identifier[+].use = #official
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* identifier[=].value = "50010112345"
* identifier[+].use = #official
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi"
* identifier[=].value = "18749704355"
* name.use = #official
* name.family = "Durant"
* name.given = "Paul"
* name.suffix = "MD"
* telecom[+].system = #phone
* telecom[=].value = "023544117"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "paul.durant@durantclinique.be"
* telecom[=].use = #work
* address.use = #home
* address.text = "Koning Albertstraat 32, 1785 Merchtem"
* address.line = "Koning Albertstraat 32"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Koning Albertstraat"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "32"
* address.city = "Merchtem"
* address.postalCode = "1785"
* address.country = "BE"
* gender = #male

Instance: lenoir
InstanceOf: $be-practitioner
Usage: #example
* identifier[+].use = #official
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* identifier[=].value = "60010112355"
* identifier[+].use = #official
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi"
* identifier[=].value = "17535484332"
* name.use = #official
* name.family = "François"
* name.given = "Katherine"
* name.suffix = "MD"
* telecom[+].system = #phone
* telecom[=].value = "022675198"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "katherine.pulaski@enterprisehospital.be"
* telecom[=].use = #work
* address.use = #home
* address.text = "Jupiterlaan 5, 1853 Grimbergen"
* address.line = "Jupiterlaan 5"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Jupiterlaan"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "5"
* address.city = "Grimbergen"
* address.postalCode = "1853"
* address.country = "BE"
* gender = #female
* birthDate = "1979-12-11"
