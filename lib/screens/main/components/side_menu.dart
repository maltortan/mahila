import 'package:admin/screens/main/main_screen.dart';
import 'package:admin/screens/sidebars/news/news_form.dart';
import 'package:admin/screens/sidebars/news/news_view.dart';
import 'package:admin/screens/sidebars/udhyami_table/udhyami_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/lmc.png"),
          ),
          DrawerListTile(
            title: "ड्यासबोर्ड",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainScreen()));
            },
          ),
          DrawerListTile(
            title: "सूचना",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewsScreen()));
            },
          ),
          DrawerListTile(
            title: "उड्यमी विवरण",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UdhyamiScreen()));
            },
          ),
          DrawerListTile(
            title: "प्रतिवेदन",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "फोटो र भिडियो",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "अन्य",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
