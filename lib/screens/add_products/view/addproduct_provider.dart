import 'package:admin_app/screens/add_products/provider/addprovider.dart';
import 'package:admin_app/utils/Textcustom/text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewProduct extends StatelessWidget {
  const AddNewProduct({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            const Center(
              child: TextHead(text: 'Select collection'),
            ),
            Consumer<PrudctaddProvider>(
              builder: (context, value, child) {
                return Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(value.image),
                              fit: BoxFit.cover)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                          value: 0,
                          groupValue: value.radioValue,
                          onChanged: (newValue) {
                            context
                                .read<PrudctaddProvider>()
                                .handleRadioValueChange(newValue);
                          },
                          activeColor: Colors.green,
                        ),
                        const Text(
                          'brands',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Radio(
                          value: 1,
                          groupValue: value.radioValue,
                          onChanged: (newValue) {
                            context
                                .read<PrudctaddProvider>()
                                .handleRadioValueChange(newValue);
                          },
                          activeColor: Colors.green,
                        ),
                        const Text(
                          'suggetion',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Radio(
                          value: 2,
                          groupValue: value.radioValue,
                          onChanged: (newValue) {
                            context
                                .read<PrudctaddProvider>()
                                .handleRadioValueChange(newValue);
                          },
                          activeColor: Colors.green,
                        ),
                        const Text(
                          'poster',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 300,
                child: Card(
                  child: Form(
                    child: ListView(
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  TextHead(
                                    text: 'name ',
                                    fontsize: 17,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                      width: 250,
                                      child: TextField(
                                        controller: context
                                            .watch<PrudctaddProvider>()
                                            .nameController,
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder()),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  TextHead(
                                    text: 'amount',
                                    fontsize: 17,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                      width: 250,
                                      child: TextField(
                                        controller: context
                                            .watch<PrudctaddProvider>()
                                            .amountController,
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder()),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  TextHead(
                                    text: 'image ',
                                    fontsize: 17,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                      width: 250,
                                      child: TextField(
                                        controller: context
                                            .watch<PrudctaddProvider>()
                                            .imageController,
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder()),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.read<PrudctaddProvider>().addproduct();
                            Navigator.pop(context);
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          child: const Text('submit'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
