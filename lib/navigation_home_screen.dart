import 'package:best_flutter_ui_templates/model/app_theme.dart';
import 'package:best_flutter_ui_templates/custom_drawer/drawer_user_controller.dart';
import 'package:best_flutter_ui_templates/custom_drawer/home_drawer.dart';
import 'package:best_flutter_ui_templates/model/feedback_screen.dart';
import 'package:best_flutter_ui_templates/model/help_screen.dart';
import 'package:best_flutter_ui_templates/model/home_screen.dart';
import 'package:best_flutter_ui_templates/model/invite_friend_screen.dart';
import 'package:best_flutter_ui_templates/model/RectoratePage.dart';
import 'package:best_flutter_ui_templates/model/Engineering.dart';
import 'package:best_flutter_ui_templates/model/TechnoPark.dart';
import 'package:best_flutter_ui_templates/model/SportScience.dart';
import 'model/Technology.dart';
import 'package:best_flutter_ui_templates/model/Medical.dart';

import 'package:flutter/material.dart';

import 'model/Businnes.dart';
import 'model/Literature.dart';
import 'model/Religion.dart';


class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget? screenView;
  DrawerIndex? drawerIndex;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = const MyHomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
              //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
            },
            screenView: screenView,
            //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = const MyHomePage();
        });
      } else if (drawerIndex == DrawerIndex.Help) {
        setState(() {
          screenView = HelpScreen();
        });
      } else if (drawerIndex == DrawerIndex.FeedBack) {
        setState(() {
          screenView = FeedbackScreen();
        });
      }
      else if (drawerIndex == DrawerIndex.SchoolMap) {
        setState(() {
          screenView = SchoolMap();
        });

      }
      else if (drawerIndex == DrawerIndex.Engineering) {
        setState(() {
          screenView = Engineering();
        });

      }
      else if (drawerIndex == DrawerIndex.RectoratePage) {
        setState(() {
          screenView = RectoratePage();
        });

      }
      else if (drawerIndex == DrawerIndex.Literature) {
        setState(() {
          screenView = Literature();
        });

      }
      else if (drawerIndex == DrawerIndex.Religion) {
        setState(() {
          screenView = Religion();
        });

      }
      else if (drawerIndex == DrawerIndex.Businnes) {
        setState(() {
          screenView = Businnes();
        });

      }
      else if (drawerIndex == DrawerIndex.SportScience) {
        setState(() {
          screenView = SportScience();
        });

      }
      else if (drawerIndex == DrawerIndex.Technology) {
        setState(() {
          screenView = Technology();
        });

      }
      else if (drawerIndex == DrawerIndex.Medical) {
        setState(() {
          screenView = Medical();
        });
      }
      else if (drawerIndex == DrawerIndex.TechnoPark) {
        setState(() {
          screenView = TechnoPark();
        });
      }

      else {
        //do in your way......
      }
    }
  }
}

