import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'RequestList.dart';
import 'package:flutter/services.dart';
import 'package:dropdown_plus/dropdown_plus.dart';


class Dialogss {

  String? _chosenValue;

  createAlertDialog(BuildContext context){
    TextEditingController customController = TextEditingController();
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState){
            return Container(
              child: AlertDialog(
                titlePadding: const EdgeInsets.all(0.0),
                contentPadding: const EdgeInsets.all(0.0),
                insetPadding: const EdgeInsets.all(0.0),
                actionsOverflowButtonSpacing: 0.0,
                title: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0,color: Colors.white),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    leading: SizedBox(height: 0.0,),
                    actions: <Widget>[
                      SizedBox(height: 0.0,),
                      Container(
                        // height: (52.0/394.0)*(MediaQuery.of(context).size.height/2),
                        width: MediaQuery.of(context).size.width-2*(MediaQuery.of(context).size.width/14.25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(
                                // top: MediaQuery.of(context).size.height/30,
                              top: (24.0/394.0)*(MediaQuery.of(context).size.height/2),
                              right: MediaQuery.of(context).size.width/22.5,
                            ),
                              child: Text(
                                'لیست سوالات پیش فرض',
                                style: TextStyle(
                                  fontFamily: 'IranianSans',
                                  fontSize: MediaQuery.of(context).size.width/25.75,
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
                ),
                content: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: (MediaQuery.of(context).size.height/2),
                  width: MediaQuery.of(context).size.width-2*(MediaQuery.of(context).size.width/15),
                  child: Column(
                    children: <Widget>[
                      // SizedBox(height: (4.0/394.0)*(MediaQuery.of(context).size.height/2),)
                      Material(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          // height: 40.0,
                          // height: 2*(MediaQuery.of(context).size.height/35),
                          width: MediaQuery.of(context).size.width-(4*(MediaQuery.of(context).size.width/18.75)),
                            decoration: BoxDecoration(
                            // border: Border.all(width: 1.0,color: HexColor('246DFF')),
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(36, 109, 255, 0.25),
                                // spreadRadius: 1/10000,
                                blurRadius: 8,
                                offset: Offset(0,4),
                              )
                            ],
                          ),
                        //   child: new DropdownButton<String>(
                        //     icon: Icon(Icons.keyboard_arrow_down_rounded,
                        //       color: HexColor('246DFF'),
                        //     ),
                        //     iconSize: MediaQuery.of(context).size.width/15,
                        //     hint: Container(
                        //       child: Padding(
                        //         padding: EdgeInsets.only(
                        //             // right: 8.0,
                        //             right: MediaQuery.of(context).size.width/45,
                        //         ),
                        //         child: Text('انتخاب کنید ...'),
                        //       ),
                        //       width: MediaQuery.of(context).size.width-((5.5)*(MediaQuery.of(context).size.width/18.75)),
                        //     ),
                        //     value: _chosenValue,
                        //     underline: Container(
                        //       // height: 40.0,
                        //       height: 2*(MediaQuery.of(context).size.height/35),
                        //       width: MediaQuery.of(context).size.width-(4*(MediaQuery.of(context).size.width/18.75)),
                        //     ),
                        //     items: <String>[
                        //       ' مشکل شبکه',
                        //       ' مشکل بالا نیامدن ویندوز',
                        //       ' دیگر ...'
                        //     ].map((String value) {
                        //       return new DropdownMenuItem<String>(
                        //         value: value,
                        //         child: new Text(
                        //           value,
                        //           style: TextStyle(fontWeight: FontWeight.w500),
                        //         ),
                        //       );
                        //     }).toList(),
                        //     onChanged: (String? value) {
                        //       setState(() {
                        //         _chosenValue = value;
                        //       });
                        //     },
                        //   ),

                          child: TextDropdownFormField(
                            options: [
                              ' مشکل شبکه',
                              ' مشکل بالا نیامدن ویندوز',
                              ' دیگر ...'
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: new BorderSide(width: 1.0,color: HexColor('246DFF')),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: EdgeInsets.only(
                                  // top: (MediaQuery.of(context).size.height/35)/2,
                                  top: (10.0/394.0)*(MediaQuery.of(context).size.height/2),
                                  // bottom: (MediaQuery.of(context).size.height/35)/2,
                                  bottom: (10.0/394.0)*(MediaQuery.of(context).size.height/2),
                                ),
                                prefixIcon: Icon(Icons.search,
                                  size: MediaQuery.of(context).size.width/15,
                                ),
                                suffixIcon: Icon(Icons.arrow_drop_down),
                                labelText: 'انتخاب کنید'
                            ),
                            dropdownHeight: 5*(MediaQuery.of(context).size.height/35),

                          ),
                        ),
                      ),
                      // SizedBox(height: 40.0,),
                      // SizedBox(height: 2*(MediaQuery.of(context).size.height/35),),
                      SizedBox(height: (40.0/394.0)*(MediaQuery.of(context).size.height/2),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(
                              // right: 17.0
                            right: MediaQuery.of(context).size.width/15,
                          ),
                            child: Text('توضیحات',
                              style: TextStyle(
                                fontFamily: 'IranianSans',
                                // fontSize: 14.0,
                                fontSize: MediaQuery.of(context).size.width/25.75,
                                color: HexColor('585858'),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.right,
                            ),),
                          Container(),
                          Container(),
                        ],
                      ),
                      // SizedBox(height: 4.0,),
                      // SizedBox(height: (MediaQuery.of(context).size.height/87)/2,),
                      SizedBox(height: (4.0/394.0)*((MediaQuery.of(context).size.height/2)),),
                      new Material(
                        child: new Container(
                          // width: MediaQuery.of(context).size.width-80,
                          width: MediaQuery.of(context).size.width-(4*(MediaQuery.of(context).size.width/18.75)) ,
                          // height: 0.3705*(MediaQuery.of(context).size.height/2),
                          height: (146.0/394.0)*((MediaQuery.of(context).size.height/2)),
                          // height: 134.0,
                          child: TextField(
                            maxLines: 10,
                            autofocus: false,
                            decoration: InputDecoration(
                              hintText: 'توضیحات خود را وارد کنید ...',
                              contentPadding: EdgeInsets.only(
                                  top: 1.0,
                                  // right: 8.0,
                                  right: MediaQuery.of(context).size.width/45,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: HexColor('246DFF')),
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
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
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      // SizedBox(height: 28.0,),
                      SizedBox(
                        // height: (MediaQuery.of(context).size.height/30)+(MediaQuery.of(context).size.height/87)/2,
                        height: (28.0/394.0)*((MediaQuery.of(context).size.height/2)),
                      ),
                      // SizedBox(height: MediaQuery.of(context).size.height/21,),

                      Padding(
                        padding: EdgeInsets.only(
                           ),
                        child: Material(
                          color: HexColor('246DFF'),
                          borderRadius: BorderRadius.circular(8.0),
                          child: MaterialButton(
                            // minWidth: 184.0,
                            minWidth: MediaQuery.of(context).size.width-(9.20*(MediaQuery.of(context).size.width/18.75)),
                              // height: 44.0,
                            // height: MediaQuery.of(context).size.height/15.75,
                            height: (44.0/394.0)*((MediaQuery.of(context).size.height/2)),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Requests()));
                            },
                            child: Text('ارسال',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'IranianSans',
                                fontSize: MediaQuery.of(context).size.width/20.0,
                                fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
