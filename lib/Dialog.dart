import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'RequestList.dart';
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
                height: 394.0,
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
