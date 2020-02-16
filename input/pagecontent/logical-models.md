Logical Data Models Overview

#### Purpose

A Logical Data Model is intended for non-technical users to express and validate the functional requirements for exchange of information, from a functional or clinical perspective.

Logical Data Models represent an abstract data model, independently of FHIR resources or datatypes or any technical implementation. They are building blocks that can be reused and across other models. For example models like Patient or Practitioner can be reused in a series of more complex models:

![image-20200216102037316](.\image-20200216102037316.png)



Because they are decoupled from any technical implementation, Logical Data Models constitute a foundational aspect of the interoperability design, by supporting a stable, common understanding of the interoperability data needs.

The Logical Data Models are mapped to the corresponding FHIR implementations. They can also be mapped to KMEHR or CDA implementations, which allows for a pathway for migration and legacy support.



![image-20200216102338553](.\image-20200216102338553.png)





#### Logical Data Models in the overall Architecture

* The Logical Data Model is on the System level (Zachman framework) and in the Data Architecture (TOGAF).
* It is possible to express also conceptual data models (which are similar to the Dutch ZIBs). The key difference between Logical and Conceptual data models is that the Conceptual Data Model focuses on the relations and definitions, while the Logical Data Model expresses more details about supported relations, optionality, cardinality, data types, referential integrity, etc. In short, Conceptual Data Models express *what the information means*, while Logical Data Models provide more details on *how the information is materialized*.



#### Logical Data Model representation

The Logical Data Models can be represented in several forms. They are stored as FHIR artefacts, which makes them computable, which in turn provides the following possibilities:

* Data Classification
* Assisted or automated mapping between data elements



#### Common considerations on Belgian Logical Data Models

* To maintain consistency, the Logical Data Models may rely on the existing FHIR data types. This is just an option and is not mandatory.
* Many of the data elements that contain text can have multiple language representations. This is obvious for example for reference data that has several display values in different languages, but also in other data elements such as "Street name". When a Logical Data Model expresses a data element as being a String with cardinality 1, this means that the data element is one, but it may have different representations in different languages. In the example below, of a Care Team having a name (0..1), this does not mean that the team it will have only one expression of the name - it rather means that the team has one name. The translations and language representations of that name are left to the implementation.





![image-20200216105813642](.\image-20200216105813642.png)



#### List of Logical Data Models 

The following Logical Data Models are defined in this specification:

* Patient
* Practitioner
* PractitionerRole
* Communication
* Allergy Intolerance
* Care Team
* Care Plan
* Immunization Record