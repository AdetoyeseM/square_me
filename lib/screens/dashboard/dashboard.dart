import 'package:flutter/material.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/dashboard/homepage.dart';
import 'package:square__me/screens/dashboard/wallet.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget>? body;

  int index = 0;

  @override
  void initState() {
    super.initState();
    body = [const Homepage(), const WalletScreen(), const Homepage()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body![index],
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor:
            index == 1 ? SquareColors().randColor(0xff0C0C26) : Colors.white,
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.home,
                  color: index == 1
                      ? const Color(0xffE0E0E0)
                      : const Color(0xff333333))),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.widgets,
                color: index == 1 ? Colors.white : null,
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.person,
                  color: index == 1
                      ? const Color(0xffE0E0E0)
                      : const Color(0xff333333)))
        ],
        onTap: (e) {
          setState(() {
            index = e;
          });
        },
        elevation: 4,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 8,
      ),
    );
  }
}
