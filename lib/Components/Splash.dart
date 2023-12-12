import 'package:bahasaku/Components/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Sử dụng Timer để chuyển trang sau khoảng thời gian nhất định (ví dụ: 3 giây)
    Timer(Duration(seconds: 3), () {
      // Chuyển trang đến trang mới, ví dụ: MyHomePage()
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3DB2FF),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/Splash/whiteborder.png',//White border
              width: 220,
              height: 240,
            ),
            SvgPicture.asset(
              'assets/Splash/Vector.svg',//White background
              width: 120,
              height: 120,
            ),
            SvgPicture.asset(
              'assets/Splash/BigB.svg',//B tooooooooo
              width: 60,
              height: 60,
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/Splash/Title.png',//Bahasaku
                width: 190,
                height: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Ví dụ trang mới
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}
