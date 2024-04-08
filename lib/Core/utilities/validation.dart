class Validation {
  String? nameValidate(String? input) {
    // correct input
    if ((input?.length ?? 0) > 2 && RegExp(r'^[a-zA-Z]+$').hasMatch(input!)) {
      return null;
    }
    // incorrect input
    return "Invalid Name";
  }

  String? mailValidation(String? data) {
    if (data?.endsWith("gmail.com") ?? false) {
      return null;
    }
    return 'Invalid Email';
  }

  String? phoneValidation(String? data) {
    if ((data?.length ?? 0) == 11) {
      return null;
    }
    return 'Invalid Phone Number';
  }

  String? passValidate(String? input) {
    // correct input
    if ((input?.length ?? 0) >= 8) {
      return null;
    }
    // incorrect input
    return "Invalid Password";
  }

  String? pinValidation(String? data) {
    if ((data?.length ?? 0) == 1) {
      return null;
    }
    return null;
  }
}
