import 'dart:ui';
import 'package:test/test.dart';
import 'package:test_application/random_color.dart';

void main() {
  group("Test for the random color generation", () {
    final RandomColor randomColor = RandomColor();
    final Set<Color> colors = {};
    test("can generate a random color", () {
      final color = randomColor.generateRandomColor();
      expect(color, isA<Color>());
    });

    test("can generate 16777216 colors using RGB", () {
      const int expectedTotalColors = 16777216;
      const int maxRGBValue = 256;

      for (int r = 0; r < maxRGBValue; r++) {
        for (int g = 0; g < maxRGBValue; g++) {
          for (int b = 0; b < maxRGBValue; b++) {
            colors.add(Color.fromRGBO(r, g, b, 1));
          }
        }
      }
      expect(colors.length, expectedTotalColors);
    });
  });
}
