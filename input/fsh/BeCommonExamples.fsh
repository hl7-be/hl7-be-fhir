Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Alias: $be-practitioner = https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner


Instance: pia-depression
InstanceOf: Condition
Usage: #example
Description: "Patient Pia Peters - Depression Condition"
Title:  "Patient Pia Peters - Depression Condition"
* subject.reference = "Patient/pia"
* subject.display = "Pia Peters"
* code.text = "Depression"
* code = $sct#35489007

Instance: pia-diabetes
InstanceOf: Condition
Usage: #example
Description: "Patient Pia Peters - Diabetes Condition"
Title:  "Patient Pia Peters - Diabetes Condition"
* subject.reference = "Patient/pia"
* subject.display = "Pia Peters"
* code.text = "Diabetes mellitus"
* code = $sct#73211009

Instance: pia-loneliness
InstanceOf: Condition
Usage: #example
Description: "Patient Pia Peters - Loneliness feeling Condition"
Title:  "Patient Pia Peters - Loneliness Condition"
* subject.reference = "Patient/pia"
* subject.display = "Pia Peters"
* code.text = "Loneliness"
* code = $sct#267076002

