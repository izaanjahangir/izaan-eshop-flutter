class Validators {
  static validateEmail(email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  static validatePassword(pass) {
    if (pass.length < 8) {
      return "Password should be atleast 8 characters";
    }

    return "";
  }
}
