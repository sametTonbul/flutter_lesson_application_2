import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Flutter Demo Home Page'));}}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LogINAppLessons();}
}

class LogINAppLessons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeigt = screenInfo.size.height;
    final double screenWidht = screenInfo.size.width;
    return Scaffold(
      backgroundColor : Colors.deepPurpleAccent,
      body: Center(
          child:SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children : [
                Padding(
                  padding: EdgeInsets.only(bottom:screenHeigt/20),
                  child: SizedBox(
            width: screenWidht/4,
            height: screenHeigt/6,
            child:
            Image.asset('pictures/home.png')),
                ),
                Padding(
                  padding: EdgeInsets.all(screenHeigt/30),
                  child: TextField(
            decoration: InputDecoration(
            hintText: 'userName',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius:BorderRadius.all(Radius.circular(8.0))),
            ),
            ),
                ),
                Padding(
                  padding: EdgeInsets.all(screenHeigt/30),
                  child: TextField(
            obscureText: true,
            decoration: InputDecoration(
            hintText: 'userPassword',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius:BorderRadius.all(Radius.circular(8.0))),
            ),
            ),
                ),
                Padding(
                  padding:EdgeInsets.all(screenHeigt/30),
                  child: SizedBox(
            width: screenWidht/1.2,
            height: screenHeigt/12,
            child: ElevatedButton(
              onPressed:(){print('LoginSuccesful');},
              child:Text('LOGIN',style: TextStyle(fontSize: screenWidht/25)),
              style:ButtonStyle(backgroundColor: MaterialStateProperty.all( Colors.pinkAccent)),
                  ),
                  ),
                ),
                GestureDetector(
                  onTap:(){
            print('SELECTED HELP');},
                  child: Text(
              'HELP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidht/20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}