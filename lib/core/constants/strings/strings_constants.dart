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

  //2.Login
  static const String loginScreenTitle = "Let's get started!";
  static const String loginScreenSubTitle = "Please enter your valid mobile number to proceed.";
  static const String loginPhoneHint = "8 digit phone number";
  static const String loginPhoneLabel = "Mobile Number";
  static const String loginPhoneValidatorString = "Enter valid mobile number";
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

  static const String chipStatusIDMissing = "Incomplete - ID Missing";
  static const String chipStatusPORMissing = "Imcomplete - POR missing";
  static const String chipStatusPOAMissing = "Imcomplete - POA missing";
  static const String chipStatusCompleted = "Completed";
}
