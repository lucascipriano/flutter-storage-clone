import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  Color backgroundColor = Color.fromARGB(255, 241, 245, 249);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              _header(),
              _containerServies(),
            ],
          ),
        ),
      ),
    );
  }
}

_header() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 1,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.signal_cellular_alt_2_bar,
                size: 30,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 25,
            ),
          )
        ],
      ),
      _userName("Hello,", "Lucas Cipriano"),
    ],
  );
}

_userName(message, nameUser) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    width: double.infinity,
    height: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          message,
          style: TextStyle(fontSize: 25, color: Colors.grey),
        ),
        Text(
          nameUser,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 15, 32, 68),
          ),
        ),
      ],
    ),
  );
}

_containerServies() {
  return Container(
    width: double.infinity,
    height: 300,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _dropbox(),
        _dropbox(),
        _dropbox(),
      ],
    ),
  );
}

// _containerServies() {
//   final PageController _pagecontroller = PageController(
//     viewportFraction: 0.7,
//   );
//   return Container(
//     // margin: EdgeInsets.symmetric(horizontal: 32),
//     width: double.infinity,
//     height: 300,
//     child: PageView(
//       controller: _pagecontroller,
//       scrollDirection: Axis.horizontal,
//       children: <Widget>[
//         _dropbox(),
//         _dropbox(),
//         _dropbox(),
//       ],
//     ),
//   );
// }

_dropbox() {
  Color backgroundDropbox = const Color.fromARGB(255, 61, 114, 222);

  final String dropboxLogo = 'assets/dropbox.svg';

  return Container(
    // padding: EdgeInsets.only(right: 20),
    // transform: Matrix4.translationValues(-20.0, 0.0, 0.0),

    margin: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 10),
    height: 150,
    width: 260,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: backgroundDropbox,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 10),
                  blurRadius: 12,
                ),
              ]),
          transform: Matrix4.translationValues(-50.0, -20.0, 0.0),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(dropboxLogo, width: 35),
          ),
        ),
        iconsDropbox(),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Dropbox",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "650gb",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "100gb",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              LinearProgressIndicator(
                minHeight: 5.0,
                value: 0.6,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

iconsDropbox() {
  Color iconsColor = const Color.fromARGB(255, 126, 166, 242);
  Color iconsBackgroundColor = const Color.fromARGB(255, 38, 90, 191);

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: iconsBackgroundColor,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.folder,
            color: iconsColor,
          ),
        ),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: iconsBackgroundColor,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.content_copy,
            color: iconsColor,
          ),
        ),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: iconsBackgroundColor,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.storage,
            color: iconsColor,
          ),
        ),
      ),
    ],
  );
}
