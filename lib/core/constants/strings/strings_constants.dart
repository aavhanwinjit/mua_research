///Strings organised by feature
/// 1.Global
/// 2.Login
/// 3.OTP Screen
/// 4.OTP Success Screen
library;

class Strings {
  // 1.Global
  static const String globalLogin = 'LOGIN';
  static const String globalNext = 'NEXT';
  static const String globalRegister = 'REGISTER';
  static const String globalErrorGenericMessageOne = "Something went wrong, please try again.";
  static const String globalOk = "OK";
  static const String globalError = 'ERROR';
  static const String globalName = 'Name';
  static const String globalMobile = 'Mobile';
  static const String globalEmail = 'Email';
  static const String globalPassword = 'Password';
  static const String globalSucess = "Sucess";
  static const String globalInvalidUrl = "InvalidUrl";
  static const String globalInvalid = "Invalid";
  static const String invalidId = "INVALID_DEVICE_ID";
  static const String globalNoInternet = 'No Internet connection !!!';
  static const String agreeTerms = "By clicking, I agree with ";
  static const String termsAndCondition = "Terms & Conditions";
  static const String safetyGuidelines = " and safety guidelines";
  static const String edit = "Edit";
  static const String contn = "Continue";
  static const String clear = "Clear";
  static const String save = "Save";
  static const String email = "Email";
  static const String mobileNo = "Mobile No";
  static const String address = "Address";
  static const String companyName = "Company Name";
  static const String cancel = "Cancel";
  static const String next = "Next";
  static const String continueToUpload = "Continue to upload";
  static const String exit = "Exit";
  static const String saveAndExit = "Save & Exit";
  static const String selectDocument = "Select Document";
  static const String addMoreDocuments = "Add More Documents";
  static const String removeDocument = "Remove";
  static const String reviewAndSubmit = "Review & Submit";
  static const String retakePhoto = "Retake Photo";
  static const String upload = "Upload";
  static const String makeSureDocsClear = "Make sure your details are clear\nand unobstructed";
  static const String uploadDocument = "Upload Document";
  static const String profile = "Profile";
  static const String takePhotoFromCamera = "Take photo from camera";
  static const String uploadFromLibrary = "Upload from library";
  static const String done = "Done";
  static const String technicalError = "Technical error. Please try again.";
  static const String hi = "Hi";
  static const String version = "Version";
  static const String yes = "Yes";
  static const String no = "No";
  static const String selectMinOneFilter = "Select minimum one filter";
  static const String completed = "Completed";
  static const String scanDocuments = "Scan Documents";
  static const String confirmDetails = "Confirm Details";
  static const String documentUploadConfirmationDialogText =
      "Do you confirm the details are correct as per the uploaded document? If No, you can edit the details before proceeding.";
  static const String documentUploadConfirmationDialogText2 =
      "Do you confirm the details are correct as per the uploaded document? If No, you can verify the details before proceeding.";
  static const String selectFrontImageFirst =
      "Please upload the front side image first, followed by the back side image!";
  // static const String selectFrontImageFirst = "Select front image first";
  static const String back = "Back";
  static const String changeDocument = "Change Document";
  static const String only2Documents = "You can add only 2 documents";
  static const String addressDetailsConfirmationString = "Are the details of same customer?";
  static const String insuredDetailsConfirmationString =
      "Are the proof of relationship documents of the same customer?";
  static const String insuredDocsRequiredDialogTitleString = "Insured Document Required";
  static const String insuredDocsRequiredDialogSubtitleString =
      "The uploaded address proof doesn't match the customer details. Additional documents are needed to confirm the relationship.";
  static const String saveAndUploadLater = "Save & Upload Later";
  static const String uploadSignature = "Upload signature";
  static const String errorInFullnameInDoc = "Invalid characters present in name";
  static const String cropImage = "Crop Image";

