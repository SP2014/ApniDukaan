import 'package:flutter/material.dart';

class BaseCustomField extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final bool isMultiField;
  final String labelText;
  final Widget singleItem;
  final List<Widget> multiFields;

  const BaseCustomField(
      {this.margin,
      this.isMultiField,
      this.labelText,
      this.singleItem,
      this.multiFields})
      : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          isMultiField
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: multiFields,
                )
              : singleItem
        ],
      ),
    );
  }
}
