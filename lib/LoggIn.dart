import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'RequestList.dart';

class LogIn extends StatefulWidget {

  static String tag = 'login-page';

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {



    final login= Text(
      'ورود',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        fontFamily: 'IranianSans',
        color: HexColor('252525'),
      ),
      textAlign: TextAlign.right,
    );

    final username = TextFormField(
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
            decoration: InputDecoration(
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(width: 1.0,color: HexColor('246DFF')),
                borderRadius: BorderRadius.circular(8.0),
              ),
              contentPadding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height/35)/2,
                bottom: (MediaQuery.of(context).size.height/35)/2,
              ),
              labelText: 'نام کاربری',
              prefixIcon: Icon(Icons.person_outline,color: Colors.grey,
                  size: MediaQuery.of(context).size.width/15,
            ),
            ),
          );


    final password = TextFormField(
          autofocus: false,
            obscureText:  _isObscure,
          decoration: InputDecoration(
            helperMaxLines: 10,
            border: new OutlineInputBorder(
              borderSide: new BorderSide(width: 1.0,color: HexColor('246DFF')),
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: EdgeInsets.only(
              top: (MediaQuery.of(context).size.height/35)/2,
              bottom: (MediaQuery.of(context).size.height/35)/2,
            ),
            prefixIcon: Icon(Icons.lock,color: Colors.grey,
              size: MediaQuery.of(context).size.width/15,
            ),
              labelText: 'رمز عبور',
              suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  })
          )
    );


    final loginButton = Center(
      child: Material(
        color: HexColor('246DFF'),
        borderRadius: BorderRadius.circular(8.0),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width-(9.20*(MediaQuery.of(context).size.width/18.75)),
          height: MediaQuery.of(context).size.height/15.75,

          onPressed: (){

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Requests()));

          },
          child: Text('ورود',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'IranianSans',
              fontSize: MediaQuery.of(context).size.width/20.0,
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
          padding: EdgeInsets.only(
              right: 2*(MediaQuery.of(context).size.width/15),
              left: 2*(MediaQuery.of(context).size.width/15),
          ),
          children: <Widget>[
            login,
            SizedBox(height: MediaQuery.of(context).size.height/11.75,),
            Container(
              width: MediaQuery.of(context).size.width-(4*(MediaQuery.of(context).size.width/30.0)),
              child: username,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(36, 109, 255, 0.25),
                    blurRadius: 8,
                    offset: Offset(0,4),
                  )
                ],
              ),),
            SizedBox(height: MediaQuery.of(context).size.height/12,),

            Container(
              child: password,
              width: MediaQuery.of(context).size.width-(4*(MediaQuery.of(context).size.width/30.0)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(36, 109, 255, 0.25),
                    blurRadius: 8,
                    offset: Offset(0,4),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/21,),
            loginButton,
          ],
        ),
      ),
    );
  }
}