  //2.Login
  static const String loginScreenTitle = "Let's get started!";
  static const String loginScreenSubTitle = "Please enter your valid mobile number to proceed.";
  static const String loginPhoneHint = "8 digit phone number";
  static const String loginPhoneLabel = "Mobile Number";
  static const String loginPhoneValidatorString = "Please enter 8-digit mobile number";
  static const String enterValidPhoneNumberString = "Please enter valid phone number";
  static const String loginButtonTitle = "Get Verification Code";
  static const String otpSentSuccessfully = "An OTP has been sent successfully. It will be valid for the next";

  //3.OTP Screen
  static const String otpScreenTitle = "Enter the OTP sent to";
  static const String otpExpiredMessage = "The OTP has been expired, please generate new OTP";
  static const String pleaseEnterOTP = "Please enter valid OTP";

  //4.OTP Success Screen
  static const String otpSuccessScreenTitle = "Great, that matches!";
  static const String otpSuccessScreenSubTitle = "Your profile is loading. Sit tight!";
  static const String otpValidationString = "Enter valid OTP";
  static const String otpDidntReceiveIt = "Didn't receive it? ";
  static const String retryIn = "Retry in";
  static const String maximumOTPRetryReached = "Maximum number of OTP reached, please try again after sometime";

  //5.OTP Failure Screen
  static const String otpFailureScreenTitle = "Oops!";
  static const String otpFailureScreenSubTitle =
      "It seems like this mobile number isn't\nregistered. Please contact your\nrepresentative at MUA.";
  // "It seems like this mobile number isn't\nregistered. If you're having trouble, feel\nfree to contact your bank for assistance";
  static const String otpFailureScreenButtonTitle = "Got it!";

  //Fonts
  static const String isodoraFont = "Isidora Sans";
  static const String nunitoFont = "Nunito Sans";

  //Auth-Profile Screen
  static const String welcomeString = "Welcome";
  static const String addSignature = "Add your signature";
  static const String thatsNotMe = "That’s not me!";
  static const String digitalSignature = 'Digital Signature';
  static const String uploadSignatureImage = 'Upload Signature Image';

  //Signature Screen
  static const String signHere = "Sign Here";
  static const String updateSignatureText = "Are you sure you want to proceed to update the signature?";

  //Dashboard
  static const String emptyDashboardText = "No data to display!\nClick the button below\nto start KYC.";
  static const String startKyc = "Start KYC";
  static const String referenceNo = "Reference No.";
  static const String applications = "Applications";
  static const String searchApplicants = "Search by Name, Policy or Quote Number";
  static const String resume = "Resume";
  static const String filter = "Filter";
  static const String status = "Status";
  static const String apply = "Apply";
  static const String clearAll = "Clear All";
  static const String selectKYCType = "Select KYC Type";
  static const String kycBottomsheetDescription = "Please specify the type of insurance you are working on.";
  static const String lifeInsurance = "Life\nInsurance";
  static const String motorInsurance = "Motor\nInsurance";
  static const String nonMotorInsurance = "Non-Motor\nInsurance";
  static const String lifeInsuranceTitle = "Life Insurance";
  static const String motorInsuranceTitle = "Motor Insurance";
  static const String nonMotorInsuranceTitle = "Non-Motor Insurance";

  static const String apiChipStatusIDMissing = "IDMissing";
  static const String apiChipStatusPOAMissing = "POAMissing";
  static const String apiChipStatusPORMissing = "PORMissing";
  static const String apiChipStatusCompleted = "Completed";

  static const String chipStatusIDMissing = "Incomplete - ID Missing";
  static const String chipStatusPORMissing = "Incomplete - POR missing";
  static const String chipStatusPOAMissing = "Incomplete - POA missing";
  static const String chipStatusCompleted = "Completed";

