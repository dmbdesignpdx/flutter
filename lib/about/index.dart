import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../ui/appbar.dart' hide NavSort;
import '../ui/drawer.dart';


class About extends StatelessWidget {
  static const _title = 'About';
  final Color _grey = Colors.grey[100];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _grey,
      appBar: AppBar(
        backgroundColor: _grey,
        leading: NavLead(),
        title: NavTitle(_title),
      ),
      drawer: AppDrawer(),
      body: Container(
        margin: const EdgeInsets.fromLTRB(18, 36, 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.body1,
                children: <TextSpan>[
                  TextSpan(
                    text: 'App built by ',
                  ),
                  TextSpan(
                    text: 'Daniel Blake',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () async {
                      await launch('https://danielblake.design/');
                    },
                  ),
                  TextSpan(
                    text: '.',
                  ),
                ],
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.body1,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'This app uses the ',
                    ),
                    TextSpan(
                      text: 'Star Wars API',
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () async {
                        await launch('https://swapi.co/');
                      },
                    ),
                    TextSpan(
                      text: ' for testing purposes. Built with ',
                    ),
                    TextSpan(
                      text: 'Flutter',
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () async {
                        await launch('https://flutter.dev/');
                      },
                    ),
                    TextSpan(
                      text: '.',
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 12),
              child: const Text(
                'All names and references to the Star Wars franchise are the property of their respective owners.'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
