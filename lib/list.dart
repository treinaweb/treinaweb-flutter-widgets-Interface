import 'package:flutter/material.dart';
import 'package:perfil/index.dart';
import 'package:perfil/widgets/dialog/alert_dialog.dart';
import 'package:perfil/widgets/dialog/snackbar.dart';
import 'package:perfil/widgets/inputs/checkbox_list_tile.dart';
import 'package:perfil/widgets/inputs/dropdown_button.dart';
import 'package:perfil/widgets/inputs/gesture_detector.dart';
import 'package:perfil/widgets/inputs/slider.dart';
import 'package:perfil/widgets/inputs/switch_list_tile.dart';
import 'package:perfil/widgets/inputs/text_elevated_outlined_button.dart';
import 'package:perfil/widgets/interface/list_tile.dart';

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
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const SliderView(),
            ),
          );
        },
        child: const Text('Slider'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const GestureDetectorView(),
            ),
          );
        },
        child: const Text('GestureDetector'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const SnackbarView(),
            ),
          );
        },
        child: const Text('Snackbar'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const AlertDialogView(),
            ),
          );
        },
        child: const Text('Alert dialog'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const ListTileView(),
            ),
          );
        },
        child: const Text('List Tile'),
      ),
    ];
  }
}
