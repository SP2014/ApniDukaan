import 'package:flutter/material.dart';
import 'package:shopify/ui/widgets/input_sheet_content.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      resizeToAvoidBottomInset: true,
      body: Center(
          child: ElevatedButton(
        onPressed: () => showInputSheet(context),
        child: Text("Press me"),
      )),
    );
  }

  void showInputSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        isDismissible: true,
        clipBehavior: Clip.hardEdge,
        //backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        builder: (BuildContext ctx) => InputSheetContent());
  }
}
