import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  
  final String title ;
  final _formKey = GlobalKey<FormState>();
  var pass1 = '';
  var pass2 = '';

  DetailScreen({this.title}); //constructor

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("REGISTER"),
      ),

      
      body:Container (
          padding:EdgeInsets.only(left:35, right: 35,top: 20 ),
           child: Form(
            key: _formKey,
            child: ListView(
            children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: "prachya@mail.com",
                icon: Icon(Icons.mail),
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              validator: (value){
                if (value.isEmpty) {
                  return "กรุณาระบุข้อมูลให้ครบถ้วน";
                }
                if(value.toUpperCase() == 'ADMIN'){
                  return 'user นี้มีอยู่ในระบบแล้ว';
                }
              },
            ),Container(
                padding: EdgeInsets.only(top: 15),
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
                this.pass1 = value;
              if (value.isEmpty) {
                  return "กรุณาระบุข้อมูลให้ครบถ้วน";
                }
              },
            ),
            Container(
                padding: EdgeInsets.only(top: 15),
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
              this.pass2 = value;
              if (value.isEmpty) {
                  return "กรุณาระบุข้อมูลให้ครบถ้วน";
                }
                if(pass1 != pass2){
                  return 'รหัสผ่านต่างกัน';
                }
              },
            ),
            Container(
                padding: EdgeInsets.only(top: 30),
            ),

            RaisedButton(
              child: Text("CONTINUE"),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              onPressed: () {
                 if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, "/main");
                 };
              },
            ),

          ],
        ),
      ),




      ),
      
    );
  }
}