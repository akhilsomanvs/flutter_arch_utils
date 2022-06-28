part of flutter_arch_utils;

extension StringSanityCheck on String? {
  String capitalize() {
    if (this == null) return "";
    return "${this![0].toUpperCase()}${this!.substring(1).toLowerCase()}";
  }

  bool isNull() {
    return this == null;
  }

  bool isNullOrEmpty() {
    return (this == null || (this != null && this!.isEmpty));
  }

  String returnEmptyIfNull() {
    if (isNullOrEmpty()) {
      return "";
    }
    return this!;
  }

  String? getDifferenceFrom(String secondString) {
    if (isNullOrEmpty() || secondString.isNullOrEmpty()) {
      return null;
    }

    int? index = getIndexOfDifference(secondString);
    if (index == null) {
      return null;
    }
    return this!.substring(index);
  }

  int? getIndexOfDifference(String secondString) {
    if (this == secondString) {
      return null;
    }

    if (isNullOrEmpty() || secondString.isNullOrEmpty()) {
      return 0;
    }

    int i = 0;
    for (i = 0; i < this!.length && i < secondString.length; i++) {
      if (getCharAt(i) != secondString.getCharAt(i)) {
        break;
      }
    }
    if (i < this!.length || i < secondString.length) {
      return i;
    }
    return null;
  }

  String getCharAt(int index) {
    return this!.substring(index, index + 1);
  }

  bool isValidEmail() {
    if (isNullOrEmpty()) {
      return false;
    }
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this!);
  }

  bool isValidPassword() {
    if (this == null || this!.length == 0 || isNullOrEmpty()) {
      return false;
    }
    return true;
    /* String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(this);*/
  }

}
