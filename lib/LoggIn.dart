import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'RequestList.dart';

class LogIn extends StatefulWidget {

  static String tag = 'login-page';

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {



    final login= Text(
      'ورود',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        fontFamily: 'IranianSans',
        color: HexColor('252525'),
      ),
      textAlign: TextAlign.right,
    );

    final usernametxt= Text(
      'نام کاربری :',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        fontFamily: 'IranianSans',
        color: HexColor('585858'),
      ),
      textAlign: TextAlign.right,
    );

    final username = Material(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        height: 40.0,
        width: 264.0,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          // initialValue: 'fhkhdkri@yahoo.com',
          decoration: InputDecoration(
            hintText: 'نام کاربری',
            contentPadding: EdgeInsets.only(top: 1.0),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.person_outline,color: Colors.grey,size: 24.0),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0,color: HexColor('246DFF')),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      elevation: 8.0,
      shadowColor: HexColor('40246DFF'),
    );


    final passwordtxt= Text(
      'رمز عبور :',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        fontFamily: 'IranianSans',
        color: HexColor('585858'),
      ),
      textAlign: TextAlign.right,
    );


    final password = Material(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        height: 40.0,
        width: 264.0,
        child: TextFormField(
          autofocus: false,
          // initialValue: '1234',
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 1.0),
            hintText: 'رمز عبور',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.lock,color: Colors.grey,size: 24.0),
          )
          ),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0,color: HexColor('246DFF')),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      elevation: 8.0,
      shadowColor: HexColor('40246DFF'),
    );


    final loginButton = Padding(
      padding: EdgeInsets.only(left: 40.0,right: 40.0,bottom: 75.0),
      child: Material(
        color: HexColor('246DFF'),
        borderRadius: BorderRadius.circular(8.0),
        child: MaterialButton(
          minWidth: 184.0,
          height: 44.0,
          onPressed: (){

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Requests()));

          },
          child: Text('ورود',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'IranianSans',
              fontSize: 18.0,
              fontWeight: FontWeight.w700,),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(right: 48.0,left: 48.0),
          children: <Widget>[
            login,
            SizedBox(height: 28.0),
            usernametxt,
            SizedBox(height: 4.0,),
            username,
            SizedBox(height: 28.0,),
            passwordtxt,
            SizedBox(height: 4.0,),
            password,
            SizedBox(height: 24.0,),
            loginButton,
          ],
        ),
      ),
    );
  }
}
