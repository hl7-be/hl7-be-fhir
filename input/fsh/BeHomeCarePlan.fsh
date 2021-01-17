Profile:        BeHomeCarePlan
Parent:         CarePlan
Id:             be-homecare-plan
Title:          "Homecare Plan"
Description : """
This is the profile for Care Plan in a home care setting. A Care Plan contains the activities planned and/or performed by a care team to deliver care for a particular patient, usually targeting a specific goal or condition - or a set thereof."""

* ^publisher = "HL7 Belgium"
* . ^definition = "Describes the intention of how a care team intends to deliver care for a particular patient, group or community for a period of time, usually limited to care for a specific condition or set of conditions."


* identifier MS

* instantiatesCanonical MS
* instantiatesCanonical ^short = "The protocol or definition that is instantiated by this care plan"
* instantiatesCanonical ^requirements = "This will be used when we have the &quot;Care Plan Templates&quot; - for example from weight loss to quit smoking, or hip replacement surgery physiotherapy for recovery"

* instantiatesUri MS
* instantiatesUri ^short = "The protocol or definition that is instantiated by this care plan"
* instantiatesUri ^requirements = "This is used for supporting external references to the care plan or protocol e.g. government guidelines"

* basedOn only Reference(BeHomeCarePlan)
* basedOn MS

* replaces only Reference(BeHomeCarePlan)
* replaces MS


* partOf only Reference(BeHomeCarePlan)
* partOf MS

* status MS
* intent MS

* category ^definition = "Identifies what &quot;kind&quot; of plan this is to support differentiation between multiple co-existing plans; e.g. &quot;Home health&quot;, &quot;psychiatric&quot;, &quot;asthma&quot;, &quot;disease management&quot;, &quot;wellness plan&quot;, etc.&#xD;&#xA;This should be controlled terminology (e.g. SNOMED)"
* category MS

* title MS
* description MS

* subject MS
* subject only Reference(https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient)

* encounter MS
* period MS
* created ^comment =  "Note that this is NOT the care plan start date, but the date it was created"

* author only Reference(https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitionerrole or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-organization or BeHomeCareTeam) 
* author MS

* contributor only Reference(https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitionerrole or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-organization or BeHomeCareTeam) 
* contributor MS

* careTeam only Reference(https://www.hl7belgium.org/fhir/StructureDefinition/be-homecare-team)
* careTeam MS

* goal MS

* activity MS

* activity.outcomeCodeableConcept MS
* activity.progress MS
* activity.detail.kind MS
* activity.detail.instantiatesCanonical MS
* activity.detail.instantiatesUri MS

* activity.detail.code MS

* activity.detail.status MS

* activity.detail.statusReason MS

* activity.detail.doNotPerform MS

* activity.detail.scheduled[x] MS

* activity.detail.location MS

* activity.detail.performer only Reference(https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitionerrole or https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-organization or BeHomeCareTeam)
* activity.detail.performer MS

* activity.detail.description MS