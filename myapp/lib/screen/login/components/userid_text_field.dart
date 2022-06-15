import 'package:flutter/material.dart';

class UserIdeTextField extends StatelessWidget {
  const UserIdeTextField({
    Key? key,
    required this.userIdErrorText,
    required this.userIdHintText,
    required this.userIdHintTextColor,
    required this.useridTextfieldPrefixIcon,
    required this.useridTextfieldPrefixIconColor,
    required this.onUserIdValueChange,
  }) : super(key: key);

  final String userIdErrorText;
  final String userIdHintText;
  final Color userIdHintTextColor;
  final IconData useridTextfieldPrefixIcon;
  final Color useridTextfieldPrefixIconColor;
  final Function onUserIdValueChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty)
          return userIdErrorText;
        else {
          return null;
        }
      },
      onChanged: (value) {
        onUserIdValueChange(value);
      },
      cursorColor: Theme.of(context).colorScheme.secondary,
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      decoration: InputDecoration(
        hintText: userIdHintText,
        hintStyle: TextStyle(
          color: userIdHintTextColor,
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          useridTextfieldPrefixIcon,
          color: useridTextfieldPrefixIconColor,
        ),
      ),
    );
  }
}
