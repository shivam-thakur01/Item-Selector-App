import 'package:flutter/material.dart';
import 'package:itemselector/Screens/listScreen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String typedEmail = ''; //variable to handle email to be typed
  String typedPassword = ''; //varibale to handle password to be type

  

  @override
  Widget build(BuildContext context) {
    void dataSubmitted(String email, String passWord) {
      if (typedEmail == 'test@admin.com' && typedPassword == '12345678') {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (ctx) => ListScreen()));
      } else {
        print('Email or password not matched');
        final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: Color.fromRGBO(230, 232, 162, 1),
        content: Text('Please enter valid email and password.',style: TextStyle(fontSize: 15,color: Colors.black,),textAlign: TextAlign.center,),
      ),
    );
      }
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color.fromRGBO(230, 232, 162, 1),
                height: MediaQuery.of(context).size.height * 0.32,
                width: double.infinity,
                padding: EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Stack(
                  children: [
                    Image(image: AssetImage('assets/images/authScreen.png'))
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.68,
                color: Color.fromRGBO(230, 232, 162, 1),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
                  elevation: 7,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Colors.amber,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            onChanged: (text) {
                              typedEmail = text;
                            },
                            onSubmitted: (_) {
                              return dataSubmitted(typedEmail, typedPassword);
                            },
                            decoration: InputDecoration(
                              labelText: 'Email',
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
                            onChanged: (text) {
                              setState(() {
                                typedPassword = text;
                              });
                            },
                            onSubmitted: (_) {
                              return dataSubmitted(typedEmail, typedPassword);
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          primary: Colors.green[700],
                        ),
                        onPressed: () {
                          return dataSubmitted(typedEmail, typedPassword);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          final scaffold = ScaffoldMessenger.of(context);
                            scaffold.showSnackBar(
                              SnackBar(
                                backgroundColor: Color.fromRGBO(230, 232, 162, 1),
                                content: Text('Please use LogIn only.',style: TextStyle(fontSize: 15,color: Colors.black,),textAlign: TextAlign.center,),
                              ),
                            );
                        },
                        child: Text('Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
