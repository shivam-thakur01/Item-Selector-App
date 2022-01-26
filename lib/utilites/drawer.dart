import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itemselector/Screens/authScreen.dart';

class MyDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Container(
        child: ListView(children: [
          Container(
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height*0.2,
                width: double.infinity,
                decoration: BoxDecoration(shape: BoxShape.circle,
                color: Colors.amberAccent[100],
                image: DecorationImage(image: AssetImage('assets/images/drawerImage.png'))
                ),),
                SizedBox(height: 25,),
                Container(
                  width: double.infinity,
                  color: Color.fromRGBO(251, 231, 198 , 1),
                  margin: EdgeInsets.only(left: 10),
                  // padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10),
                      child: Text('User',style: TextStyle(fontSize: 25,color: Colors.red)),
                ),
                Container(child: Row(children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.account_circle,size: 30,color: Colors.yellow[900]),),
                  Container(
                    padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                    width: MediaQuery.of(context).size.width*0.55,
                    child: Text('test@admin.com',style: TextStyle(fontSize: 16,color: Colors.yellow[900]),),),
                ],),),
                SizedBox(height: 5,)
                ],),),
                
                SizedBox(height: 20,),
                Container(
                  color: Color.fromRGBO(251, 231, 198 , 1),
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10),
                      child: Text('About Developer',style: TextStyle(fontSize: 25,color: Colors.red)),
                ),
                SizedBox(height: 10,),
                Container(child: Row(children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.email,size: 25,color: Colors.green[600],),),
                  Container(
                    padding: EdgeInsets.only(left: 10,),
                    width: MediaQuery.of(context).size.width*0.55,
                    child: Text('shivam.thakur.ug20@nsut.ac.in',style: TextStyle(fontSize: 13,color: Colors.green[600]),),),
                ],),),
                Container(child: Row(children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,),
                    height: 25,
                    child: Image(image: AssetImage('assets/images/linkedIn.png'),),),
                  Container(
                    padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                    width: MediaQuery.of(context).size.width*0.55,
                    child: Text('linkedin.com/in/shivam-thakur-49096a1ba/',style: TextStyle(fontSize: 14,color: Colors.blue[400]),),),
                ],),),
                Container(child: Row(children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,),
                    height: 25,
                    child: Image(image: AssetImage('assets/images/github.png'),),),
                  Container(
                    padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                    width: MediaQuery.of(context).size.width*0.55,
                    child: Text('https://github.com/shivam-thakur01',style: TextStyle(fontSize: 14,color: Colors.yellow[900]),),),
                ],),)
                ],),),
                SizedBox(height: 25,),
                Container(
                  color: Color.fromRGBO(251, 231, 198 , 1),
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.only(left: 20),
                  child: Row(children: [
                  Container(child: Icon(Icons.logout,size: 26,color: Colors.red,),),
                  Container(child: TextButton(onPressed: ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>AuthScreen())),
                  child: Text('Log Out',style: TextStyle(fontSize: 25,color: Colors.red),),),),
                ],),),
            ],),
          )
        ],)
      ),
    );
  }
}