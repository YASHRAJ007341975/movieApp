import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_eleven_screen/iphone_14_pro_eleven_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_three_screen/iphone_14_pro_three_screen.dart';

import '../../routes/app_routes.dart';
import '../../widgets/custom_bottom_bar.dart';

class MovieHome extends StatelessWidget {
  const MovieHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Iphone14ProElevenScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Guest",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: size.height * 0.4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildMovieItem(
                    context,
                    "assets/images/coc.jpg",
                    "Clash of Clans",
                    "Anime",
                  ),
                  _buildMovieItem(
                    context,
                    "assets/images/scale.jpg",
                    "Deadpool",
                    "Thriller",
                  ),
                  _buildMovieItem(
                    context,
                    "assets/images/themmartian.jpg",
                    "The Martian",
                    "Sci-fi",
                  ),
                  _buildMovieItemWithDetail(context, "assets/images/moneyheist.jpg", "Money Heist", "Thriller"),
                ],
              ),
            ),
            const Text("Popular Movies", style: TextStyle(color: Colors.white)),
            const SizedBox(height: 10),
            SizedBox(
              height: size.height * 0.4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildMovieItem(
                    context,
                    "assets/images/ironman.jpg",
                    "Iron Man",
                    "Action",
                  ),
                  _buildMovieItem(
                    context,
                    "assets/images/openheimer.jpg",
                    "Openheimer",
                    "Thriller",
                  ),
                  _buildMovieItem(
                    context,
                    "assets/images/blackpanther.jpg",
                    "Black Panther",
                    "Sci-fi",
                  ),
                  _buildMovieItem(
                    context,
                    "assets/images/moneyheist.jpg",
                    "Money Heist",
                    "Thriller",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomBar(
      //   onChanged: (BottomBarEnum type) {
      //     Navigator.pushNamed(context, getCurrentRoute(type));
      //   },
      // ),
    );
  }

  // Helper function to build movie items
  Widget _buildMovieItem(BuildContext context, String imagePath, String title, String genre) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      height: size.height * 0.3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              imagePath,
              width: size.width * 0.4,
              height: size.height * 0.3,
              fit: BoxFit.cover,
            ),
          ),
          Text(title, style: const TextStyle(color: Colors.white)),
          Text(genre, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  // Helper function to build movie items with a detail screen
  Widget _buildMovieItemWithDetail(BuildContext context, String imagePath, String title, String genre) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      height: size.height * 0.3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MovieDetailScreen()),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                imagePath,
                width: size.width * 0.6,
                height: size.height * 0.2,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(title, style: const TextStyle(color: Colors.white)),
          Text(genre, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  // Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.iphone14ProTwoPage;
  //     case BottomBarEnum.Favorite:
  //       return "/";
  //     case BottomBarEnum.Downloadremovebgpreview:
  //       return "/";
  //     case BottomBarEnum.Bell:
  //       return "/";
  //     case BottomBarEnum.Menu:
  //       return "/";
  //     default:
  //       return "/";
  //   }
  // }
}

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Build your movie detail screen here
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Detail"),
      ),
      body: const Center(
        child: Text("Movie Detail Screen Content"),
      ),
    );
  }
}
