Throughout this document, the following conventions apply:



### Use of MUST, SHOULD, MAY



The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED",  "MAY", and "OPTIONAL" in this document are to be interpreted as described in [RFC 2119](https://www.ietf.org/rfc/rfc2119.txt):

> 1. **MUST**, or the terms "**REQUIRED**" or "**SHALL**", mean that the definition is an absolute requirement of the specification.
>    
> 2. **MUST NOT**, or the phrase "**SHALL NOT**", mean that the definition is an absolute prohibition of the specification.
>    
> 3. **SHOULD**, or the adjective "**RECOMMENDED**", mean that there may exist valid reasons in particular circumstances to ignore a particular item, but the full implications must be understood and carefully weighed before choosing a different course.
>    
> 4. **SHOULD NOT**, or the phrase "**NOT RECOMMENDED**" mean that there may exist valid reasons in particular circumstances when the particular behaviour is acceptable or even useful, but the full implications should be understood and the case carefully weighed before implementing any behaviour described with this label. 
>    
> 5. **MAY**, or the adjective "**OPTIONAL**", mean that an item is truly optional.  One vendor may choose to include the item because a particular marketplace requires it or because the vendor feels that it enhances the product while another vendor may omit the same item. An implementation which does not include a particular option MUST be prepared to interoperate with another implementation which does include the option, though perhaps with reduced functionality. In the same vein an implementation which does include a particular option
>    MUST be prepared to interoperate with another implementation which does not include the option (except, of course, for the feature the option provides.)







### Must Support



Unless otherwise stated, the following criteria apply to elements marked as "Must Support" in this Implementation Guide:

##### For technical profiles

**Systems supporting the profile MUST NOT ignore the field.**

* Systems receiving or consuming a resource instance:

  * MUST be able to process the field's content when it is present
  * MUST process the content according to the rules defined for the profile
  * MUST NOT fail when the value is not present.

* Systems sending or creating a resource instance 

  * SHOULD populate the element when the information is available
  * MUST populate the element according to the rules defined for the profile

  



##### For Logical Models

* **Functional Analysis MUST consider the data element as defined** 

  * "Must Support" elements that are used in an implementation MUST inherit the behaviour and constraints defined for the data element
  * "Must Support" elements not needed in a particular implementation MAY be excluded from implementation but such exclusion MUST be described

* **Derived implementations SHOULD inherit the field's "Must Support" flag**

  







------

<!-- This is commented out. -->