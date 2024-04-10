import 'package:flutter/material.dart';

import 'custom_button.dart';

class NoWeatherData extends StatelessWidget {
  const NoWeatherData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xff7B6CFB),
                const Color(0xff7B6CFB).withOpacity(.1),
                const Color(0xff7B6CFB).withOpacity(.8),
                const Color(0xff7B6CFB).withOpacity(.5),
                const Color(0xff7B6CFB).withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTICEc6hhu6XPsXKXdGLPH7vccxlmQUxUT2qw&s'
                    //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHcO2aj5S4dW7j_TS4vXXjnznFiCr3vHZMXg&s',
                    ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Weather',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Forecasts',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              const CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
