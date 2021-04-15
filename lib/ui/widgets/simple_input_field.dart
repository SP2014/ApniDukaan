import 'package:flutter/widgets.dart';
import 'package:shopify/ui/widgets/base_custom_field.dart';

class SimpleInputField extends BaseCustomField {
  final String labelText;
  final Widget child;
  final EdgeInsetsGeometry margin;

  const SimpleInputField({@required this.labelText,
   @required this.child, this.margin})
      : super(
          isMultiField: false,
          singleItem: child,
          margin: margin
        );
}
