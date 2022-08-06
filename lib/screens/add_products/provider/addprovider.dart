import 'package:admin_app/screens/productslist/models/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class PrudctaddProvider with ChangeNotifier {
  int _radioValue = 0;
  String _image='assets/images/most-popular-shoe-brand.jpg';
  String _collectionName = 'items';
  get image => _image;
  get radioValue => _radioValue;
  get collectionName => _collectionName;
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  addproduct() async {
    final docproduct =
        FirebaseFirestore.instance.collection(_collectionName).doc();
    final items = Item(
        name: nameController.text.trim(),
        amount: amountController.text.trim(),
        image: imageController.text.trim(),
        id: docproduct.id);
    final json = items.toJson();
    await docproduct.set(json);
  }

  handleRadioValueChange(value) {
    _radioValue = value;
    notifyListeners();
    switch (_radioValue) {
      case 0:
        _image = 'assets/images/most-popular-shoe-brand.jpg';
        _collectionName = 'items';
        notifyListeners();
        break;
      case 1:
        _image = 'assets/images/3afe1b47e7c1e59c51f373edf0cebfad.jpg';
        _collectionName ='suggestions';
        notifyListeners();
        break;
      case 2:
        _image = 'assets/images/5aa413ae2c7cd9cb683c6ec4893809df.jpg';
        _collectionName = 'suggestions';
        notifyListeners();
        break;
    }
  }
}
