import 'dart:math';
import 'dart:ui';

///A class for handling the random color generation
class RandomColor {
  final List<Color> _usedColors = [];

  ///A List to add used colors to ensure none is repeated
  final Random _random = Random();
  final int _maxRGBValue = 256;

  ///The Random color generation method
  Color generateRandomColor() {
    final color = Color.fromRGBO(
      _random.nextInt(_maxRGBValue),
      _random.nextInt(_maxRGBValue),
      _random.nextInt(_maxRGBValue),
      1,
    );

    /// If the color has been generated already it generates another one
    if (_usedColors.contains(color)) return generateRandomColor();

    _usedColors.add(color);

    return color;
  }
}
