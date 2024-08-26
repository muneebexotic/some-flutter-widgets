import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Top 10 Flutter Widgets')),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return  const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text("Julia"),
                  subtitle: Text("what are you doing??"),
                  trailing: Text("6:36 pm"),
                );
              },
            ))
            //Expanded(child: child)
            // Center(
            //   child: FittedBox(
            //     child: CircleAvatar(
            //       radius: 50,
            //       backgroundColor: Colors.red,
            //       backgroundImage: NetworkImage('https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            //     ),
            //   ),
            // )
            // Expanded(
            //     flex: 1,
            //     child: Container(
            //       height: 100,
            //       color: Colors.blue,
            //       child: Center(
            //           child: Text(
            //         'Container 1',
            //         style: TextStyle(fontSize: 20),
            //       )),
            //     )),
            // Expanded(
            //   flex: 2,
            //   child: Center(
            //     child: Container(
            //       //height: 250,
            //       //transform: Matrix4.rotationZ(.3),
            //       //margin: EdgeInsets.only(left: 20),
            //       //padding: EdgeInsets.all(40),
            //       decoration: BoxDecoration(
            //           color: Colors.teal,
            //           borderRadius: BorderRadius.circular(10),
            //           image: const DecorationImage(
            //               fit: BoxFit.fill,
            //               image: NetworkImage(
            //                   'https://images.pexels.com/photos/6633920/pexels-photo-6633920.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
            //           boxShadow: [
            //             BoxShadow(color: Colors.black, blurRadius: 10)
            //           ]),
            //       child: const Center(
            //           child: Text(
            //         'Log In',
            //         style: TextStyle(color: Colors.white, fontSize: 20),
            //       )),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
