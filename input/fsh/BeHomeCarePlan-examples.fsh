Alias: $loinc = http://loinc.org

Instance: pia-careplan1-v0
InstanceOf: BeHomeCarePlan
Usage: #example
Description: "Care plan for patient Pia to manage diabetes"
Title:  "HomeCarePlan - Pia - diabetes 2019-2020"
* status = #draft
* intent = #proposal
* category = $loinc#LA28866-4
* period.start = "2019-11-02"
* meta.versionId = "0"

* created = "2019-11-02T09:15:15Z"
* author = Reference("Practitioner/dragon")
* subject = Reference("Patient/pia")
* contributor = Reference("Practitioner/dragon")
* careTeam = Reference("CareTeam/dzop-team-0002.v1")
* addresses = Reference("Condition/pia-diabetes")
* supportingInfo.identifier.system = "http://belrai.be"
* supportingInfo.identifier.value = #74196-7
* goal.display = "Diabetes management for Patient Pia"
* goal[+].display = "Depression recovery"
* goal[+].display = "Restore family connections"
* activity.progress.text = "Planned"
* activity.reference.display = "Appointment with nurse"


Instance: pia-careplan1-v1
InstanceOf: BeHomeCarePlan
Usage: #example
Description: "Care plan for patient Pia to manage diabetes"
Title:  "HomeCarePlan - Pia - diabetes 2019-2020"
* status = #active
* intent = #proposal
* category = $loinc#LA28866-4
* period.start = "2019-11-02"
* meta.versionId = "1"

* created = "2019-11-02T09:15:15Z"
* author = Reference("Practitioner/dragon")
* subject = Reference("Patient/pia")
* contributor = Reference("Practitioner/dragon")
* careTeam = Reference("CareTeam/dzop-team-0002.v2")
* addresses = Reference("Condition/pia-diabetes")
* supportingInfo.identifier.system = "http://belrai.be"
* supportingInfo.identifier.value = #74196-7
* goal.display = "Diabetes management for Patient Pia"
* goal[+].display = "Depression recovery"
* goal[+].display = "Restore family connections"
* activity.progress.text = "Planned"
* activity.reference.display = "Appointment with nurse"
* activity.reference.reference = "Appointment/pia-001-v0"



Instance: pia-careplan2-v1
InstanceOf: BeHomeCarePlan
Usage: #example
Description: "Care plan for patient Pia to manage diabetes"
Title:  "HomeCarePlan - Pia - diabetes 2019-2020"
* status = #active
* intent = #plan
* category = #homecare // need system
* period.start = "2019-11-02"
* meta.versionId = "1"
* replaces = Reference(CarePlan/pia-careplan1-v1)
* addresses = Reference("Condition/pia-diabetes")
* addresses = Reference("Condition/pia-depression")
* addresses = Reference("Condition/pia-isolation")
* supportingInfo.identifier.system = "http://belrai.be"
* supportingInfo.identifier.value = #74196-7
* goal.display = "Diabetes management for Patient Pia"
* goal[+].display = "Depression recovery"
* goal[+].display = "Restore family connections"


* created = "2019-11-02T09:15:15Z"
* author = Reference("Practitioner/dragon")
* subject = Reference("Patient/pia")
* contributor = Reference("Practitioner/dragon")
* careTeam = Reference("CareTeam/dzop-team-0002.v2")

* activity[+].progress.text = "Planned"
* activity[=].detail.kind = #Appointment
* activity[=].detail.code = #nursingcode1 // system missing
* activity[=].detail.status = #scheduled
* activity[=].detail.scheduledTiming.repeat.frequency = 1
* activity[=].detail.scheduledTiming.repeat.period = 1
* activity[=].detail.scheduledTiming.repeat.periodUnit = #d
* activity[=].detail.scheduledTiming.repeat.boundsDuration.value = 10
* activity[=].detail.scheduledTiming.repeat.boundsDuration.unit = #d
* activity[=].detail.location.display = "Patient's home"

* activity[+].progress.text = "Planned"
* activity[=].detail.kind = #MedicationRequest
* activity[=].detail.status = #scheduled
* activity[=].detail.scheduledTiming.repeat.frequency = 1
* activity[=].detail.scheduledTiming.repeat.period = 1
* activity[=].detail.scheduledTiming.repeat.periodUnit = #d
* activity[=].detail.scheduledTiming.repeat.boundsRange.low.value = 3
* activity[=].detail.scheduledTiming.repeat.boundsRange.low.unit = #mo
* activity[=].detail.location.display = "Patient's home"

* activity[+].progress.text = "Planned"
* activity[=].detail.kind = #ServiceRequest
* activity[=].detail.status = #scheduled
* activity[=].detail.scheduledTiming.repeat.frequency = 3
* activity[=].detail.scheduledTiming.repeat.period = 1
* activity[=].detail.scheduledTiming.repeat.periodUnit = #wk
* activity[=].detail.location.display = "Patient's home"



