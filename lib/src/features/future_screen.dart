import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FutureScreenState createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  String _text = "Go";

  // Asynchrone Funktion, die den Text nach 2 Sekunden ändert
  Future<void> _changeText() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _text = "GoGoGo";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _text,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeText,
              child: const Text('Change Text'),
            ),
          ],
        ),
      ),
    );
  }
}
