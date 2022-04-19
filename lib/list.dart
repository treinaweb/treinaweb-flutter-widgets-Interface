import 'package:flutter/material.dart';
import 'package:perfil/index.dart';
import 'package:perfil/widgets/inputs/checkbox_list_tile.dart';
import 'package:perfil/widgets/inputs/dropdown_button.dart';
import 'package:perfil/widgets/inputs/slider.dart';
import 'package:perfil/widgets/inputs/switch_list_tile.dart';
import 'package:perfil/widgets/inputs/text_elevated_outlined_button.dart';

class ListMenu {
  ListMenu._();

  static List<Widget> get(BuildContext context) {
    return [
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const MyHomePage(),
            ),
          );
        },
        child: const Text('Perfil'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const TextElevatedOutlinedButtonView(),
            ),
          );
        },
        child: const Text('Text Elevated Outlined Button'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const DropdownButtonView(),
            ),
          );
        },
        child: const Text('DropdownButton'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const SwitchListTileViw(),
            ),
          );
        },
        child: const Text('Switch'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const CheckboxListTileView(),
            ),
          );
        },
        child: const Text('CheckBox'),
      ),
    ];
  }
}
