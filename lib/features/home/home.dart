import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app/bloc/app_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/icons/icon.png', height: 56, width: 56),
            ElevatedButton(
              onPressed: () {
                context.read<AppBloc>().add(AppThemeSwitch());
              },
              child: const Text('Dark Theme'),
            )
          ],
        ),
      ),
    );
  }
}
