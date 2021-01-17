Alias: $loinc = http://loinc.org

Instance: dzop-team-0002-doctors
InstanceOf: BeHomeCareTeam
Usage: #example
* meta.versionId = "3"
* identifier.value = "DZOP-Pia-2020001"
* status = #active
* category = $loinc#LA28866-4 "Home & Community Based Services (HCBS)-focused care Team"
* name = "Pia's 2020 Care Team for post-op care - doctors ad-hoc team"
* subject.reference = "Patient/pia"
* subject.display = "Pia"
* period.end = "2013-01-01"
* participant[+].role.text = "care-coordinator"
* participant[=].member.reference = "Practitioner/dragon"
* participant[=].member.display = "Dr Dragon"
* participant[+].role.text = "specialist"
* participant[=].member.reference = "Practitioner/david"
* participant[=].member.display = "Dr David"
* managingOrganization.reference = "Organization/dzop"


Instance: dzop-team-0002-nurses
InstanceOf: BeHomeCareTeam
Usage: #example
* meta.versionId = "3"
* identifier.value = "DZOP-Pia-2020001"
* status = #active
* category = $loinc#LA28866-4 "Home & Community Based Services (HCBS)-focused care team"
* name = "Pia's 2020 Care team for post-op care - Nurses and acaregivers ad-hoc team"
* subject.reference = "Patient/pia"
* subject.display = "Pia"
* period.end = "2013-01-01"
* participant[+].role.text = "healthcare-actor"
* participant[=].member.reference = "Practitioner/nathalie"
* participant[=].member.display = "Nurse Nathalie"
* participant[+].role.text = "informal care actor"
* participant[=].member.reference = "RelatedPerson/dina"
* participant[=].member.display = "Dina (daughter)"
* participant[=].period.end = "2013-01-01"
* managingOrganization.reference = "Organization/dzop"

Instance: dzop-team-0002
InstanceOf: BeHomeCareTeam
Usage: #example
* meta.versionId = "2"
* identifier.value = "DZOP-Pia-2020001"
* status = #active
* category = $loinc#LA28866-4 "Home & Community Based Services (HCBS)-focused care team"
* name = "Pia's 2020 Careteam for post-op care"
* subject.reference = "Patient/pia"
* subject.display = "Pia"
* period.start = "2019-11-02"
* period.end = "2020-11-01"
* participant[+].role.text = "care-coordinator"
* participant[=].member.reference = "Practitioner/dragon"
* participant[=].member.display = "Dr Dragon"
* participant[+].role.text = "welfare-actor"
* participant[=].member.reference = "Practitioner/christa"
* participant[=].member.display = "Caregiver Christa"
* participant[+].role.text = "healthcare-actor"
* participant[=].member.reference = "Practitioner/nathalie"
* participant[=].member.display = "Nurse Nathalie"
* participant[+].role.text = "informal care actor"
* participant[=].member.reference = "RelatedPerson/dina"
* participant[=].member.display = "Dina (daughter)"
* participant[=].period.end = "2013-01-01"
* participant[+].role.text = "welfare-actor"
* participant[=].member.reference = "Organization/diensten-gent"
* participant[=].member.display = "Lokaal dienstencentrum Gent"
* managingOrganization.reference = "Organization/dzop"

Instance: dzop-team-0002.v0
InstanceOf: BeHomeCareTeam
Usage: #example
* identifier.value = "DZOP-Pia-2020001"
* status = #proposed
* category = $loinc#LA28866-4 "Home & Community Based Services (HCBS)-focused care team"
* name = "Pia's 2020 Care team for post-op care"
* subject.reference = "Patient/pia"
* subject.display = "Pia"
* period.start = "2019-11-02"
* period.end = "2020-11-01"
* participant[+].role.text = "care-coordinator"
* participant[=].member.reference = "Practitioner/dragon"
* participant[=].member.display = "Dr Dragon"
* participant[+].role.text = "healthcare-actor"
* participant[=].member.reference = "Practitioner/nathalie"
* participant[=].member.display = "Nurse Nathalie"
* participant[+].role.text = "informal care actor"
* participant[=].member.reference = "RelatedPerson/dina"
* participant[=].member.display = "Dina (daughter)"
* participant[=].period.end = "2013-01-01"
* participant[+].role.text = "welfare-actor"
* participant[=].member.reference = "Organization/diensten-gent"
* participant[=].member.display = "Lokaal dienstencentrum Gent"
* managingOrganization.reference = "Organization/dzop"

Instance: dzop-team-0002.v1
InstanceOf: BeHomeCareTeam
Usage: #example
* meta.versionId = "1"
* identifier.value = "DZOP-Pia-2020001"
* status = #active
* category = $loinc#LA28866-4 "Home & Community Based Services (HCBS)-focused care team"
* name = "Pia's 2020 Care team for post-op care"
* subject.reference = "Patient/pia"
* subject.display = "Pia"
* period.start = "2019-11-02"
* period.end = "2020-11-01"
* participant[+].role.text = "care-coordinator"
* participant[=].member.reference = "Practitioner/dragon"
* participant[=].member.display = "Dr Dragon"
* participant[+].role.text = "welfare-actor"
* participant[=].member.reference = "Practitioner/christa"
* participant[=].member.display = "Caregiver Christa"
* participant[+].role.text = "healthcare-actor"
* participant[=].member.reference = "Practitioner/nathalie"
* participant[=].member.display = "Nurse Nathalie"
* participant[+].role.text = "informal care actor"
* participant[=].member.reference = "RelatedPerson/dina"
* participant[=].member.display = "Dina (daughter)"
* participant[=].period.end = "2013-01-01"
* participant[+].role.text = "welfare-actor"
* participant[=].member.reference = "Organization/diensten-gent"
* participant[=].member.display = "Lokaal dienstencentrum Gent"
* managingOrganization.reference = "Organization/dzop"

Instance: dzop-team-0002.v2
InstanceOf: BeHomeCareTeam
Usage: #example
* meta.versionId = "2"
* identifier.value = "DZOP-Pia-2020001"
* status = #active
* category = $loinc#LA28866-4 "Home & Community Based Services (HCBS)-focused care team"
* name = "Pia's 2020 Care team for post-op care"
* subject.reference = "Patient/pia"
* subject.display = "Pia"
* period.start = "2019-11-02"
* period.end = "2020-11-01"
* participant[+].role.text = "care-coordinator"
* participant[=].member.reference = "Practitioner/dragon"
* participant[=].member.display = "Dr Dragon"
* participant[+].role.text = "welfare-actor"
* participant[=].member.reference = "Practitioner/christa"
* participant[=].member.display = "Caregiver Christa"
* participant[+].role.text = "healthcare-actor"
* participant[=].member.reference = "Practitioner/nathalie"
* participant[=].member.display = "Nurse Nathalie"
* participant[+].role.text = "informal care actor"
* participant[=].member.reference = "RelatedPerson/dina"
* participant[=].member.display = "Dina (daughter)"
* participant[=].period.end = "2013-01-01"
* participant[+].role.text = "welfare-actor"
* participant[=].member.reference = "Organization/diensten-gent"
* participant[=].member.display = "Lokaal dienstencentrum Gent"
* managingOrganization.reference = "Organization/dzop"