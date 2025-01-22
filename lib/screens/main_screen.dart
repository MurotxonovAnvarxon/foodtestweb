import 'package:flutter/material.dart';
import 'package:foodtestweb/my_bloc.dart';
import 'package:foodtestweb/screens/home.dart';
import 'package:foodtestweb/screens/label.dart';
import 'package:foodtestweb/screens/profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add.dart';
import 'notifications.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int _page = 0;

  int count = 0;
  List icons = [
    Icons.home,
    Icons.label,
    Icons.add,
    Icons.notifications,
    Icons.person,
  ];

  List pages = [
    Home(),
    Label(
      key: Key("label"),
    ),
    Add(
      key: Key("add"),
    ),
    Notifications(
      key: Key("notification"),
    ),
    Profile(
      key: Key("profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocConsumer<MyBloc, MyState>(
        listener: (context, stateMy) {


        },
        builder: (context, state) {
          return PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: onPageChanged,
            children: List.generate(5, (index) => pages[index]),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // SizedBox(width: 7),
            buildTabIcon(0),
            buildTabIcon(1),
            buildTabIcon(3),
            buildTabIcon(4),
            // SizedBox(width: 7),
          ],
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BlocConsumer<MyBloc, MyState>(
        listener: (context, myState) {
        },
        builder: (context, myState) {
          return FloatingActionButton(
            elevation: 10.0,
            child: Column(
              children: [
                Icon(
                  Icons.add,
                ),
                Text(myState.count.toString() ?? "")
              ],
            ),
            onPressed: () {
              context.read<MyBloc>().add(AddEvent());

              print(myState.count);
            },
          );
        },
      ),
    );
  }

  // void navigationTapped(int page) {
  //    _pageController.jumpToPage(page);
  //  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  buildTabIcon(int index) {
    return Container(
      margin:
          EdgeInsets.fromLTRB(index == 3 ? 30 : 0, 0, index == 1 ? 30 : 0, 0),
      child: IconButton(
        icon: Icon(
          icons[index],
          size: 24.0,
        ),
        color: _page == index
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).textTheme.bodySmall!.color,
        onPressed: () => _pageController.jumpToPage(index),
      ),
    );
  }
}
