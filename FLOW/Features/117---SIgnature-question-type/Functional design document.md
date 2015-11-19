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

We cannot fully implement non-repudiation, as we don't have access to digital identities. Implementing a digital signature which has stronger legal ground in comparison to electronic signature is more complex and there are existing tools which provide such functionality. We have decided to provide a functionality that is commonly used in survey tools, and fulfils all requirements of an electronic signature. The legal limitations of electronic signatures need to be explicitly added to the FLOW documentation.

### Marketing description
A marketing description of this feature.

### Initial features
The initial list of functionalities that this feature will contain

1. On the survey creation part:
   - new question type: Signature 

2. On the app:
   - button under the question name ‘add signature’ that opens a new screen 
   - new screen - flipped horizontally - holds the signature ‘canvas’ as wide as the phone screen lenght
      - the canvas has a line to indicate where to sign
      - under the canvas: 'I understand this is an electronic representation of my signature.' 
      - 'clear' and 'save' buttons 
         - clear implies that the scribbled signature is removed from the canvas fully and the user can try again
   - the user adds the signature using his finger or a stylus
   - the signature is saved as an image and shown under the question name
   - if the dashboard user has added a text to the signature question (which provides a clause that the person signing should agree with, be aware of or confirm) then this text is displayed under the question name, followed by the 'add signature' button

3. Collecting signatures via Webforms
   - the webform will hold the signature canvas (identical as in the app) directly under the question name or question name + signature text
   - under the canvas is the default text: 'I understand this is an electronic repesentation of my signature.'
   - 'clear' and 'save' buttons
   - the user via the mouse draws the signature, saves it and the signature appears as a picture answer in the webform 

4. Previewing submitted data (in Inspect data sub-tab and Monitoring sub-tab) 
    - signature is saved as a picture and is displayed when the users views the submitted form
       - Currently the users get a link to the photo, which opens the picture in a separate tab. If possible, we should show the photos and signatures directly 
   - signature will not be 'editable' (same behaviour as a picture) 

5. Report
   - same behaviour as a photo question 
   - when data is collected via the app we save meta data as timestamp of submission, submission ID, Device ID, user name. These are sufficient enough to verify the signature based on the rules around electronic signature.
   - regarding data collected via the webforms we need to provide this type of meta data as well 
      - the open question is Device ID

### Non goals
What this feature will not contain

### Scenarios
Please check User stories docuemnt 
https://docs.google.com/document/d/1b43HEjnh17FoDsS1AnyyHukvMmKHDFDKfDwOo-QP4Q4/edit

### Technical notes
Any technical issues or questions that are already known

### Open issues

Any known issues that need to be decided

1. When on the app in the signature canvas - what if the user does not want to add a signature and wants to return back to the form? Will he use the device 'back arrow' or will we add a 'x' (close) / 'back arrow' for navigation?  

2. In the reports, when the signature is submitted via the webforms we have not decided for a substitute of the Device ID (which is saved with each submission thruogh the app) 

### Details
Details, details, details.

Approved and ready for Visual Design by: 