  //Customer Info Screen
  static const String customerInfo = "Customer Information";
  static const String editCustomerInfo = "Edit Customer Information";
  static const String editCustomerInfoSubtitle =
      "Enter the following details from the customer's insurance documentation.";
  static const String enterFollowingDetailsCustomerInfoScreen =
      "Enter the following details from the customer's insurance documentation.";
  static const String enterFollowingDetailsEditScreen =
      "Enter the following details from the National ID Card (NIC) or Passport";
  static const String surname = "Surname";
  static const String surnameValidationString = "Enter surname";
  static const String enterSurNameAsPerDoc = "Enter customer surname as per NIC or Passport documents";
  static const String enterNameAsPerDoc = "Enter customer name as per NIC or Passport documents";
  static const String otherName = "Other Name";
  static const String otherNameValidationString = "Enter other Name";
  static const String contactNo = "Contact No";
  static const String contactNoValidationString = "Enter contact number";
  static const String nicIdNo = "NIC ID Number";
  static const String nicIdNoValidationString = "Enter valid number";
  static const String quoteNumber = "Quote Number";
  static const String quoteNumberValidationString = "Enter valid quote number";
  static const String policyNo = "Policy Number";
  static const String policyNoOptional = "Policy Number (Optional)";
  static const String policyNoValidationString = "Enter valid number";
  static const String optional = "Optional";
  static const String passportNo = "Passport Number";
  static const String passportNoValidationString = "Enter valid passport number";
  static const String insuranceReferenceNo = "Insurance Reference Number (Optional)";
  static const String maritalStatus = "Marital Status";
  static const String single = "Single";
  static const String married = "Married";
  static const String whatIsNationality = "What is Customer Nationality?";
  static const String mauritian = "Mauritian";
  static const String nonMauritian = "Non-Mauritian";
  static const String nicNumber = "NIC Number";
  static const String update = "Update";
  static const String emailOptional = "Email ID (Optional)";
  static const String emailValidationString = "Enter valid email id";
  static const String addressValidationString = "Enter valid address";
  static const String registrationNumber = "Registration Number";

  //Insurance Stage Screen
  static const String kycSubmission = "KYC Submission";
  static const String insuranceStageScreenSubtitle = "Ensure a smooth process by completing the following steps.";

  static const String identityIdDetails = "Identity/ID Details";
  static const String idDetailsSubtitle = "Upload a clear photo of a valid ID document (e.g., passport or NIC).";
  static const String addressDetails = "Address Details";
  static const String addressDetailsSubtitle = "Upload documents serving as proof of the customer's address.";
  static const String policyDocumentsOptional = "Policy Documents (Optional)";
  static const String policyDocSubtitle = "Upload the policy document with visible details like policy number.";
  static const String additionalDocsOptional = "Additional Documents (Optional)";
  static const String additionalDocsSubtitle =
      "Provide any additional documents required for the specific KYC type you selected.";
  static const String motorDocuments = "Motor Documents";
  static const String motorDocSubtitle = "Upload the motor document with visible details like number.";
  static const String nonMotorDocuments = "Non-Motor Documents";
  static const String nonMotorDocSubtitle = "Upload the non-motor document with visible details like number.";

  //Camera Screen
  static const String cameraPermissionRequired = "Camera Permission Required to Scan the document";
  static const String fileSizeErrorString = "You can upload a photo having maximum size as 5MB";

  //ID Details Screen
  static const String uploadIdentityProof = "Upload Identity Proof";
  static const String idDetailsScreenSubtitle = "Please specify the type of identification document you are uploading.";
  static const String nicCard = "National ID Card (NIC)";
  static const String passport = "Passport";
  static const String idDocumentFrontContainerLabel = "Upload front side photo";
  static const String editIDDetailsScreenTitle = "Edit Identity/ID details";

  static const String idCardCameraScreenTitleFront = "Scan front side";
  static const String idCardCameraScreenTitleBack = "Scan back side";

