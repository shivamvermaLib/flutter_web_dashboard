import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/home/home_controller.dart';
import 'package:flutter_web_dashboard/utils/app_widgets.dart';
import 'package:flutter_web_dashboard/utils/colors.dart';
import 'package:get/get.dart';

class HomePage extends GetResponsiveView<HomeController> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget builder() {
    return Scaffold(
      drawer:
          screen.isPhone || screen.isTablet ? AppDrawer() : SizedBox.shrink(),
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: screen.isDesktop,
        leading: screen.isPhone || screen.isTablet
            ? IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                },
              )
            : SizedBox.shrink(),
        title: Text("Dashboard"),
        actions: [
          AppBarTextField(),
          AppAccountBox()
        ],
      ),
      body: Row(
        children: [
          screen.isDesktop
              ? Expanded(child: AppDrawer(), flex: 1)
              : SizedBox.shrink(),
          Expanded(
            flex: 5,
            child: Container(),
          )
        ],
      ),
    );
  }
}

class AppAccountBox extends StatelessWidget {
  const AppAccountBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: drawerBackgroundColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: ClipRRect(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd0AQjkrS6zdwv-Rp5AnjpI-nM5EbDfhgBOg&usqp=CAU',
                fit: BoxFit.cover,
                width: 45,
                height: 45,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: Alignment.center,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text("Name", textAlign: TextAlign.center),
                  ),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            ),
          )
        ],
      ),
      width: 200,
    );
  }
}

class AppBarTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      margin: EdgeInsets.symmetric(vertical: 6),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: drawerBackgroundColor,
      ),
      width: 200,
      child: Row(
        children: [
          Expanded(
            child: AppTextField(
              hintText: 'Search',
              underline: false,
              contentPadding: EdgeInsets.only(bottom: 10),
              cursorColor: Colors.white,
            ),
          ),
          Container(
            width: 40,
            height: 35,
            child: AppRaisedButton(
              radius: 5,
              child: Icon(Icons.search),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Dashboard"),
          ),
          ListTile(
            title: Text("Employees"),
          ),
          ListTile(
            title: Text("Attendance"),
          ),
          ListTile(
            title: Text("Leaves"),
          ),
        ],
      ),
    );
  }
}
