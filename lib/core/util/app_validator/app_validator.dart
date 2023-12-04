class AppValidators {
  static String? Function(String?) generalValidator() => (value) {
        if (value!.trim().isEmpty) {
          return "Field must not be empty";
        }
        return null;
      };
  static String? Function(String?) confirmPasswordValidator(
          {required String password}) =>
      (value) {
        if (value!.trim().isEmpty) {
          return "Confirm Password must not be empty";
        } else if (value != password) {
          return "Confirm Password and Password must be exactly the same";
        }
        return null;
      };

  // static String? Function(String?) phoneValidator({
  //   required int phoneLength})=>(value){
  //
  //   if(value!.trim().isEmpty){
  //     return AppStrings.validationText.tr();
  //   }else if(value.trim().length!=phoneLength){
  //     return "${AppStrings.validatePhoneText.tr()} $phoneLength ${AppStrings.number.tr()}";
  //   }
  //   return null;
  // };

  // static String? Function(String?) passwordValidator()=>(value){
  //   if(value!.trim().isEmpty){
  //     return AppStrings.validationText.tr();
  //   }else if(value.trim().length<8){
  //     return AppStrings.validatePassword.tr();
  //   }
  //   return null;
  // };
}
