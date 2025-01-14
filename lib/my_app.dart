import 'package:flutter/material.dart';

///Creates a [MyApp] widget.
class MyApp extends StatelessWidget {
  ///[MyApp] widget constructor.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Hello, World!'),
      child: const Material(
        color: Colors.green,
        child: Center(
          child: Text(
            'Hello, World!',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
