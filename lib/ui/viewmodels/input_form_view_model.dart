import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:shopify/data/model/item_data.dart';

class InputFormViewModel extends ChangeNotifier {
  TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;
  TextEditingController _qtyController = TextEditingController(text: "1");
  TextEditingController get qtyController => _qtyController;
  TextEditingController _totalController = TextEditingController(text: "0.0");
  TextEditingController get totalController => _totalController;
  TextEditingController _purchaseController =
      TextEditingController(text: "0.0");
  TextEditingController get purchaseController => _purchaseController;
  TextEditingController _sellingController = TextEditingController(text: "0.0");
  TextEditingController get sellingController => _sellingController;

  Future<String> saveItem(ItemData item) {}

  void setPurchasePrice(String value, String qty) {
    if (qty != "" && value != "") {
      int qt = int.parse(qty);
      double vd = double.parse(value);
      double pc = vd / qt;
      _purchaseController.text = pc.toStringAsFixed(2);
      notifyListeners();
    }
  }
}
