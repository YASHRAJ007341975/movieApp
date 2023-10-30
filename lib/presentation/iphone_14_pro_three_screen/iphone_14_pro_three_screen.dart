import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_four_screen/iphone_14_pro_four_screen.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/moneyheist.jpg",
                  height: size.height * 0.4,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "OverView",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "An unusual group of robbers attempt to carry out the most perfect robbery in Spanish history - stealing 2.4 billion euros from the Royal Mint of Spain.",
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: size.height * 0.3,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Ep-1: the story begins"),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Iphone14ProFourScreen(),));
                              }, icon: Icon(Icons.play_arrow,color: Colors.white,))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Ep-2: the story begins"),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Iphone14ProFourScreen(),));

                              }, icon: Icon(Icons.play_arrow,color: Colors.white,))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Ep-3: the story begins"),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Iphone14ProFourScreen(),));

                              }, icon: Icon(Icons.play_arrow,color: Colors.white,))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Ep-4: the story begins"),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Iphone14ProFourScreen(),));

                              }, icon: Icon(Icons.play_arrow,color: Colors.white,))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Ep-5: the story begins"),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Iphone14ProFourScreen(),));

                              }, icon: Icon(Icons.play_arrow,color: Colors.white,))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}