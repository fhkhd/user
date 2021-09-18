import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class ButtonNavigationBar extends StatelessWidget {

  String _titleOfButtonNavigation;


  ButtonNavigationBar(this._titleOfButtonNavigation);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: HexColor('246DFF'),
      child: Container(
        height: 44.0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 44.0,
          child: Center(
            child: Text(
              _titleOfButtonNavigation,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'IranianSans',
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
