extension extString on String {
  bool get containsNumber {
    final nameRegExp = new RegExp(r'[0-9]');
    return nameRegExp.hasMatch(this);
  }
}
