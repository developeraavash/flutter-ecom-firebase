class TValidator {
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) return "Email is required";
    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegExp.hasMatch(email)) return "Invalid email format";
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) return "Password is required";
    final passwordRegExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
    if (!passwordRegExp.hasMatch(password)) return "Invalid password format. Must contain at least 8 characters, including uppercase and lowercase letters, numbers, and special characters.";
    return null;
  }

// validate the phone number
  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) return "Phone number is required";
    final phoneNumberRegExp = RegExp(r'^\+?[0-9]{1,3}[-. ]?[0-9]{1,14}$');
    if (!phoneNumberRegExp.hasMatch(phoneNumber)) return "Invalid phone number format. Please include country code, area code, and phone number.";
    return null;
  }



}
