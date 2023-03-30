import 'package:flutter/material.dart';

class ClickableBanner extends StatelessWidget {
  final void Function()? onTap;
  const ClickableBanner({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: ClipRect(
          /** Banner Widget **/
          child: Banner(
            message: "20% off !!",
            location: BannerLocation.bottomStart,
            color: Colors.red,
            child: Container(
              color: Colors.green[100],
              height: 300,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://www.nudgenow.in/assets/Logo.png'), //Image.network
                    const SizedBox(height: 10),
                    const Text(
                      'Banner title',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold), //TextStyle
                    ),
                    const SizedBox(
                      height: 5,
                    ), //SizedBox
                    const Text(
                      'Register now',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold), //TextStyle
                    ), //Text
                    const SizedBox(height: 10),
                  ], //<Widget>[]
                ), //Column
              ), //Padding
            ), //Container
          ), //Banner
        ), //ClipRect
      ),
    );
  }
}
