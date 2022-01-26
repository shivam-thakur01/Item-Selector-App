import 'package:flutter/material.dart';
import 'package:itemselector/Screens/listScreen.dart';
import 'package:itemselector/models/itemClassData.dart';
import 'package:intl/intl.dart';
import 'package:itemselector/models/itemSet.dart';

class ItemAddScreen extends StatefulWidget {
  // const ItemAddScreen({ Key? key }) : super(key: key);

  @override
  _ItemAddScreenState createState() => _ItemAddScreenState();
}

class _ItemAddScreenState extends State<ItemAddScreen> {
  String itemName = '';
  String itemPrice = '';

  int addItemIntoList(String itemName, String itemPrice) {
    var currDateTime = DateFormat('hh:mm a yyyy-MM-dd').format(DateTime.now());
    itemSet.add(Item(
        name: itemName, price: itemPrice, datetime: currDateTime.toString()));
    print(currDateTime);
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    void dataSubmitted(String name, String price) {
      if (itemName != '' && itemPrice != '') {
        print(itemName);
        print(itemPrice);
        addItemIntoList(itemName, itemPrice);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => ItemAddScreen()));
        final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: Colors.amber[200],
        content: Text('Item Added.',style: TextStyle(fontSize: 15,color: Colors.black,),textAlign: TextAlign.center,),
      ),
    );
      } else {
        print('Please enter item name and item price.');
        final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: Colors.amber[200],
        content: Text('Please enter valid Item and Price.',style: TextStyle(fontSize: 15,color: Colors.black,),textAlign: TextAlign.center,),
      ),
    );
      }
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: WillPopScope(
        onWillPop: () {
          return Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => ListScreen()));
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('Add Item'),
          ),
          backgroundColor: Colors.amber[50],
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 7,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              onChanged: (text) {
                                setState(() {
                                  itemName = text;
                                });
                              },
                              onSubmitted: (_) =>
                                  dataSubmitted(itemName, itemPrice),
                              decoration: InputDecoration(
                                labelText: 'Item Name',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              onChanged: (text) {
                                setState(() {
                                  itemPrice = text;
                                });
                              },
                              onSubmitted: (_) =>
                                  dataSubmitted(itemName, itemPrice),
                              decoration: InputDecoration(
                                labelText: 'Item Price',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Colors.green[700],
                  ),
                  onPressed: () {
                    dataSubmitted(itemName, itemPrice);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Add Item',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
