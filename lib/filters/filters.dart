import 'dart:typed_data';

///The [Filter] class to define a Filter consists of multiple [SubFilter]s
abstract class Filter extends Object {
  final String name, nameHindi;
  Filter({this.name, this.nameHindi}) : assert(name != null);

  ///Apply the [SubFilter] to an Image.
  void apply(Uint8List pixels, int width, int height);
}

///The [SubFilter] class is the abstract class to define any SubFilter.
abstract class SubFilter extends Object {}
