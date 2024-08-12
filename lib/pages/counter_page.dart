import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter $counter"),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  counter++;
                  setState(() {});
                },
                // style: ElevatedButton.styleFrom(
                //   backgroundColor: Colors.amber,
                // ),
                child: const Text("Increment"),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: OutlinedButton(
                onPressed: () {
                  counter--;
                  setState(() {});
                },
                child: const Text("Decrement"),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: TextButton(
                child: const Text("Reset"),
                onPressed: () {
                  counter = 0;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
