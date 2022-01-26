import 'dart:ui';

import 'package:flutter/material.dart';

class ListScreenWidget extends StatelessWidget {
  final String name;
  final String price;
  final String time;
  ListScreenWidget({this.name, this.price, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5,left: 10,right: 10),
      child: Card(
        elevation: 7,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20, right: 20,top: 10,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.56,
                  child: Text(name,style: TextStyle(fontSize: 23),)),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                Container(
                  width: MediaQuery.of(context).size.width*0.55,
                  child: Text(time,style: TextStyle(fontSize: 16,color: Colors.grey[600]),))
              ],),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.24,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text('₹ '+price,style: TextStyle(fontSize: 25),)))
          ],),
        ),
      ),
    );
  }
}

