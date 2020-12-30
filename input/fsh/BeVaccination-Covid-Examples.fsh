/* ====================================================================================================== */
Instance: org-pfizer
InstanceOf: BeOrganization
Usage: #inline
Description: "Pfizer Belgium"
* active = true
* name = "Pfizer - Belgium"
* identifier.value = "0400.778.165"
* identifier.system = "https://kbopub.economie.fgov.be"

Instance: org-astrazeneca
InstanceOf: BeOrganization
Usage: #inline
Description: "AstraZeneca Belgium"
* active = true
* name = "AstraZeneca - Belgium"
* identifier.value = "0400.165.679"
* identifier.system = "https://kbopub.economie.fgov.be"

Instance: org-vub-brussels
InstanceOf: BeOrganization
Usage: #inline
Description: "AstraZeneca Belgium"
* active = true
* name = "AstraZeneca - Belgium"
* identifier.value = "0400.165.679"
* identifier.system = "https://kbopub.economie.fgov.be"



Instance: pfizer-s0001
InstanceOf: Medication
Usage: #inline
* id = "pfizer-s0001"
* code.coding = http://ehealth.fgov.be/cnk-codes#19013168
* identifier.system = "https://covid-vaccine-tracking.be/serialnumbers#034753633001"
* batch.lotNumber = "B037453"
* batch.expirationDate = "2020-06-30"

Instance: pfizer-s0002
InstanceOf: Medication
Usage: #inline
* id = "pfizer-s0002"
* code.coding = http://ehealth.fgov.be/cnk-codes#19013168
* identifier.system = "https://covid-vaccine-tracking.be/serialnumbers#034753633002"
* batch.lotNumber = "B037471"
* batch.expirationDate = "2020-08-31"

Instance: pfizer-s0003
InstanceOf: Medication
Usage: #inline
* id = "pfizer-s0003"
* code.coding = http://ehealth.fgov.be/cnk-codes#19013168
* identifier.system = "https://covid-vaccine-tracking.be/serialnumbers#034753633003"
* batch.lotNumber = "B037477"
* batch.expirationDate = "2020-09-30"



/*============================================= Example 1 =============================================*/
Instance: covid-jan-1
InstanceOf: BeVaccination
Usage: #example
Description: "Jan's first COVID-19 vaccination"
Title:   "Jan's first COVID-19 vaccination"
* contained[0] =  pfizer-s0001
* identifier.value = "134c357c-745b-4a55-43b5-3856240bc740"
* identifier.system = "https://www.ehealth.fgov.be/covid-vaccination/vaccination-register"
* status = #completed
* patient.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* patient.identifier.value = "70072376921"
* recorded = "2020-02-22"
* extension[vaccination-location].valueReference = Reference(org-vub-brussels)
* lotNumber = "B037453"
* occurrenceDateTime = "2020-02-22"
* manufacturer = Reference(org-pfizer)
* doseQuantity.value = 1
* performer[0].actor.identifier.use = #official
* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization"
* performer[0].actor.identifier.value = "4605123"
* performer[0].actor.display = "Huisarts 1"
* vaccineCode.coding[0].system = "http://www.ehealth.fgov.be/standards/fhir/NamingSystem/vaccine-codes"
* vaccineCode.coding[0].code = #covid19
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2
* extension[administeredProduct].valueReference = Reference(pfizer-s0001)
* extension[vaccination-confirmationStatus].valueCode = #confirmed


/*============================================= Example 2 =============================================*/
Instance: covid-jan-2-discarded
InstanceOf: BeVaccination
Usage: #example
Description: "Jan's second failed COVID-19 vaccination"
Title:   "Jan's second failed COVID-19 vaccination"
* contained[0] =  pfizer-s0002
* identifier.value = "134c357c-745b-4a55-43b5-1248340bc711"
* identifier.system = "https://www.ehealth.fgov.be/covid-vaccination/vaccination-register"
* status = #not-done
* statusReason.coding.code = #DAMAGED
* patient.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* patient.identifier.value = "70072376921"
* recorded = "2020-03-22"
* extension[vaccination-location].valueReference = Reference(org-vub-brussels)
* lotNumber = "B037471"
* occurrenceDateTime = "2020-03-22"
* manufacturer = Reference(org-pfizer)
* doseQuantity.value = 1
* performer[0].actor.identifier.use = #official
* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization"
* performer[0].actor.identifier.value = "4605123"
* performer[0].actor.display = "Huisarts 1"
* vaccineCode.coding[0].system = "http://www.ehealth.fgov.be/standards/fhir/NamingSystem/vaccine-codes"
* vaccineCode.coding[0].code = #covid19
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2
* extension[administeredProduct].valueReference = Reference(pfizer-s0002)
* extension[vaccination-confirmationStatus].valueCode = #confirmed

/*============================================= Example 3 =============================================*/
Instance: covid-jan-3
InstanceOf: BeVaccination
Usage: #example
Description: "Jan's second successful COVID-19 vaccination"
Title:   "Jan's second successful COVID-19 vaccination"
* contained[0] =  pfizer-s0003
* identifier.value = "134c357c-745b-4a55-43b5-3856240bc740"
* identifier.system = "https://www.ehealth.fgov.be/covid-vaccination/vaccination-register"
* status = #completed
* patient.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* patient.identifier.value = "70072376921"
* recorded = "2020-03-24"
* extension[vaccination-location].valueReference = Reference(org-vub-brussels)
* lotNumber = "B037477"
* occurrenceDateTime = "2020-03-24"
* manufacturer = Reference(org-pfizer)
* doseQuantity.value = 1
* performer[0].actor.identifier.use = #official
* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization"
* performer[0].actor.identifier.value = "4605123"
* performer[0].actor.display = "Huisarts 1"
* vaccineCode.coding[0].system = "http://www.ehealth.fgov.be/standards/fhir/NamingSystem/vaccine-codes"
* vaccineCode.coding[0].code = #covid19
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2
* extension[administeredProduct].valueReference = Reference(pfizer-s0003)
* extension[vaccination-confirmationStatus].valueCode = #confirmed

