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

  static const String otpFailureScreenTitle = "Oops!";
  static const String otpFailureScreenSubTitle =
      "It seems like this mobile number isn't\nregistered. If you're having trouble, feel\nfree to contact your MUA for assistance";
  static const String otpFailureScreenButtonTitle = "Got it!";
}
