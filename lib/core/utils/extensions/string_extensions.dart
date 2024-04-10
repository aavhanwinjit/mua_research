extension StringExtensions on String {
  String maskMobileNumber() {
    if (isEmpty || length < 8) {
      return "";
    }

    return "+230 XXXX ${substring(length - 4, length)}";
  }

  bool validatePin() {
    RegExp regex = RegExp(r'^(?!.*(\d)\1{5})(?!123456|654321)\d{6}$');
    return regex.hasMatch(this);
  }

  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
