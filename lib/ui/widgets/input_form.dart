import 'package:flutter/material.dart';
import 'package:shopify/ui/viewmodels/input_form_view_model.dart';
import 'package:shopify/ui/widgets/input_field.dart';

import 'simple_input_field.dart';

class InputForm extends StatefulWidget {
  final GlobalKey formKey;

  const InputForm({this.formKey});
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final vm = InputFormViewModel();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Scrollbar(
            child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _nameField(),
          _categoriesField(),
          _qtyInput(),
          _priceInput(),
        ],
      ),
    )));
  }

  Widget _nameField() {
    return SimpleInputField(
      labelText: "Name",
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      child: InputField(
        label: "Product name",
        controller: vm.nameController,
        key: Key("name"),
        hint: "Product Name",
      ),
    );
  }

  Widget _categoriesField() {
    return SimpleInputField(
        labelText: "Categories",
        margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: InputField(
          label: "Product Category",
          key: Key("categories"),
          hint: "Jwellery/Cosmetic..",
        ));
  }

  Widget _qtyInput() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            child: SimpleInputField(
          labelText: "Total",
          margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
          child: InputField(
            label: "",
            prefix: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "\u20B9",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            key: Key("total"),
            controller: vm.totalController,
            onChanged: (v) {
              vm.setPurchasePrice(v, vm.qtyController.text);
            },
            inputType: TextInputType.number,
          ),
        )),
        const SizedBox(
          width: 16.0,
        ),
        Flexible(
            child: SimpleInputField(
          labelText: "Qty",
          margin: const EdgeInsets.only(right: 16.0, bottom: 16.0),
          child: InputField(
            label: "",
            controller: vm.qtyController,
            onChanged: (v) {
              vm.setPurchasePrice(vm.totalController.text, v);
            },
            key: Key("quantity"),
            inputType: TextInputType.number,
          ),
        )),
      ],
    );
  }

  Widget _priceInput() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            child: SimpleInputField(
          labelText: "Purchase",
          margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
          child: InputField(
            label: "",
            prefix: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "\u20B9",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            key: Key("purchase"),
            controller: vm.purchaseController,
            inputType: TextInputType.number,
            isReadOnly: true,
          ),
        )),
        const SizedBox(
          width: 16.0,
        ),
        Flexible(
            child: SimpleInputField(
          labelText: "Selling",
          margin: const EdgeInsets.only(right: 16.0, bottom: 16.0),
          child: InputField(
            label: "",
            prefix: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "\u20B9",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            key: Key("selling"),
            controller: vm.sellingController,
            inputType: TextInputType.number,
          ),
        )),
      ],
    );
  }
}
