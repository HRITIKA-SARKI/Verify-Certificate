# Certification Verification System

## Vision
![alt text](<Screenshot 2024-08-21 at 12.17.10 PM.png>)
The Certification Verification System aims to provide a secure and transparent solution for issuing and verifying educational certificates using blockchain technology. By leveraging smart contracts, this system ensures certificates are issued by authorized entities and can be verified by anyone with the certificate ID. The goal is to prevent fraud and streamline the certificate management process.

## Flowchart

### Issuing a Certificate

1. **Institution/User** initiates the issuance of a certificate by providing:
   - Student’s address
   - Certificate ID
   - Course Name
   - Institution Name

2. **System** checks if the Certificate ID already exists in the blockchain:
   - If the **Certificate ID does not exist**, proceed to issue the certificate.
   - If the **Certificate ID exists**, halt the process and return an error message.

3. **System** stores the new certificate details on the blockchain, including:
   - Course Name
   - Institution Name
   - Issued By (address of the institution)
   - Issuance Date (timestamp)

4. **System** emits an `CertificateIssued` event with the following details:
   - Certificate ID
   - Student’s address
   - Course Name
   - Institution Name
   - Issuance Date

### Verifying a Certificate

1. **Verifier/User** requests to verify a certificate by providing the Certificate ID.

2. **System** retrieves the certificate details from the blockchain:
   - If the **Certificate exists**, return the certificate details, including:
     - Course Name
     - Institution Name
     - Issued By (address of the institution)
     - Issuance Date
   - If the **Certificate does not exist**, return a response indicating that the certificate is not found.

3. **System** returns the verification results to the verifier, indicating whether the certificate exists and providing its details if available.

## Contract Address

**Network** : Educhain
**Contract Address** : 0x1a9Fe92ffC5F2751763c723e21910D6Bb778B555
![alt text](<Screenshot 2024-08-21 at 11.55.59 AM.png>)

## Future Scope

1. **Revocation Mechanism:** Add functionality to revoke certificates when necessary.
2. **Enhanced Security:** Implement role-based access control to further secure certificate issuance.
3. **User Interface:** Develop a web or mobile application for a user-friendly interface to interact with the contract.
4. **Certificate Metadata:** Extend the certificate structure to include additional details such as expiration dates and student information.
5. **Integration:** Explore integration with other systems for automated certificate issuance upon course completion.

## Contact Details

For more information or inquiries, please contact:

**Name:** HRITIKA SARKI  
**Email:** studentlogin1912004@gmail.com  