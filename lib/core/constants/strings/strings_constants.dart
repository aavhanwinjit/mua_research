///Strings organised by feature
/// 1.Global
/// 2.Login
/// 3.OTP Screen
/// 4.OTP Success Screen

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
  static const String termsAndCondition = "Terms & Condition";
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
  static const String selectDocument = "Select Document";
  static const String addMoreDocuments = "Add More Documents";

  //2.Login
  static const String loginScreenTitle = "Let's get started!";
  static const String loginScreenSubTitle = "Please enter your valid mobile number to proceed.";
  static const String loginPhoneHint = "8 digit phone number";
  static const String loginPhoneLabel = "Mobile Number";
  static const String loginPhoneValidatorString = "Please enter 8-digit mobile number";
  static const String loginButtonTitle = "Get Verification Code";

  //3.OTP Screen
  static const String otpScreenTitle = "Enter the OTP sent to";

  //4.OTP Success Screen
  static const String otpSuccessScreenTitle = "Great, that matches!";
  static const String otpSuccessScreenSubTitle = "Your profile is loading. Sit tight!";
  static const String otpValidationString = "Enter valid OTP";
  static const String otpDidntReceiveIt = "Didn't received it? Retry in";

  //5.OTP Failure Screen
  static const String otpFailureScreenTitle = "Oops!";
  static const String otpFailureScreenSubTitle =
      "It seems like this mobile number isn't\nregistered. If you're having trouble, feel\nfree to contact your MUA for assistance";
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

  //Dashboard
  static const String emptyDashboardText = "No data to display!\nClick the labelLarge below\nto start KYC.";
  static const String startKyc = "Start KYC";
  static const String referenceNo = "Reference No.";
  static const String applications = "Applications";
  static const String searchApplicants = "Search applicants";
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

  static const String chipStatusIDMissing = "Incomplete - ID Missing";
  static const String chipStatusPORMissing = "Imcomplete - POR missing";
  static const String chipStatusPOAMissing = "Imcomplete - POA missing";
  static const String chipStatusCompleted = "Completed";

  //Customer Info Screen
  static const String customerInfo = "Customer Information";
  static const String enterFollowingDetails =
      "Enter the following details from the customer's insurance documentation.";
  static const String surname = "Surname";
  static const String surnameValidationString = "Enter surname";
  static const String enterNameAsPerDoc = "Enter customer name as per NIC or Passport documents";
  static const String otherName = "Other Name";
  static const String otherNameValidationString = "Enter other Name";
  static const String contactNo = "Contact No";
  static const String contactNoValidationString = "Enter contact number";
  static const String nicIdNo = "NIC ID Number";
  static const String nicIdNoValidationString = "Enter valid number";
  static const String policyNo = "Policy Number";
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

  //Insurance Stage Screen
  static const String kycSubmission = "KYC Submission";
  static const String insuranceStageScreenSubtitle = "Ensure a smooth process by completing the following steps.";

  static const String identityIdDetails = "Identity/ID details";
  static const String idDetailsSubtitle = "Upload a clear photo of a valid ID document (e.g., passport or NIC).";
  static const String addressDetails = "Address Details";
  static const String addressDetailsSubtitle = "Upload documents serving as proof of the customer's address.";
  static const String policyDocuments = "Policy Documents (Optional)";
  static const String policyDocSubtitle = "Upload the policy document with visible details like policy number.";
  static const String additionalDocs = "Additional Documents (Optional)";
  static const String additionalDocsSubtitle =
      "Provide any additional documents required for the specific KYC type you selected.";
  static const String motorDocuments = "Motor Documents";
  static const String motorDocSubtitle = "Upload the motor document with visible details like number.";
  static const String nonMotorDocuments = "Non-Motor Documents";
  static const String nonMotorDocSubtitle = "Upload the non-motor document with visible details like number.";

  //Camera Screen
  static const String cameraPermissionRequired = "Camera Permission Required to Scan the document";

  //Address Details Screen
  static const String uploadAddressProof = "Upload address proof";
  static const String addressDetailsScreenSubtitle =
      "Please specify the type of address proof document you are uploading.";
  static const String addressDocumentContainerLabel = "Take a photo or upload Address\nProof Document";

  //Insured Document Screen
  static const String uploadInsuredDocuments = "Upload Insured Documents";
  static const String uploadProofOfRelationship = "Proof of Relationship Documents";
  static const String specifyDocumentType = "Please specify the type of document you are uploading.";
  static const String insuredDocumentContainerLabel = "Take a photo or upload\ninsured documents";
}
