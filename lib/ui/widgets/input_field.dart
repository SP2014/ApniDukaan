import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InputField extends HookWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final String label;
  final String hint;
  final String prefixText;
  final FormFieldSetter<String> onSaved;
  final FormFieldSetter<String> onChanged;
  final String initialValue;
  final int maxLines;
  final Widget suffix;
  final Widget prefix;
  final EdgeInsetsGeometry margin;
  final bool isFilled;
  final bool isReadOnly;

  InputField(
      {Key key,
      this.controller,
      this.inputType = TextInputType.text,
      @required this.label,
      this.hint,
      this.prefixText,
      this.onSaved,
      this.onChanged,
      this.initialValue = "",
      this.maxLines = 1,
      this.suffix,
      this.prefix,
      this.margin,
      this.isFilled,
      this.isReadOnly = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextField(
        keyboardType: inputType,
        controller: controller,
        onSubmitted: onSaved,
        onChanged: onChanged,
        readOnly: isReadOnly,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixText: prefixText,
            prefixStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
            prefixIcon: prefix == null ? null : prefix,
            prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            //prefixIconConstraints: BoxConstraints.tightFor(width: 24.0),
            suffixIcon: suffix == null
                ? null
                : Padding(
                    padding: const EdgeInsetsDirectional.only(end: 12.0),
                    child: suffix,
                  ),
            labelStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
            labelText: label,
            hintText: hint,
            isDense: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: isFilled,
            fillColor:
                isFilled == true ? Colors.grey.shade100 : Colors.transparent,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 0.5)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).accentColor, width: 1.0))),
      ),
    );
  }
}
