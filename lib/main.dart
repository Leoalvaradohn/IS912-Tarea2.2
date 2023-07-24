import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactDetailsScreen(),
    );
  }
}

class ContactDetailsScreen extends StatelessWidget {
  final String phoneNumber = '+504 9902 9311';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('<'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/pascualito_avatar.png'),
            ),
            SizedBox(height: 26),
            Text(
              'Pascualillo',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.normal,
              ),
            ),
            Divider(),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.phone),
                  label: Text('Llamar'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.message),
                  label: Text('Mensaje de texto'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.video_call),
                  label: Text('Video'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                 const Text(
                  'Información de contacto',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/whatsapp_icon.svg',
                          height: 0,
                          width: 0,
                        ),
                        SizedBox(width: 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child:Row(
                      children: [
                         SvgPicture.asset(
                          'assets/phone_icon.svg',
                          height: 32,
                          width: 32,
                        ),
                        SizedBox(width: 6),
                        Text(
                          '$phoneNumber',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                 ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children:[
                                  SvgPicture.asset(
                                    'assets/whatsapp_icon.svg', 
                                    height: 26,
                                    width: 26,
                                  ),
                                  SizedBox(width: 14),
                                  Text('Enviar mensaje a $phoneNumber'),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/whatsapp_icon.svg',
                                    height: 26,
                                    width: 26,
                                  ),
                                  SizedBox(width: 14),
                                  Text('Llamar a $phoneNumber'),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/whatsapp_icon.svg',
                                    height: 26,
                                    width: 26,
                                  ),
                                  SizedBox(width: 14),
                                  Text('Videollamar a $phoneNumber'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/telegram_icon.svg', 
                          height: 0,
                          width: 0,
                        ),
                        SizedBox(width: 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/telegram_icon.svg',
                                    height: 26,
                                    width: 26,
                                  ),
                                  SizedBox(width: 14),
                                  Text('Mensaje al $phoneNumber'),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/telegram_icon.svg', 
                                    height: 26,
                                    width: 26,
                                  ),
                                  SizedBox(width: 14),
                                  Text('Llamada de voz al $phoneNumber'),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/telegram_icon.svg',
                                    height: 26,
                                    width: 26,
                                  ),
                                  SizedBox(width: 14),
                                  Text('Videollamada al $phoneNumber'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
