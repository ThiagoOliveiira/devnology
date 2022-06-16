import 'package:devnology/ui/pages/cart/cart_page.dart';
import 'package:devnology/ui/pages/components/components.dart';
import 'package:devnology/ui/pages/home/components/home_body.dart';
import 'package:devnology/ui/pages/components/page_selected.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  int? indexCurrent;

  HomePage({this.indexCurrent = 0, Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<Widget> _screens = [
  const PageSelected(body: HomeBody()),
  const PageSelected(body: CartPage()),
  const PageSelected(body: CartPage()),
  const PageSelected(body: CartPage()),
  const PageSelected(body: CartPage()),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(227, 255, 255, 255),
            Color.fromARGB(227, 255, 255, 255)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('lib/ui/assets/icons/chat.png'),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              onPressed: () {},
            )
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Logo(
                iconSpace: 0.02,
                widthImage: 16,
                devTextStyle: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
                textStyle: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
        body: _screens[widget.indexCurrent!],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).backgroundColor,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: const Color(0xFFFFC600),
          onTap: onTabTapped,
          currentIndex: widget.indexCurrent!,
          items: [
            bottonNavigationBarItem(
              'Home',
              Icons.home_outlined,
              colorIcon: widget.indexCurrent == 0
                  ? const Color(0xFFFFC600)
                  : Colors.white,
              context,
            ),
            bottonNavigationBarItem(
              'Search',
              Icons.search,
              context,
              colorIcon: widget.indexCurrent == 1
                  ? const Color(0xFFFFC600)
                  : Colors.white,
            ),
            bottonNavigationBarItem(
              'Cart',
              Icons.shopping_cart_outlined,
              context,
              isCart: true,
              colorIcon: widget.indexCurrent == 2
                  ? const Color(0xFFFFC600)
                  : Colors.white,
            ),
            bottonNavigationBarItem(
              'Profile',
              Icons.person,
              context,
              colorIcon: widget.indexCurrent == 3
                  ? const Color(0xFFFFC600)
                  : Colors.white,
            ),
            bottonNavigationBarItem(
              'More',
              Icons.menu,
              context,
              colorIcon: widget.indexCurrent == 4
                  ? const Color(0xFFFFC600)
                  : Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      widget.indexCurrent = index;
    });
  }
}
