// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CertificationVerificationSystem {

    struct Certificate {
        string courseName;
        string institutionName;
        address issuedBy;
        uint256 issuanceDate;
        bool exists;
    }

    mapping(string => Certificate) private certificates;
    event CertificateIssued(string certificateId, address student, string courseName, string institutionName, uint256 issuanceDate);
    event CertificateVerified(string certificateId, address student, bool isValid);

    
    function issueCertificate(
        address student,
        string memory certificateId,
        string memory courseName,
        string memory institutionName
    ) public {
        // Ensuring the certificate ID does not exist
        require(!certificates[certificateId].exists, "Certificate ID already exists");

        // Issuing the certificate
        certificates[certificateId] = Certificate({
            courseName: courseName,
            institutionName: institutionName,
            issuedBy: msg.sender,
            issuanceDate: block.timestamp,
            exists: true
        });

        emit CertificateIssued(certificateId, student, courseName, institutionName, block.timestamp);
    }

    // Verifying the existence and authenticity of a certificate
    function verifyCertificate(string memory certificateId) public view returns (
        bool exists,
        string memory courseName,
        string memory institutionName,
        address issuedBy,
        uint256 issuanceDate
    ) {
        Certificate memory cert = certificates[certificateId];

        if (cert.exists) {
            return (true, cert.courseName, cert.institutionName, cert.issuedBy, cert.issuanceDate);
        } else {
            return (false, "", "", address(0), 0);
        }
    }
}