/*
Profile:        BeAllergyIntolerance
Parent:         AllergyIntolerance
Id:             be-allergyintolerance
Title:          "Allergy Intolerance core BE profile"
Description:    """ 
    Belgian federal profile for an allergy and/or an intolerance. Initially based on the functional description of the NIHDI."""
* clinicalStatus ^definition = """The clinical status of the allergy or intolerance.
When available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."""
* clinicalStatus MS
* verificationStatus ^definition = "Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance (including pharmaceutical product).\n\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."
* verificationStatus MS
* type ^definition = "Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance (including pharmaceutical product).\n\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."
* type MS
* category ^definition = "Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance (including pharmaceutical product).\n\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."
* category MS
* code ^definition = """Code for an allergy or intolerance statement (either a positive or a negated/excluded statement). This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk
(e.g., 'Latex'), an allergy or intolerance condition (e.g., 'Latex allergy'), or a negated/excluded code for a specific substance or class (e.g., 'No latex allergy') or a general or categorical negated statement 
(e.g., 'No known allergy', 'No known drug allergies'). Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. 
For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and 
ignore the 'reaction.substance'. If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, 
then the receiving system should ignore AllergyIntolerance.reaction.substance.

A provider SHALL include it in the istance and a consumer SHALL record this in its consuming system. If needed codes can be used outside the given valueset, SNOMED-CT is preferred."""
* code 1..1
* code MS
* code from https://www.ehealth.fgov.be/standards/fhir/ValueSet/be-allergyintolerancecode (extensible)
* patient MS
* patient ^definition = """
The patient who has the allergy or intolerance.

A provider SHALL include it in the istance and a consumer SHALL record this in its consuming system."""
* patient ^type.targetProfile = https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient
* recordedDate 1..1
* recordedDate MS
* recordedDate ^definition = """The recordedDate represents when this particular AllergyIntolerance record was created in the system, which is often a system-generated date.

A provider SHALL include it in the istance and a consumer SHALL record this in its consuming system."""
* recorder 1..1
* recorder MS
* recorder ^definition = """Individual who recorded the record and takes responsibility for its content.

A provider SHALL include it in the istance and a consumer SHALL record this in its consuming system."""
* recorder ^type.targetProfile[0] = https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient
* recorder ^type.targetProfile[1] = https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner
* recorder ^type.targetProfile[2] = https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitionerrole
* recorder ^type.targetProfile[3] = http://hl7.org/fhir/StructureDefinition/Practitioner
* recorder ^type.targetProfile[4] = http://hl7.org/fhir/StructureDefinition/PractitionerRole
* recorder ^type.targetProfile[5] = http://hl7.org/fhir/StructureDefinition/Patient
* recorder ^type.targetProfile[6] = http://hl7.org/fhir/StructureDefinition/RelatedPerson
* note MS
* reaction MS
* reaction ^definition = """Details about each adverse reaction event linked to exposure to the identified substance.

When available, a provider SHOULD include it in the istance. When given, a consumer SHALL record this in its consuming system.
"""
* reaction.manifestation ^definition = """Clinical symptoms and/or signs that were observed or associated with the adverse reaction event.

When available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system. If needed codes can be used outside the given valueset, SNOMED-CT is preferred."""
* reaction.manifestation MS
* reaction.manifestation from https://www.ehealth.fgov.be/standards/fhir/ValueSet/be-riskmanifestation (extensible)
* reaction.exposureRoute MS
* reaction.exposureRoute ^definition = "Identification of the route by which the subject was exposed to the substance. If needed codes can be used outside the given valueset, SNOMED-CT is preferred."
* reaction.exposureRoute from https://www.ehealth.fgov.be/standards/fhir/ValueSet/be-exposureroute (extensible)
* reaction.note ^definition = """Additional text about the adverse reaction event not captured in other fields.

A note on this level SHOULD be avoided when not absolutely necessary. Preferably use the .note one level higher."""


*/


Instance: example-encounter-uzgent
InstanceOf: Encounter
Usage: #example
Description: ""
* status = #completed
* class =  http://terminology.hl7.org/CodeSystem/v3-ActCode#OBSENC
* location.location.reference = "Location/uz-gent"
* period.start = "2020-10-12"
* period.end = "2020-10-15"



Instance: example-encounter-uzgent-contained
InstanceOf: Encounter
Usage: #inline
Description: ""
* status = #completed
* class =  http://terminology.hl7.org/CodeSystem/v3-ActCode#OBSENC
* location.location.reference = "Location/uz-gent"
* period.start = "2020-10-12"
* period.end = "2020-10-15"




Instance: allergyintolerance-encounterReference
InstanceOf: BeAllergyIntolerance
Usage: #example
Description: ""
Title:    ""
* clinicalStatus = #active
* verificationStatus = #confirmed
* type = #allergy
* category = #food
* criticality = #higher
* code = http://snomed.info/sct#762952008
* patient.reference = "Patient/patient1"
* onsetDateTime = "2004"
* encounter.reference = "example-encounter-uzgent"
* recordedDate = "2014-10-09T14:58:00+11:00"
* recorder.reference = "Practitioner/practitioner1"
* asserter.reference = "Patient/patient1"
* lastOccurrence = "2012-06"
* note.text = "Some extra information can be given here."
* reaction.manifestation = http://snomed.info/sct#39579001
* reaction.onset = "2012-06-12"
* reaction.severity = #severe




Instance: allergyintolerance-encounterReference-contained
InstanceOf: BeAllergyIntolerance
Usage: #example
Description: ""
Title:    ""
* contained[0] = example-encounter-uzgent-contained
* clinicalStatus = #active
* verificationStatus = #confirmed
* type = #allergy
* category = #food
* criticality = #higher
* code = http://snomed.info/sct#762952008
* patient.reference = "Patient/patient1"
* onsetDateTime = "2004"
* encounter.reference = "#example-encounter-uzgent-contained"
* recordedDate = "2014-10-09T14:58:00+11:00"
* recorder.reference = "Practitioner/practitioner1"
* asserter.reference = "Patient/patient1"
* lastOccurrence = "2012-06"
* note.text = "Some extra information can be given here."
* reaction.manifestation = http://snomed.info/sct#39579001
* reaction.onset = "2012-06-12"
* reaction.severity = #severe






Extension: ExposureRisk
Id: exposure-risk
Description: "Exposure Risk"
* value[x] only CodeableConcept
* value[x] ^short = "The consequence of exposure"
* value[x] ^definition = "How the patient may react in case of exposure - This consequence can be inferred by previous reactions or determined from other information"

