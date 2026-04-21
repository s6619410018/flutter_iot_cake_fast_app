import 'package:flutter/material.dart';
import 'package:flutter_iot_cake_fast_app/views/cake_shop_list_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CakeShopListUi()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_welcome.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                "Cakekee",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 189, 76, 240),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "หม่ำหม่ำเค้กกี้",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 210, 147, 239),
                ),
              ),
              SizedBox(height: 10),
              CircularProgressIndicator(
                color: const Color.fromARGB(255, 254, 192, 243),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
