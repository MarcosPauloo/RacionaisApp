import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String label;
  String hint;
  TextEditingController _controlador;
  bool password;
  FormFieldValidator<String> validato;
  TextInputAction textInputAction;
  FocusNode focusNode;
  FocusNode nextFocus;
  FormFieldValidator<String> validator;

  AppText(
    this.label,
    this.hint,
    this._controlador, {
    this.password = false,
    this.validato,
    this.textInputAction,
    this.focusNode,
    this.nextFocus,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: password,
      controller: _controlador,
      validator: validator,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != Null) {
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        labelText: label,
        labelStyle: TextStyle(fontSize: 22, color: Colors.grey),
        hintText: hint,
      ),
      keyboardType: TextInputType.text,
    );
  }
}
