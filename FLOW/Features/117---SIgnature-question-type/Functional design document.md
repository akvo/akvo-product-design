# Functional Design document

Signature question type
-------------

### Documents
User stories
https://docs.google.com/document/d/1b43HEjnh17FoDsS1AnyyHukvMmKHDFDKfDwOo-QP4Q4/edit
Initial feature identification document
https://docs.google.com/document/d/1vOfkxxhP0nYel16RWK38ppjKpjIWstCVHkFr7vsRQIk/edit

### Overview
The ‘signature’ question type enables users to place their electronic signature in a form. An e-signature is any ‘mark’ made by the person to confirm their approval of the document, information, or transaction.

Note: There are two terms commonly used for electronic signatures. An electronic signature is any signature in electronic form, as a scanned image of one’s ink signature, a mouse scribble, a voice signature, etc. A digital signature, which is actually a subset of electronic signatures, goes further in terms of proving who could have made the mark. Akvo FLOW signatures fulfill all requirements for electronic signatures, which are legally binding in almost all countries. Akvo FLOW records the time when the signature was taken, as well as the ID of the device for confirmation.

We cannot fully implement non-repudiation, as we don't have access to digital identities. Implementing a digital signature which has stronger legal ground in comparison to electronic signature is more complex and there are existing tools which provide such functionality. We have decided to provide a functionality that is commonly used in survey tools, and is fulfils all requirements of an electronic signature. The legal limitations of electronic signatures need to be explicitly added to the FLOW documentation.

### Marketing description
A marketing description of this feature.

### Initial features
The initial list of functionalities that this feature will contain

1. On the survey creation part:
   - new question type: Signature 
   - Settings on the question: checkbox ‘add text before the signature’. If user clicks yes, a text field opens, where the dashboard user types in the wanted text.

2. On the app: 
   - button under the question text ‘add signature’ that opens a new screen 
   - new screen - flipped horizontally - holds the signature ‘canvas’ as wide as the phone screen lenght
      - the canvas has a line to indicate where to sign
      - under the canvas: 'I understand this is an electronic representation of my signature' 
      - clear and save buttons 
   - the signature is saved as an image and shown under the question text

3. 


### Non goals
What this feature will not contain

### Scenarios
Please check User stories docuemnt 
https://docs.google.com/document/d/1b43HEjnh17FoDsS1AnyyHukvMmKHDFDKfDwOo-QP4Q4/edit

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided

### Details
Details, details, details.

Approved and ready for Visual Design by: 
