import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // variable
  int counter = 0;

  //method
  void counterAdd() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        elevation: 0,
        // shape of appbar

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        leading: const Icon(
          Icons.menu,
          size: 28,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "Counter App",
            style: GoogleFonts.dmSerifDisplay(
              color: Colors.black,
              fontSize: 29,
            ),
          ),
        ),
      ),

      // floating action button location

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 70,
          width: 80,

          // floating action button

          child: FloatingActionButton(
            backgroundColor: Colors.pink[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: counterAdd,
            child: const Icon(
              Icons.add,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "The number of time you Pushed:",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 25,
              ),
            ),
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
