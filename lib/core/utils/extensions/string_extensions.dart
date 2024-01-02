extension StringExtensions on String {
  String maskMobileNumber() {
    if (isEmpty || length < 8) {
      return "";
    }

    return "+230 XXXX ${substring(length - 4, length)}";
  }
}
