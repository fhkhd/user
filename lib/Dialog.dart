import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'RequestList.dart';
import 'package:flutter/services.dart';
class Dialogss {

  String? _chosenValue;

  createAlertDialog(BuildContext context){
    TextEditingController customController = TextEditingController();
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState){
            return AlertDialog(
              titlePadding: const EdgeInsets.all(0.0),
              actionsPadding: const EdgeInsets.all(0.0),
              contentPadding: const EdgeInsets.all(0.0),
              insetPadding: const EdgeInsets.all(0.0),
              buttonPadding: const EdgeInsets.all(0.0),
              actionsOverflowButtonSpacing: 0.0,
              title: AppBar(
                elevation: 0.0,
                backgroundColor: Colors.white,
                leading: SizedBox(height: 0.0,),
                actions: <Widget>[
                  SizedBox(height: 0.0,),
                  Container(
                    width: MediaQuery.of(context).size.width-48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 24.0,right: 16.0),
                          child: Text('لیست سوالات پیش فرض',
                            style: TextStyle(
                              fontFamily: 'IranianSans',
                              fontSize: 14.0,
                              color: HexColor('585858'),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.right,),),
                        // SizedBox(width: MediaQuery.of(context).size.width-235.0,),
                        Padding(padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.close,color: HexColor('585858'),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              content: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                height: 340.0,
                width: MediaQuery.of(context).size.width-48,
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.circular(8.0),
                      elevation: 8.0,
                      shadowColor: HexColor('40246DFF'),
                      child: Container(
                        height: 40.0,
                        width: MediaQuery.of(context).size.width-80,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color: HexColor('246DFF')),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: new DropdownButton<String>(
                          icon: Padding(
                            padding: EdgeInsets.only(left: 13.0),
                            child: Icon(Icons.keyboard_arrow_down_rounded,
                              color: HexColor('246DFF'),
                            ),
                          ),
                          hint: Container(
                            child: Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Text('انتخاب کنید ...'),
                            ),
                            width: MediaQuery.of(context).size.width-119,
                          ),
                          value: _chosenValue,
                          underline: Container(
                            height: 40.0,
                            width: 280.0,
                          ),
                          items: <String>[
                            'مشکل شبکه',
                            'مشکل بالا نیامدن ویندوز',
                            'دیگر ...'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              _chosenValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(right: 17.0),
                    child: Text('توضیحات',
                      style: TextStyle(
                        fontFamily: 'IranianSans',
                        fontSize: 14.0,
                        color: HexColor('585858'),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.right,
                    ),),
                  Container(),
                  Container(),
                ],
              ),
                    SizedBox(height: 4.0,),
                    new Material(
                      child: new Container(
                        width: MediaQuery.of(context).size.width-80,
                        height: 145.0,
                        child: TextField(
                          maxLines: 100,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: 'توضیحات خود را وارد کنید ...',
                            contentPadding: EdgeInsets.only(top: 1.0,right: 8.0,bottom: 100.0),
                            border: InputBorder.none,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color: HexColor('246DFF')),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      elevation: 8.0,
                      shadowColor: HexColor('40246DFF'),
                    ),
              SizedBox(height: 28.0,),
              Padding(
                padding: EdgeInsets.only(left: 40.0,right: 40.0),
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
                    child: Text('ارسال',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'IranianSans',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

                  ],
                ),
              ),
            );
          },

        );
      },
    );
  }
}
