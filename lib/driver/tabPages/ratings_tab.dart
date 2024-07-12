import 'package:flutter/material.dart';

class RatingPageTab extends StatefulWidget {
  const RatingPageTab({Key? key}) : super(key: key);

  @override
  State<RatingPageTab> createState() => _RatingPageTabState();
}

class _RatingPageTabState extends State<RatingPageTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("rating Page"),
    );
  }
}
