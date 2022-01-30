import 'package:expense_app/widgets/details_title.dart';
import 'package:flutter/material.dart';

import 'package:expense_app/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({Key key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      // * Getting Ready for Release
      // print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('contact@aswathy_harikumaran'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RoundedImage(
                asset: 'assets/images/ash.jpeg',
              ),
              SizedBox(height: 16.0),
              Text('Aswathy Harikumaran',
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                child: DetailsTitle(title: 'About Me'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  "Hey there! \n \t I am Aswathy Harikumaran, a second year Computer Science Engineering student currently pursuing bachelor's at Sri Krishna College of Engineering and Technology, Coimbatore, Tamil Nadu, India. I am beginner in Flutter and this is my second app. I am terrible at managing my expenses and I regret a lot about it. So I decided to learn to manage money with the aid of an application. I love to create apps for myself to assist me in my everyday activities. I hope you will find it easy and interesting as well. ",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  DetailsTitle(title: 'My Links'),
                ],
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  'Feel free to contact me regarding collaboration, or maybe just to talk about coding or life in general.',
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
              DevLink(
                icon: FontAwesomeIcons.github,
                label: 'GitHub',
                onPressed: () {
                  _launchUrl('https://github.com/AshAswathy');
                },
              ),
              DevLink(
                icon: FontAwesomeIcons.linkedin,
                label: 'LinkedIn',
                onPressed: () {
                  _launchUrl('https://www.linkedin.com/in/aswathy-harikumaran/');
                },
              ),

              DevLink(
                icon: FontAwesomeIcons.twitter,
                label: 'Twitter',
                onPressed: () {
                  _launchUrl('https://twitter.com/AswathyH5');
                },
              ),
              DevLink(
                icon: FontAwesomeIcons.instagram,
                label: 'Instagram',
                onPressed: () {
                  _launchUrl('https://www.instagram.com/aswathyharikumaran/');
                },
              ),
              DevLink(
                icon: FontAwesomeIcons.solidEnvelope,
                label: 'ashwathy0235@gmail.com',
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
