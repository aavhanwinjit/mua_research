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
}
