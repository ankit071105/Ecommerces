// TODO Implement this library.
import 'package:flutter/material.dart';


class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff2b032d), // Light blue background
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Moved Silent Speak heading to the top
              Text(
                'Super Mart',
                style: TextStyle(
                  fontSize: 28, // Increased font size
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',// New font
                  color: Color(0xff9cc7fa),// New font
                ),
              ),
              SizedBox(height: 10),
              // Added the bottom quote
              Text(
                'Your one-stop shop for quality groceries and essentials. Freshness and savings, all in one place.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff9cc7fa),// New font
                ),
              ),
              SizedBox(height: 30), // Added space between heading and image
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Animated Image and Text
                    TweenAnimationBuilder(
                        duration: Duration(seconds: 1),
                        tween: Tween<double>(begin: 0.0, end: 1.0),
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: value,
                            child: Transform.scale(
                              scale: value,
                              child: child,
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0), // Adjust the radius as needed
                          child: Image.asset(
                            'assets/images/7.webp', // Replace with your image path
                            height: 200,
                          ),
                        )

                    ),
                    SizedBox(height: 20),
                    // Removed Silent Speak heading from here
                    // Contact Information
                    ContactInfoWidget(),
                    SizedBox(height: 20),
                    // Back Button
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Contanct Us ',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Color(0xff9ceffa),// New font
            ),
          ),
          onTap: () {
            // Implement email functionality here
          },
        ),
        ListTile(

          leading: Icon(Icons.email),

          title: Text(
            'kumarankit11458@gmail.com',
            style: TextStyle(
              fontFamily: 'Roboto', // New font
              color: Color(0xff9ceffa),// New font
            ),
          ),
          onTap: () {
            // Implement email functionality here
          },
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text(
            '9031358194',
            style: TextStyle(
              fontFamily: 'Roboto', // New font
              color: Color(0xff9ceffa),// New font
            ),
          ),
          onTap: () {
            // Implement phone call functionality here
          },
        ),
      ],
    );
  }
}
