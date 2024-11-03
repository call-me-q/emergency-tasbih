import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const PageLayout({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(20))),
            child: Center(
              heightFactor: 2.5,
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Column(
            children: children,
          )
        ],
      ),
    );
  }
}
