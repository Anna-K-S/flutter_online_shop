import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final VoidCallback onTap;
  final SearchController controller;

  const CustomSearchBar({
    required this.searchController,
    required this.onTap,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      searchController: controller,
      headerTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 15,
      ),
      viewHintText: 'Search...',
      viewBackgroundColor: Colors.black.withOpacity(0.3),
      viewTrailing: [
        IconButton(
          onPressed: () {
            if (controller.text.isNotEmpty) {
              controller.clear();
            }
          },
          icon: const Icon(
            Icons.clear,
            color: Colors.black,
          ),
        )
      ],
      builder: (context, controller) {
        return SearchBar(
          controller: searchController,
          leading: IconButton(
            onPressed: onTap,
            icon: const Icon(
              Icons.search,
            ),
          ),
          hintText: 'Search...',
          onTap: () => controller.openView(),
        );
      },
      suggestionsBuilder: (context, controller) {
        return [];
      },
    );
  }
}
