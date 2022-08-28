import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 10,
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                  'https://www.pngkit.com/png/full/55-558373_tinder-apple-tv-survey-methodology.png'),
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 5,
            child: Column(
              children: const [
                Text('Location Changer',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                Text('Plugin app for Tinder',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          //Spacer(),
          Flexible(
            flex: 20,
            child: SizedBox(
              height: 40,
              //width: MediaQuery.of(context).size.width / 2,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text('Login With Facebook',
                      style:
                          TextStyle(color: Color.fromARGB(255, 253, 118, 123))),
                  onPressed: () {
                    // ignore: avoid_print
                    print(true);
                  }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: const Color.fromARGB(255, 253, 118, 123)),
          _body(),
        ],
      ),
    );
  }
}
