import 'package:flutter/material.dart';
import 'package:shopify/ui/widgets/bordered_button.dart';
import 'package:shopify/ui/widgets/input_form.dart';
import 'package:shopify/util/colors.dart';

class InputSheetContent extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.all(8.0),
      height: 350,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: lbackgroundColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //_sheetHandle(context),
          Container(
              padding:
                  const EdgeInsets.only(top: 18.0, bottom: 10.0, left: 16.0),
              child: Text(
                "Add New Item",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
              )),
          Divider(),
          InputForm(
            formKey: _formKey,
          ),
          _controlBar(context),
        ],
      ),
    );
  }

  Widget _sheetHandle(BuildContext context) {
    final theme = Theme.of(context);
    return FractionallySizedBox(
      widthFactor: 0.20,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(bottom: 4),
        child: Container(
          height: 5.0,
          decoration: BoxDecoration(
            color: theme.dividerColor,
            borderRadius: const BorderRadius.all(Radius.circular(2.5)),
          ),
        ),
      ),
    );
  }

  Widget _controlBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              1.0, // Move to right 10  horizontally
              -1.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: BorderedButton(
              child: Text("Cancel"),
              cornerRadius: 4,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              flex: 1,
              child: BorderedButton(
                child: Text("Save"),
                cornerRadius: 4,
                color: Colors.blue,
                onPressed: () {
                  // _formKey.currentState.save();
                  //_formKey.currentState.reset();
                },
              )),
        ],
      ),
    );
  }
}
