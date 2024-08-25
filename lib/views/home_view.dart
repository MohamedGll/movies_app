import 'package:flutter/material.dart';
import 'package:movies_app/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        backgroundColor: AppColors.secondaryColor,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.praimaryColor,
        unselectedItemColor: AppColors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/Home icon.png',
                ),
              ),
              label: 'HOME'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/search-2.png',
                ),
              ),
              label: 'SEARCH'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/Icon material-movie.png',
                ),
              ),
              label: 'BROWSE'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/Icon ionic-md-bookmarks.png',
                ),
              ),
              label: 'WATCHLIST'),
        ],
      ),
    );
  }
}
