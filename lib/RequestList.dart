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
                        padding:  EdgeInsets.only(left: 26.0,top: 20.0,bottom: 0.0),
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
              padding: EdgeInsets.only(right: 24.0,top: 0.0),
              child: Text(
                'لیست درخواست های داده شده',
                style: TextStyle(
                  color: HexColor('252525'),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  fontFamily: 'IranianSans',
                ),
              ),),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 18.0),
                  child: Request(),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Request(),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Request(),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Request(),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Request(),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Request(),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Request(),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Request(),
                  ),
                ),

                SizedBox(height: 135.0,),
              ],
            ),
          )
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
        height: 144.0,
        width: MediaQuery.of(context).size.width-48.0,
        child: Padding(
          padding: EdgeInsets.only(right: 12.0,top: 8.0),
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
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'محمد خواستار',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      color: HexColor('252525'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  Text(
                    'وضعیت درخواست:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'درحال برسی',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      color: HexColor('252525'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  Text(
                    'آدرس:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    _farsi.replaceFarsiNumber('قم،آزادگان،خیابان نواب،کوچه16'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  Text(
                    'عنوان درخواست:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    _farsi.replaceFarsiNumber('مشکل شبکه'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
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
      elevation: 8.0,
      shadowColor: HexColor('40246DFF'),
    );
  }

}
