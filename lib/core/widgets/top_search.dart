import 'package:flutter/material.dart';

class TopSearchPage extends StatelessWidget {
  const TopSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 35,
        ),
        child: const SearchBar(
          padding: MaterialStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16),
          ),
          leading: Icon(Icons.search),
        ),
      ),
    );
  }
}
