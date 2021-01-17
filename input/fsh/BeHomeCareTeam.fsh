Profile:        BeHomeCareTeam
Parent:         CareTeam
Id:             be-homecare-team
Title:          "Homecare Team"
Description : """
This is the Belgian profile for home care team. A home care team defines the people and roles organized around a patient's care activities planned. It may also imply additional aspects such as access to information etc."""

* ^publisher = "HL7 Belgium"

* status MS

* category MS
* category from http://hl7.org/fhir/ValueSet/care-team-category (example)

* subject only Reference(BePatient)
* participant MS

* participant.member only Reference(BePatient or BePractitioner or BeOrganization or BeHomeCareTeam or RelatedPerson)
* participant.onBehalfOf only Reference(BeOrganization)
* managingOrganization only Reference(BeOrganization)
* note MS
