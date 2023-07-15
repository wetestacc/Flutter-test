import 'package:flutter/material.dart';

class CloseApp extends StatefulWidget {
  const CloseApp({super.key});

  @override
  State<CloseApp> createState() => _CloseAppState();
}

class _CloseAppState extends State<CloseApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Close'),
          ),
        ),
      ),
      extendBody: true,
    );
  }
}
