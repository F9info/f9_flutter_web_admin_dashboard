import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../components/style.dart';
import '../../controllers/MenuController.dart';
import '../../screens/components/style.dart';
import '../../screens/layouts/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (!Responsive.isDesktop(context))
              IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: context.read<MenuController>().controlMenu,
              ),
            if (!Responsive.isMobile(context))
              Text(
                "F9 Info Technologies Pvt. Ltd.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ProfileCard()
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 5,
          ),
          child: Row(
            children: [
              InkWell(
                onTap: () => _key.currentState!.showButtonMenu(),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(45),
                      child: Image.asset(
                        "assets/images/varaprasad.jpg",
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Prasad F9 Tech'),
                  ],
                ),
              ),
              PopupMenuButton<int>(
                icon: Icon(Icons.arrow_drop_down),
                key: _key,
                itemBuilder: (context) {
                  return <PopupMenuEntry<int>>[
                    PopupMenuItem(
                        child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Profile'),
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: [
                        Icon(Icons.settings),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Settings'),
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Logout'),
                      ],
                    )),
                  ];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
