import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Grid App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'HARE KRISHNA MANDIR',
            style: TextStyle(fontSize: 16), // Set the desired font size
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  _buildImageContainer(
                    key: Key('image1'), // Provide a unique key
                    color: Colors.purple[100]!,
                    title: 'KIRTAN',
                    assetPath: 'assets/images/kirr.png',
                    context: context,
                    borderRadius: 20.0,
                    fontColor: Colors.black,
                    crossAxisCount: 2,
                    // Customize the border radius
                  ),
                  _buildImageContainer(
                    key: Key('image2'), // Provide a unique key
                    color: Colors.purple[100]!,
                    title: 'DARSHAN',
                    assetPath: 'assets/images/dar.png',
                    context: context,
                    borderRadius: 20.0,
                    fontColor: Colors.black,
                    crossAxisCount: 2, // Customize the border radius
                  ),
                  _buildImageContainer(
                    key: Key('image3'), // Provide a unique key
                    color: Colors.purple[100]!,
                    title: 'LECTURE',
                    assetPath: 'assets/images/pop.png',
                    context: context,
                    borderRadius: 20.0,
                    fontColor: Colors.black,
                    crossAxisCount: 2, // Customize the border radius
                  ),
                  _buildImageContainer(
                    key: Key('image4'), // Provide a unique key
                    color: Colors.purple[100]!,
                    title: 'YATRA',
                    assetPath: 'assets/images/yas.png',
                    context: context,
                    borderRadius: 20.0,
                    fontColor: Colors.black,
                    crossAxisCount: 2, // Customize the border radius
                  ),
                  _buildImageContainer(
                    key: Key('image5'), // Provide a unique key
                    color: Colors.purple[100]!,
                    title: 'CALENDAR',
                    assetPath: 'assets/images/cals.png',
                    context: context,
                    borderRadius: 20.0,
                    fontColor: Colors.black,
                    crossAxisCount: 2, // Customize the border radius
                  ),
                  _buildImageContainer(
                    key: Key('image6'), // Provide a unique key
                    color: Colors.purple[100]!,
                    title: 'QUOTES',
                    assetPath: 'assets/images/lastqu.png',
                    context: context,
                    borderRadius: 20.0,
                    fontColor: Colors.black,
                    crossAxisCount: 2,
                    // Customize the border radius
                  ),
                  _buildImageContainer(
                    key: Key('image7'), // Provide a unique key
                    color: Colors.purple[100]!,
                    title: 'STORIES',
                    assetPath: 'assets/images/readstor.png',
                    context: context,
                    borderRadius: 20.0,
                    fontColor: Colors.black,
                    crossAxisCount: 2, // Customize the border radius
                  ),
                  _buildImageContainer(
                    key: Key('image8'), // Provide a unique key
                    color: Colors.purple[100]!,
                    title: 'SEVAS',
                    assetPath: 'assets/images/don.png',
                    context: context,
                    borderRadius: 20.0,
                    fontColor: Colors.black,
                    crossAxisCount: 2, // Customize the border radius
                  ),
                  // Add more image containers here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildImageContainer({
  Key? key,
  required Color color,
  required String title,
  required String assetPath,
  required BuildContext context,
  double borderRadius = 10.0,
  Color fontColor = Colors.black,
  int crossAxisCount = 1, // Set the desired number of items per row
}) {
  return InkWell(
    key: key,
    onTap: () {
      // Replace with your desired navigation logic
      // For now, navigate to a Container as a placeholder
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Container(
            color: Colors.white,
            child: Center(
              child: Text('Placeholder for $title'),
            ),
          ),
        ),
      );
    },
    child: ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: const EdgeInsets.all(8),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child:
                  Image.asset(assetPath), // Wrap the Image.asset with Expanded
            ),
            SizedBox(height: 6),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: fontColor,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// Kirtan 
// Darshan 
// Lecture
// Yatra
// Vaishnava calendar 
// Quotes 
// Stories  
// Sevas