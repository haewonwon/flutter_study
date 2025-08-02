import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(),
      // body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.indigoAccent, Colors.deepOrangeAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/profile.JPG'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Column(
                    children: [
                      Text(
                        '김해원',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Student / Frontend Developer',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        '',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => _launchURL('https://github.com/haewonwon'),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/25/25231.png',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),

                GestureDetector(
                  onTap: () => _launchURL('https://www.instagram.com/cee5d5/'),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/960px-Instagram_logo_2022.svg.png',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),

                GestureDetector(
                  onTap: () => _launchURL('https://velog.io/@haewonwon/posts'),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1228368893321736193/Ov0og7E8_400x400.jpg',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
