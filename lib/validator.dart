class Validator {
  bool validate(String password) {
    if (password.length < 12) {
      return false;
    }

    RegExp latinUpperCase = RegExp(r'[A-Z]');
    RegExp cyrillicLowerCase = RegExp(r'[a-z]');
    RegExp digits = RegExp(r'\d');
    RegExp specialChars = RegExp(r'[\{\}\(\):"|\~`\.]');
    bool isValid = true;
    isValid = isValid && (latinUpperCase.hasMatch(password)) ;
    isValid = isValid && (cyrillicLowerCase.hasMatch(password)) ;
    isValid = isValid && (digits.hasMatch(password)) ;
    isValid = isValid && (specialChars.hasMatch(password));
    return isValid;
  }
}
