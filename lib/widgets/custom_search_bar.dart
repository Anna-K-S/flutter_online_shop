import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_cubit.dart';
import 'package:flutter_online_shop/styles/decorations_styles.dart';

class CustomSearchBar extends StatefulWidget {
  final TextEditingController searchController; 
  const CustomSearchBar({
    required this.searchController, 
    super.key,
  });

  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  bool _showClearButton = false;

  @override
  void initState() {
    super.initState();
    //добавление слушателя для обновления состояния виджета при изменении текста
    widget.searchController.addListener(() {
      setState(() {
        _showClearButton = widget.searchController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    widget.searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: widget.searchController,
          decoration: DecorationsStyles.searchBar(
            hintText: 'Search',
            onPressed: () {
              widget.searchController.clear();
              context.read<ProductsCubit>().reload();
              setState(() {
                _showClearButton = false;
              });
            },
            showClearButton: _showClearButton,
          ),
          onChanged: (value) =>
              context.read<ProductsCubit>().searchProducts(value),
        ),
        const SizedBox(
          height: 8.0,
        ),
      ],
    );
  }
}