  static const String idDocumentNicFrontCameraLabel =
      "Please scan the front side of the NIC ID \nby adjusting it inside the frame";
  static const String idDocumentNicBackCameraLabel =
      "Please scan the Back side of the NIC ID\nby adjusting it inside the box";

  static const String idDocumentPassportFrontCameraLabel =
      "Please scan the front side of the Passport\nby adjusting it inside the frame";
  static const String idDocumentPassportBackCameraLabel =
      "Please scan the Back side of the Passport\nby adjusting it inside the box";

  static const String idDocumentBackContainerLabel = "Upload back side photo";

  static const String uploadBothDocuments = "Upload both documents";

  static const String idNumberNotFound = "ID number not found. Kindly re-upload the document";
  static const String idNumberNotMatching =
      "The ID number doesn't match. Please upload the correct documents for identification.";

  //Address Details Screen
  static const String uploadAddressProof = "Upload address proof";
  static const String editAddressDetails = "Edit Address Details";
  static const String addressDetailsScreenSubtitle =
      "Please specify the type of address proof document you are uploading.";
  static const String addressDocumentContainerLabel = "Take a photo or upload Address\nProof Document";
  static const String addressDocCameraLabel =
      "Please scan the address proof document by\nadjusting it inside the frame.";
  static const String billDate = "Bill Date";
  static const String issueDate = "Issue Date";
  static const String selectDocumentType = "Select document type";
  static const String enterRegistrationNumber = "Enter Registration Number";
  static const String kycFailed = "KYC Failed";
  static const String enterAddressInfo = "Make sure surname, other name & address are entered";
  static const String addressProofDoc = "address proof document";

  //Insured Document Screen
  static const String uploadInsuredDocuments = "Upload Insured Documents";
  static const String editInsuredDocuments = "Edit Insured Details";
  static const String uploadProofOfRelationship = "Proof of Relationship Documents";
  static const String specifyDocumentType = "Please specify the type of document you are uploading.";
  static const String insuredDocumentContainerLabel = "Take a photo or upload\ninsured documents";
  static const String insuredDocCameraLabel = "Please scan the document by\nadjusting it inside the frame.";
  static const String insuredDocuments = "Insured Documents";
  static const String insuredDetails = "Insured Details";
  static const String uploadMarriageCertificate =
      "Uploading a marriage certificate is mandatory for customers marked as 'married'.";
  // "Uploading marriage certificate is compulsory in case of 'Married' users";
  static const String uploadNICofLandlord =
      "Please upload NIC/Valid Passport of landlord to complete the KYC validation.";
  static const String surnamesForSelectedDocuments =
      "Surname data is missing. Please update the information for the selected documents.";
  // static const String surnamesForSelectedDocuments = "Please add surnames for selected documents";
  static const String enterNameAsPerInsuredDoc = "Enter surname as per selected insured document";
  static const String surnameMismatched = "Surname does not match with uploaded address proof document";
  static const String insuredDoc = "insured document";

  //Policy Documents Screen
  static const String policyDocuments = "Policy Documents";
  static const String uploadPolicyDocuments = "Upload Policy Documents";
  static const String policyDocumentContainerLabel = "Take a photo or upload\nPolicy Documents";
  static const String policyDocCameraLabel =
      "Please scan the birth certificate document\nby adjusting it inside the frame.";

  static const String reviewScreenCheckboxTitle =
      "I hereby affirm that I have thoroughly examined and verified all the documents.";

  //Additional Documents Screen
  static const String uploadAdditionalDocuments = "Upload Additional Documents";
  static const String additionalDocuments = "Additional Documents";
  static const String otherKYCDocs = "Other KYC Documents";
  static const String additionalDocsScreenSubtitle = "Kindly provide the required documents for the selected KYC type";
  static const String additionalDocsContainerLabel = "Take a photo or upload\nOther KYC Document";
  static const String additionalDocsContainerLabel2 = "Take a photo or upload\nAdditional Document";
  static const String additionalDocCameraLabel =
      "Please scan the other KYC document by\nadjusting it inside the frame.";

