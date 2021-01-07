Profile:        BeCommunication
Parent:         Communication
Id:             be-communication
Title:          "Communication profile"
Description : """
This is the technical specification for the Communication resource, as it is used in Belgium.
This technical specification corresponds to the FHIR implementation of the Communication section of the Logical Data Model.
This specification is compatible with the current version of KMEHR Diary Note, namely the selection of attributes that are supported, and the maximum length of the payload (320 characters).
It also relies on the foundation Belgium resources, for example the Belgian Patient, Practitioner and other resources.
"""

* identifier MS
* identifier ^short = "Unique identifier for this communication"
* identifier ^definition = "Unique identifier for this communication. Unlike the resource's _id, this identifier must resolve across systems."

* status ^short = "Status of this communication: preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown"
* status MS

* subject MS
* subject ^short = "Subject of the communication - typically Patient"
* subject only Reference(https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient or Group)



* topic MS
* topic ^short = "Topic of the communication"
* topic from https://www.hl7belgium.org/fhir/ValueSet/be-diarytopic (preferred)

* sent MS
* sent ^short = "Date and Time that the communication has been sent"

* recipient MS
* recipient ^short = "Intended receiver of the communication"
* recipient ^definition = "This field indicates the intended receiver of the communication. For messages, this SHALL be explicitly indicated, even when it can be assumed e.g. to be the patient's Care Team. For diary notes, this can be optional."
* recipient only Reference(Device or Organization or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitionerrole or RelatedPerson or Group or CareTeam or HealthcareService)


* sender MS
* sender ^short = "The actual sender of the communication"
* sender ^definition = "This field contains the sender of the communication. If the communication is entered by a nurse on behalf of a physician, this shall refer to the nurse."
* sender only Reference(Device or Organization or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitionerrole or RelatedPerson or HealthcareService)


* payload MS
* payload ^short = "The content of the communication or diary note. Text (up to 320 characters), Attachments (base-64 encoded) or References."
* payload ^definition = "This content can be free Text (up to 320 characters), or Attachments (e.g. a photo) or References to other resources (e.g. a Binary resource containing a photo)."
* payload ^comment = "For systems that are intending to be backwards compatible with KMEHR, only the text is allowed."

* payload.content[x] ^short = "Communication content"
* payload.content[x] ^definition = "A communicated content (or for multi-part communications, one portion of the communication). This can be a string, an attachment, or a reference to a resource."

* payload.contentString ^comment = "NOTE: The string element is valid only for FHIR 4.0.1, and it will likely be replaced by another data type (Annotation) in future releases of FHIR and of this profile."

* category MS
* priority MS
