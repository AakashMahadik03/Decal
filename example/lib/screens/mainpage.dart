import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'body.dart';



class MainPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(

      appBar: buildAppBar,
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),

    );
  }

  AppBar get buildAppBar {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      leading: IconButton(
        onPressed: (){
          //action coe when button is pressed
        },
        icon: Icon(Icons.menu),
      ),

    );
  }


}
class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 1.5,
        right: kDefaultPadding * 1.5,
        bottom: kDefaultPadding * 1.3,
      ),
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor1.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            //icon: SvgPicture.asset("assets/icons/flower.svg"),
            icon: Icon(Icons.star,
                size: 28,
                color: Colors.blue),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite,
                size: 28,
                color: Colors.blue),
            onPressed: () {},
          ),
          IconButton(
            //icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            icon: Icon(Icons.person,
                size: 28,
                color: Colors.blue),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: SvgPicture.asset("assets/icons/user-icon.svg"),
          //   onPressed: () {},

        ],
      ),
    );
  }
}
