import 'package:flutter/material.dart';

class MovieAppBar extends StatelessWidget {
  final String title;
  const MovieAppBar({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: Text(title),
    );
  }
}