  //Motor Documents Screen
  static const String motorDocsScreenSubtitle = "Please specify the type of motor document you are uploading.";
  static const String motorDocsContainerLabel = "Take a photo or upload\nmotor documents";
  static const String motorDocCameraLabel = "Please scan the motor document by\nadjusting it inside the frame.";
  static const String uploadMotorInsuranceDocuments = "Upload Motor Insurance Documents";
  static const String horsePowerKYCFailed = "Horse power kyc failed. Enter correct registration number";
  static const String uploadMotorDocuments = "Upload Motor Documents";

  //Non-Motor Documents Screen
  static const String nonMotorDocsScreenSubtitle = "Please specify the type of non-motor document you are uploading.";
  static const String nonMotorDocsContainerLabel = "Take a photo or upload\nnon motor documents";
  static const String nonMotorDocCameraLabel =
      "Please scan the non motor retail documents\nby adjusting it inside the frame.";
  static const String uploadNonMotorDocuments = "Upload Non-Motor Documents";

  //Profile Screen
  static const String agencyName = "Agency name";
  static const String signature = "Signature";
  static const String screenLock = "Screen Lock";
  static const String biometricAndScreenlock = "Biometric & Screen locks";
  static const String changePin = "Change PIN";
  static const String resetAppPin = "Reset your app PIN";
  static const String contactUs = "Contact Us";
  static const String faq = "FAQs and Chat support";
  static const String logout = "Logout";
  static const String helpContact = "+230 207 5500";
  static const String helpEmail = "info@mua.mu";
  static const String updateSignature = "Update Signature";
  static const String logoutConfirmationText = "Are you sure you want to Logout?";

  static const String kycSubmittedSuccessfully = "KYC Details Submitted\nSuccessfully";
  static const String kycCompleted1 = "The KYC process of ";
  static const String kycCompleted2 = " has been completed successfully with Reference number ";
  static const String kycNote1 = "Please note that an MUA team member will contact you within ";
  static const String kycNote2 = "one working day";
  static const String kycNote3 =
      " to verify the documents you have uploaded and to complete the transaction. Thank you for choosing MUA.";
  static const String goToDashboard = "Go to Dashboard";
  static const String downloadPDF = "Download PDF";

  static const String chooseFasterWayToLogIn = "Choose a faster way to log in on this device";
  static const String createPinAndBiometric = "Create PIN & Biometric";
  static const String createPinOnly = 'Create PIN Only';
  static const String createPin = "Create PIN";
  static const String createPinSubtitle =
      "You'll use it to securely unlock and access your app, so please don't share it with anyone.";
  static const String confirmPin = "Confirm PIN";
  static const String currectPin = "Current PIN";
  static const String currentPinSubtitle = "Enter current pin here";

  static const String verifypin = "Verify 6-digit PIN";
  static const String wrongPin = "Wrong PIN";
  static const String forgotPin = "Forget PIN/Re-register";
  static const String useTouchId = "Use touch ID";
  static const String pinAuthenticationFailed = "Your PIN authentication failed. Please retry.";
  static const String pinValidationFailed =
      "Sequential and repeated numbers not allowed. Please enter valid PIN to proceed.";

  static const String biometricDialogBoxSubtitle = "This allows you to log in to MUA using Face ID";
  static const String biometricAuthenticationFailed = "Biometric Authentication Failed";
  static const String noBiometricsAvailable = "No Biometrics Available";
  static const String mpinChangeSuccess = "Your PIN has been updated successfully";

  // Generated PDF Strings
  static const String certifiedByString = "Certified true copy of the original";
  static const String fullName = "Full Name";
  static const String jobTitle = "Job Title";
  static const String dateTime = "Date & Time";
  static const String automaticallyGeneratedString =
      "[Automatically generated by MUA Mauritius Union Assurance Cy Ltd/Head office]";
}
