import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Contactus_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'Arjit Mishra',
          textColor: Colors.white,
          backgroundColor: Colors.teal.shade300,
          email: 'arjitmishra42@gmail.com',
          // textFont: 'Sail',
        ),
        backgroundColor: Colors.teal,
        body: Center(
          child: Container(
            height: 500,
            child: ContactUs(
                cardColor: Colors.white,
                textColor: Colors.teal.shade900,
                logo: AssetImage('lib/images/download.jfif'),
                email: 'arjitmishra42@gmail.com',
                companyName: 'Arjit Mishra',
                companyColor: Colors.teal.shade100,
                dividerThickness: 2,
                phoneNumber: '+91 7441183675',
                website: 'www.google.com',
                githubUserName: 'arzzitt',
                linkedinURL:
                    'https://www.linkedin.com/in/arjit-mishra-learner/',
                tagLine: 'Flutter Developer',
                taglineColor: Colors.teal.shade100,
                twitterHandle: 'arzzit',
                instagram: '_arzzit_',
                facebookHandle: 'Arjit mishra'),
          ),
        ),
      ),
    );
  }
}
