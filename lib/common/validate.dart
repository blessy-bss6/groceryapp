validateMobile(String value) {
  if (value.isEmpty)
    return 'Mobile Number is Required.';
  else if (value.length < 10)
    return 'Mobile Number required at least 10 numbers';
  else if (value.length > 11)
    return 'Mobile Number required 10 numbers';
  else
    return null;
}

validateOTP(String value) {
  if (value.isEmpty)
    return 'OTP is Required.';
  else if (value.length < 4)
    return 'OTP required at least 4 numbers';
  else if (value.length > 4)
    return 'OTP required at most 4 numbers';
  else
    return null;
}
