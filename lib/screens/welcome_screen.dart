import 'package:chat/constants.dart';
import './signIn_signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset('assets/images/welcome_image.png'),
            Spacer(
              flex: 3,
            ),
            Text(
              'Welcom to our freedom \nmessaging app',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Spacer(),
            Text(
              'Freedom talk to any person of your \nmother language',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.64)),
            ),
            Spacer(
              flex: 3,
            ),
            FittedBox(
              child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    )),
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: Theme.of(context).textTheme.bodySmall.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .color
                                .withOpacity(0.8),
                          ),
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.8),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
