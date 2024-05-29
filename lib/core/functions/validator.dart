import 'package:get/get.dart';

appValidator(String val, String type, int min, int max) {
  if (val.isEmpty) {
    return 'required data!';
  }

  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return 'enter valid username';
    }
  }

  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return 'enter valid phone number!';
    }
  }

  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return 'enter valid email!';
    }
  }

  if (val.length > max) {
    return 'data should be less than $max digits!';
  }

  if (val.length < min) {
    return 'data should be more than $min digits!';
  }
}
