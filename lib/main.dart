import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(PlayGroundApp());
}

class PlayGroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Navbar(),
                SizedBox(
                  height: 20.0,
                ),
                Title(),
                SizedBox(
                  height: 20.0,
                ),
                Categories(),
                SizedBox(
                  height: 20.0,
                ),
                FoodCards(),
                SizedBox(
                  height: 10.0,
                ),
                PopularHead(),
                SizedBox(
                  height: 10.0,
                ),
                Popular()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.sort,
            size: 30.0,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.search,
            size: 30.0,
          ),
        ),
      ],
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Springy Salads',
          style: GoogleFonts.poppins(
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          'healthy and nutritious food recipes',
          style: GoogleFonts.poppins(color: Colors.grey, fontSize: 15.0),
        ),
      ],
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget card(String name, icon, double width) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          left: 10.0,
          right: 10.0,
        ),
        height: 35.0,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                alignment: Alignment.center,
                child: Hero(
                  tag: icon,
                  child: FaIcon(
                    icon,
                    size: 20.0,
                  ),
                ),
              ),
            ),
            Text(
              name,
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        card("Vegetable", FontAwesomeIcons.carrot, 125.0),
        card("Caesar", FontAwesomeIcons.leaf, 110.0),
        card("Fruit", FontAwesomeIcons.appleAlt, 90.0),
      ],
    );
  }
}

class FoodCards extends StatelessWidget {
  @override
  Widget cardInfo(String name, String ingredients, String image, int calories) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        padding: EdgeInsets.all(8.0),
        height: 300.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4.0,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
              image,
              height: 160.0,
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 15.0),
                  child: Text(
                    ingredients,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$calories Kcal',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                  ),
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          cardInfo(
            "Chopped Spring",
            "Scallions & Radishes",
            'assets/salad1.png',
            250,
          ),
          cardInfo(
            "Asian Super",
            "Brocolli & Edamame",
            'assets/salad2.png',
            300,
          ),
          cardInfo(
            "Banging Piri",
            "Bananas & Chicken",
            'assets/salad3.png',
            320,
          ),
        ],
      ),
    );
  }
}

class PopularHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Popular',
          style: GoogleFonts.varelaRound(
            fontSize: 23.0,
            color: Colors.grey[800],
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          ' Food',
          style: GoogleFonts.varelaRound(
            fontSize: 23.0,
            color: Colors.grey[500],
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/salad1.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chopped Spring',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Scallions & Radishes",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '250 Kcal',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 15.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65.0),
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.heart,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
