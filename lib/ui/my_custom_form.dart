import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {

    return MyCustomFormState();
  }

}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
                padding:EdgeInsets.only(left:50, right: 50,top: 120 ),
              
        child:Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "resources/login.png", 
              height: 200,
            ),
            TextFormField(
              
              decoration: InputDecoration(
                hintText: "User ID",
                icon: Icon(Icons.person),
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              validator: (value){
                if (value.isEmpty) {
                  return "“กรุณาระบุuser or password";
                }
                if(value.toUpperCase() == 'ADMIN'){
                  return 'user or password ไม่ถูกต้อง';
                }
              },
              
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              keyboardType: TextInputType.text,
              onSaved: (value) => print(value),
              validator: (value){
              if (value.isEmpty) {
                  return "“กรุณาระบุuser or password";
                }
                if(value.toUpperCase() == 'ADMIN'){
                  return 'user or password ไม่ถูกต้อง';
                }
              },
            ),
            RaisedButton(
              child: Text("LOGIN"),
              onPressed: () {
                 if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, "/first");
                 };
              },
            ),
            Container(
                child: FlatButton(
                  child: Text("Register New Account"),
                  onPressed:() {
                    Navigator.pushNamed(context, "/register");
                  },
                ),
                alignment: Alignment.bottomRight,
                
              )
            
          ],
        ),
      ),
    ),
    );
  }
}