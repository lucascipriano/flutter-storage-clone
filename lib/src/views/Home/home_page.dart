// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final Color backgroundColor = const Color.fromARGB(255, 224, 230, 236);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _header(),
              _containerServies(),
              _coOwners(),
              _lastFiles(),
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
              icon: const Icon(
                Icons.signal_cellular_alt_2_bar,
                size: 30,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
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
    padding: const EdgeInsets.symmetric(horizontal: 16),
    width: double.infinity,
    height: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          message,
          style: const TextStyle(fontSize: 25, color: Colors.grey),
        ),
        Text(
          nameUser,
          style: const TextStyle(
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
  return SizedBox(
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

// ignore: fixme
// FIXME: Usar no lugar do listview, provavelmente, não apague por enquanto
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
  Color backgroundDropbox = const Color.fromARGB(255, 57, 90, 189);

  const String dropboxLogo = 'assets/dropbox.svg';

  return Container(
    // padding: EdgeInsets.only(right: 20),
    // transform: Matrix4.translationValues(-20.0, 0.0, 0.0),

    margin: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 10),
    width: 260,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: backgroundDropbox,
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 5),
          blurRadius: 10,
        ),
      ],
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
              boxShadow: const [
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
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  "Dropbox",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      "650gb",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      "100gb",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const LinearProgressIndicator(
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
  Color iconsBackgroundColor = Colors.black12;

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

_coOwners() {
  return Container(
      width: double.infinity,
      height: 112,
      margin: const EdgeInsets.only(
        top: 30,
        left: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Co-owners",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
          _coOwnersImages()
        ],
      ));
}

_coOwnersImages() {
  const people1 =
      "https://images.unsplash.com/photo-1534528741775-53994a69daeb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500";
  const people2 =
      "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500";
  const people3 =
      "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500";
  const people4 =
      "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500";
  return Container(
    margin: const EdgeInsets.only(top: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 8),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.amber,
            child: ClipOval(
              child: Image.network(
                people1,
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 8),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.lightGreen,
            child: ClipOval(
              child: Image.network(
                people2,
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 8),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
            child: ClipOval(
              child: Image.network(
                people3,
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 8),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.orangeAccent,
            child: ClipOval(
              child: Image.network(
                people4,
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        DottedBorder(
          borderType: BorderType.RRect,
          strokeWidth: 1.5,
          dashPattern: [5],
          radius: Radius.circular(50),
          padding: EdgeInsets.all(0),
          color: Colors.grey,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            child: Container(
              height: 45,
              width: 45,
              child: Icon(
                Icons.add,
                color: Colors.grey,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

_lastFiles() {
  return Container(
    margin: const EdgeInsets.only(left: 16, right: 16),
    width: double.infinity,
    height: 300,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Last files",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey),
        ),
        _test(),
        _test(),
      ],
    ),
  );
}

_test() {
  const Color backgroundIcon = Color.fromARGB(255, 57, 90, 189);
  const Color backgroundFile = Color.fromARGB(255, 203, 208, 214);
  const Color titleColor = Color.fromARGB(255, 15, 32, 68);

  return Padding(
    padding: const EdgeInsets.only(top: 8),
    child: SizedBox(
      width: double.infinity,
      child: Slidable(
        // The child of the Slidable is what the user sees when the
        // component is not dragged.
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: backgroundIcon,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.download,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 15, 31, 68),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ],
        ),
        // The child of the Slidable is what the user sees when the
        // component is not dragged.
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundFile,
          ),
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.description),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Brandbook",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: titleColor),
                  ),
                  const Text(
                    "Dropbox/projects/Ei/brandbook...",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
