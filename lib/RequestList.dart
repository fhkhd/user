import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:user/LoggIn.dart';
import 'package:user/main.dart';
import 'ButtonNavigationBar.dart';
import 'farsiNumber.dart';
import 'Dialog.dart';


class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();
}
class _RequestsState extends State<Requests> {
  Dialogss _dialogss= new Dialogss();
  Farsi _farsi=new Farsi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(),
                      Padding(
                        padding:  EdgeInsets.only(
                            left: MediaQuery.of(context).size.width/15,
                            // top: 20.0,
                            top: MediaQuery.of(context).size.height/35,
                            bottom: 0.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LogIn()));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('خروج از حساب',
                                style: TextStyle(
                                  color: HexColor('246DFF'),
                                  fontFamily: 'IranianSans',
                                  fontSize: MediaQuery.of(context).size.width/22.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SvgPicture.asset('assets/logoutsvg.svg',)
                            ],
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width/15.0,
                  top: 0.0),
              child: Text(
                'لیست درخواست های داده شده',
                style: TextStyle(
                  color: HexColor('252525'),
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.width/22.5,
                  fontFamily: 'IranianSans',
                ),
              ),),
          ),
          Expanded(
          child: Container(
          height: MediaQuery.of(context).size.height,
    child: ListView.builder(
    scrollDirection: Axis.vertical,
    itemBuilder: (_,int index) => itemCards(),
    itemCount: 8+1,
    ),
    ))
        ],
      ),
      
      bottomNavigationBar: InkWell(
        onTap: (){
          // createAlertDialog(context);
          _dialogss.createAlertDialog(context);
        },
        child: ButtonNavigationBar("افزودن درخواست(پیش فرض)"),
      ),
    );
  }


  Material Request(){
    return Material(
      color: HexColor('FFFFFF'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Container(
        // height: 144.0,
        width: MediaQuery.of(context).size.width-(2*(MediaQuery.of(context).size.width/15)),
        child: Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width/30,
            top: MediaQuery.of(context).size.height/87,
            // top: 8.0,
            bottom: MediaQuery.of(context).size.height/87,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(height: 8.0,),
                  Text(
                    'نام درخواست دهنده:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  // SizedBox(width: 4.0),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),
                  Text(
                    'محمد خواستار',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      color: HexColor('252525'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/87,),
              Row(
                children: [
                  Text(
                    'وضعیت درخواست:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),
                  Text(
                    'درحال برسی',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      color: HexColor('252525'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/87,),
              Row(
                children: [
                  Text(
                    'آدرس:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),
                  Text(
                    _farsi.replaceFarsiNumber('قم،آزادگان،خیابان نواب،کوچه16'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w500,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/87,),
              Row(
                children: [
                  Text(
                    'عنوان درخواست:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),
                  Text(
                    _farsi.replaceFarsiNumber('مشکل شبکه'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w500,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // elevation: 8.0,
      // shadowColor: HexColor('40246DFF'),
    );
  }


  Widget itemCards(){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width/15,
            right: MediaQuery.of(context).size.width/15,
            // top: 10.0,
            top: MediaQuery.of(context).size.height/67,
          ),
          child: Container(
            child: Request(),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(36, 109, 255, 0.25),
                  // spreadRadius: 1/10000,
                  blurRadius: 8,
                  offset: Offset(0,4),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height/49,
          // height: 14.0,
        ),
      ],
    );
  }

}
