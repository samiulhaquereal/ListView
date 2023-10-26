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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(child: ListView.separated(
          itemBuilder: (BuildContext context , int index){
            return ListTile(
              title: Text('Real${index}',style: TextStyle(color: Colors.white),),
              tileColor: Colors.blueAccent,
              onTap: (){},
              leading: Icon(Icons.add_call),
              trailing: Icon(Icons.menu),
            );
          },
          separatorBuilder: (BuildContext context , int index) => Divider(color: Colors.black,),
          itemCount: 5),),
    ));
  }
}

