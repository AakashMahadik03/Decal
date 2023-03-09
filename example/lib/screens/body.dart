import 'package:flutter/material.dart';
import 'package:Decal_AR_App/constants.dart';
import 'package:Decal_AR_App/components/details_screen.dart';

import '../components/details_screen_3table.dart';
import '../components/details_screen_Decor1.dart';
import '../components/details_screen_clock.dart';
import '../components/details_screen_titaniclamp.dart';
import '../components/details_screen_sofa.dart';
import '../components/details_screen_wallart1.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           HeaderWithSearchBox(size: size),
           TitleWithMoreBtn(title: "Furnitures", press: () {}),
           Furniture(),
          TitleWithMoreBtn(title: "Wall Art", press: () {}),
          WallArt(),
           TitleWithMoreBtn(title: "Decorectives", press: () {}),
          Decoretives(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({Key? key, required this.size}) : super(key: key);
  //const HeaderWithSearchBox({Key ?key, this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Welcome!',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                //Image.asset("assets/images/logo.png"),

                CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/Images/logo.png")
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.blue.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.blue.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  //new IconButton( icon: new Icon(Icons.search_off), tooltip: 'Air it', onPressed: (null), ),
                  IconButton(
                    icon: Icon(Icons.search_sharp,
                        size: 32,
                        color: Colors.cyan),
                    onPressed: () {
                    },
                  ),
                  //Icon(Icons.search),
                  //SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({Key? key, required this.title, required this.press,}) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          // SizedBox(
          //   width: 100,
          //   height: 40,
          //   child: FittedBox(
          //     child: FloatingActionButton(
          //       shape: RoundedRectangleBorder(
          //         //borderRadius: BorderRadius.circular(20),
          //           borderRadius: BorderRadius.circular(20)
          //       ),
          //       onPressed: (null),
          //       child: Text(
          //         "More",
          //         style: TextStyle(color: Colors.white),
          //       ),
          //
          //     ),
          //   ),
          // ),
          FloatingActionButton.extended(
            onPressed: (null),
            label: Text('more'),
            //icon: Icon(Icons.edit),
          ),
          // FloatingActionButton(
          //   shape: RoundedRectangleBorder(
          //     //borderRadius: BorderRadius.circular(20),
          //     borderRadius: BorderRadius.circular(20)
          //   ),
          //   //colors: kPrimaryColor,
          //   onPressed: (null),
          //   child: Text(
          //     "More",
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({Key? key, required this.text, }) : super(key: key);


  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              //margin: EdgeInsets.only(right: kDefaultPadding / 4),

              height: 5,
              color: kPrimaryColor1.withOpacity(0.15),
            ),
          )
        ],
      ),
    );
  }
}
class Furniture extends StatelessWidget {
  const Furniture({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[

          FurnitureCard(


            image: "assets/Images/model.png",
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => DetailsScreen()));
            // },
            title: "Chair",
            country: "Elastic",
            price: 440,


            Press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },

          ),

          FurnitureCard(
            image: "assets/Images/sofa.png",
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => DetailsScreen()));
            // },
            title: "SOFA",
            country: "Fabric Luxury",
            price: 440,
            Press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen_Sofa(),
                ),
              );
            },
          ),
          FurnitureCard(
            image: "assets/Images/3table.png",
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => DetailsScreen()));
            // },
            title: "Table ",
            country: "3 Stand",
            price: 440,


            Press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen_3table(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class FurnitureCard extends StatelessWidget {
  const FurnitureCard({Key? key, required this.image, required this.title, required this.country, required this.price, required this.Press,  }) : super(key: key);


  final String image, title, country;
  final int price;
  final  VoidCallback? Press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.45,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: Press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WallArt extends StatelessWidget {
  const WallArt({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[

          WallArtCard(


            image: "assets/Images/WallArt.png",
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => DetailsScreen()));
            // },
            title: "PHOTO",
            country: "FRAME",
            price: 440,


            Press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen_wallart1(),
                ),
              );
            },

          ),

          WallArtCard(
            image: "assets/Images/WallArt1.png",
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => DetailsScreen()));
            // },
            title: "Panel ceramic",
            country: "Natalie Blake",
            price: 440,
            Press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          WallArtCard(
            image: "assets/Images/WallArt2.png",
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => DetailsScreen()));
            // },
            title: "PICTURE FRAME",
            country: "BLACK & WHITE",
            price: 440,


            Press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class WallArtCard extends StatelessWidget {
  const WallArtCard({Key? key, required this.image, required this.title, required this.country, required this.price, required this.Press,  }) : super(key: key);


  final String image, title, country;
  final int price;
  final  VoidCallback? Press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.45,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: Press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class Decoretives extends StatelessWidget {
  const Decoretives({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          DecoretivesCard(
            image: "assets/Images/Decor2.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen_titacniclamp(),
                ),
              );
            },
          ),
          DecoretivesCard(
            image: "assets/Images/Decor1.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen_Decor1(),
                ),
              );
            },
          ),
          DecoretivesCard(
            image: "assets/Images/Vase-rose.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DecoretivesCard extends StatelessWidget {
  const DecoretivesCard({Key? key, required this.image, required this.press}) : super(key: key);

  final String image;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.45,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: kPrimaryColor.withOpacity(0.08),
            ),
          ],
        ),
      ),
    );
  }
}

