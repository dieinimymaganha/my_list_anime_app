import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomForm extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String tip;
  final Widget icon;
  final TextInputType textInputType;
  final bool obscure;
  final bool mandatory;
  final Function(String) onChanged;
  final bool enabled;
  final Widget suffix;
  final int maxlengthField;
  final Function ontap;
  final Function(String) validator;

  CustomForm(
      {this.controller,
        this.label,
        this.tip,
        this.icon,
        this.textInputType,
        this.obscure,
        this.mandatory,
        this.onChanged,
        this.enabled,
        this.suffix,
        this.maxlengthField,
        this.ontap,
        this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxlengthField),
        ],
        style:
        TextStyle(color: Colors.white
            , fontWeight: FontWeight.bold),
        controller: controller,
        obscureText: obscure,
        onChanged: onChanged,
        enabled: enabled,
        onTap: ontap,
        decoration: InputDecoration(
          prefixIcon: icon,
          suffix: suffix,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(32))),
          labelStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
          labelText: label,
          hintText: tip,
        ),
        keyboardType: textInputType,
        validator: validator);
  }
}
