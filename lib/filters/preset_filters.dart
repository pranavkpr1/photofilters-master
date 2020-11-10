import 'dart:typed_data';

import 'package:photofilters/filters/color_filters.dart';
import 'package:photofilters/filters/filters.dart';
import 'package:photofilters/filters/subfilters.dart';

// NoFilter: No filter
class NoFilter extends ColorFilter {
  NoFilter() : super(name: "No Filter",nameHindi:"वास्तविक");

  @override
  void apply(Uint8List pixels, int width, int height) {
    // Do nothing
  }
}

// Clarendon: adds light to lighter areas and dark to darker areas
class ClarendonFilter extends ColorFilter {
  ClarendonFilter() : super(name: "Clarendon", nameHindi:"क्लेरेंडॉन") {
    subFilters.add(new BrightnessSubFilter(.1));
    subFilters.add(new ContrastSubFilter(.1));
    subFilters.add(new SaturationSubFilter(.15));
  }
}

class AddictiveRedFilter extends ColorFilter {
  AddictiveRedFilter() : super(name: "AddictiveRed", nameHindi:"गहरा लाल") {
    subFilters.add(new AddictiveColorSubFilter(50, 0, 0));
  }
}

class AddictiveBlueFilter extends ColorFilter {
  AddictiveBlueFilter() : super(name: "AddictiveBlue", nameHindi:"गहरा नीला") {
    subFilters.add(new AddictiveColorSubFilter(0, 0, 50));
  }
}

// Gingham: Vintage-inspired, taking some color out
class GinghamFilter extends ColorFilter {
  GinghamFilter() : super(name: "Gingham", nameHindi:"गिंघम") {
    subFilters.add(new SepiaSubFilter(.04));
    subFilters.add(new ContrastSubFilter(-.15));
  }
}

// Moon: B/W, increase brightness and decrease contrast
class MoonFilter extends ColorFilter {
  MoonFilter() : super(name: "Moon", nameHindi:"चांद") {
    subFilters.add(new GrayScaleSubFilter());
    subFilters.add(new ContrastSubFilter(-.04));
    subFilters.add(new BrightnessSubFilter(0.1));
  }
}

// Lark: Brightens and intensifies colours but not red hues
class LarkFilter extends ColorFilter {
  LarkFilter() : super(name: "Lark", nameHindi:"लार्क") {
    subFilters.add(new BrightnessSubFilter(0.08));
    subFilters.add(new GrayScaleSubFilter());
    subFilters.add(new ContrastSubFilter(-.04));
  }
}

// Reyes: a new vintage filter, gives your photos a “dusty” look
class ReyesFilter extends ColorFilter {
  ReyesFilter() : super(name: "Reyes", nameHindi:"रेयेस") {
    subFilters.add(new SepiaSubFilter(0.4));
    subFilters.add(new BrightnessSubFilter(0.13));
    subFilters.add(new ContrastSubFilter(-.05));
  }
}

// Juno: Brightens colors, and intensifies red and yellow hues
class JunoFilter extends ColorFilter {
  JunoFilter() : super(name: "Juno", nameHindi:"जूनो") {
    subFilters.add(new RGBScaleSubFilter(1.01, 1.04, 1));
    subFilters.add(new SaturationSubFilter(0.3));
  }
}

// Slumber: Desaturates the image as well as adds haze for a retro, dreamy look – with an emphasis on blacks and blues
class SlumberFilter extends ColorFilter {
  SlumberFilter() : super(name: "Slumber", nameHindi:"निद्रा") {
    subFilters.add(new BrightnessSubFilter(.1));
    subFilters.add(new SaturationSubFilter(-0.5));
  }
}

// Crema: Adds a creamy look that both warms and cools the image
class CremaFilter extends ColorFilter {
  CremaFilter() : super(name: "Crema", nameHindi:"मलाई") {
    subFilters.add(new RGBScaleSubFilter(1.04, 1, 1.02));
    subFilters.add(new SaturationSubFilter(-0.05));
  }
}

// Ludwig: A slight hint of desaturation that also enhances light
class LudwigFilter extends ColorFilter {
  LudwigFilter() : super(name: "Ludwig", nameHindi:"लुडविग") {
    subFilters.add(new BrightnessSubFilter(.05));
    subFilters.add(new SaturationSubFilter(-0.03));
  }
}

// Aden: This filter gives a blue/pink natural look
class AdenFilter extends ColorFilter {
  AdenFilter() : super(name: "Aden", nameHindi:"आदेन") {
    subFilters.add(new RGBOverlaySubFilter(228, 130, 225, 0.13));
    subFilters.add(new SaturationSubFilter(-0.2));
  }
}

// Perpetua: Adding a pastel look, this filter is ideal for portraits
class PerpetuaFilter extends ColorFilter {
  PerpetuaFilter() : super(name: "Perpetua", nameHindi:"हरा-भरा") {
    subFilters.add(new RGBScaleSubFilter(1.05, 1.1, 1));
  }
}

// Amaro: Adds light to an image, with the focus on the centre
class AmaroFilter extends ColorFilter {
  AmaroFilter() : super(name: "Amaro", nameHindi:"अमाराॆ") {
    subFilters.add(new SaturationSubFilter(0.3));
    subFilters.add(new BrightnessSubFilter(0.15));
  }
}

// Mayfair: Applies a warm pink tone, subtle vignetting to brighten the photograph center and a thin black border
class MayfairFilter extends ColorFilter {
  MayfairFilter() : super(name: "Mayfair", nameHindi:"मे-फेयर") {
    subFilters.add(new RGBOverlaySubFilter(230, 115, 108, 0.05));
    subFilters.add(new SaturationSubFilter(0.15));
  }
}

// Rise: Adds a "glow" to the image, with softer lighting of the subject
class RiseFilter extends ColorFilter {
  RiseFilter() : super(name: "Rise", nameHindi:"उदय") {
    subFilters.add(new RGBOverlaySubFilter(255, 170, 0, 0.1));
    subFilters.add(new BrightnessSubFilter(0.09));
    subFilters.add(new SaturationSubFilter(0.1));
  }
}

// Hudson: Creates an "icy" illusion with heightened shadows, cool tint and dodged center
class HudsonFilter extends ColorFilter {
  HudsonFilter() : super(name: "Hudson", nameHindi:"गंगा") {
    subFilters.add(new RGBScaleSubFilter(1, 1, 1.25));
    subFilters.add(new ContrastSubFilter(0.1));
    subFilters.add(new BrightnessSubFilter(0.15));
  }
}

// Valencia: Fades the image by increasing exposure and warming the colors, to give it an antique feel
class ValenciaFilter extends ColorFilter {
  ValenciaFilter() : super(name: "Valencia", nameHindi:"वालेंसिया") {
    subFilters.add(new RGBOverlaySubFilter(255, 225, 80, 0.08));
    subFilters.add(new SaturationSubFilter(0.1));
    subFilters.add(new ContrastSubFilter(0.05));
  }
}

// X-Pro II: Increases color vibrance with a golden tint, high contrast and slight vignette added to the edges
class XProIIFilter extends ColorFilter {
  XProIIFilter() : super(name: "X-Pro II", nameHindi:"एक्स-प्रो २") {
    subFilters.add(new RGBOverlaySubFilter(255, 255, 0, 0.07));
    subFilters.add(new SaturationSubFilter(0.2));
    subFilters.add(new ContrastSubFilter(0.15));
  }
}

// Sierra: Gives a faded, softer look
class SierraFilter extends ColorFilter {
  SierraFilter() : super(name: "Sierra", nameHindi:"पर्वत") {
    subFilters.add(new ContrastSubFilter(-0.15));
    subFilters.add(new SaturationSubFilter(0.1));
  }
}

// Willow: A monochromatic filter with subtle purple tones and a translucent white border
class WillowFilter extends ColorFilter {
  WillowFilter() : super(name: "Willow", nameHindi:"विलो") {
    subFilters.add(new GrayScaleSubFilter());
    subFilters.add(new RGBOverlaySubFilter(100, 28, 210, 0.03));
    subFilters.add(new BrightnessSubFilter(0.1));
  }
}

// Lo-Fi: Enriches color and adds strong shadows through the use of saturation and "warming" the temperature
class LoFiFilter extends ColorFilter {
  LoFiFilter() : super(name: "Lo-Fi", nameHindi:"लो-फाई") {
    subFilters.add(new ContrastSubFilter(0.15));
    subFilters.add(new SaturationSubFilter(0.2));
  }
}

// Inkwell: Direct shift to black and white
class InkwellFilter extends ColorFilter {
  InkwellFilter() : super(name: "Inkwell", nameHindi:"स्याहीदान") {
    subFilters.add(new GrayScaleSubFilter());
  }
}

// Hefe: Hight contrast and saturation, with a similar effect to Lo-Fi but not quite as dramatic
class HefeFilter extends ColorFilter {
  HefeFilter() : super(name: "Hefe", nameHindi:"हैफे") {
    subFilters.add(new ContrastSubFilter(0.1));
    subFilters.add(new SaturationSubFilter(0.15));
  }
}

// Nashville: Warms the temperature, lowers contrast and increases exposure to give a light "pink" tint – making it feel "nostalgic"
class NashvilleFilter extends ColorFilter {
  NashvilleFilter() : super(name: "Nashville", nameHindi:"नैशविल") {
    subFilters.add(new RGBOverlaySubFilter(220, 115, 188, 0.12));
    subFilters.add(new ContrastSubFilter(-0.05));
  }
}

// Stinson: washing out the colors ever so slightly
class StinsonFilter extends ColorFilter {
  StinsonFilter() : super(name: "Stinson", nameHindi:"सटिंसन") {
    subFilters.add(new BrightnessSubFilter(0.1));
    subFilters.add(new SepiaSubFilter(0.3));
  }
}

// Vesper: adds a yellow tint that
class VesperFilter extends ColorFilter {
  VesperFilter() : super(name: "Vesper", nameHindi:"शुक्र") {
    subFilters.add(new RGBOverlaySubFilter(255, 225, 0, 0.05));
    subFilters.add(new BrightnessSubFilter(0.06));
    subFilters.add(new ContrastSubFilter(0.06));
  }
}

// Earlybird: Gives an older look with a sepia tint and warm temperature
class EarlybirdFilter extends ColorFilter {
  EarlybirdFilter() : super(name: "Earlybird", nameHindi:"सवेरा") {
    subFilters.add(new RGBOverlaySubFilter(255, 165, 40, 0.2));
    subFilters.add(new SaturationSubFilter(0.15));
  }
}

// Brannan: Increases contrast and exposure and adds a metallic tint
class BrannanFilter extends ColorFilter {
  BrannanFilter() : super(name: "Brannan", nameHindi:"बरैनन") {
    subFilters.add(new ContrastSubFilter(0.2));
    subFilters.add(new RGBOverlaySubFilter(140, 10, 185, 0.1));
  }
}

// Sutro: Burns photo edges, increases highlights and shadows dramatically with a focus on purple and brown colors
class SutroFilter extends ColorFilter {
  SutroFilter() : super(name: "Sutro", nameHindi:"सूत्रों") {
    subFilters.add(new BrightnessSubFilter(-0.1));
    subFilters.add(new SaturationSubFilter(-0.1));
  }
}

// Toaster: Ages the image by "burning" the centre and adds a dramatic vignette
class ToasterFilter extends ColorFilter {
  ToasterFilter() : super(name: "Toaster", nameHindi:"टोस्टर") {
    subFilters.add(new SepiaSubFilter(0.1));
    subFilters.add(new RGBOverlaySubFilter(255, 145, 0, 0.2));
  }
}

// Walden: Increases exposure and adds a yellow tint
class WaldenFilter extends ColorFilter {
  WaldenFilter() : super(name: "Walden", nameHindi:"वाल्डेन") {
    subFilters.add(new BrightnessSubFilter(0.1));
    subFilters.add(new RGBOverlaySubFilter(255, 255, 0, 0.2));
  }
}

// 1977: The increased exposure with a red tint gives the photograph a rosy, brighter, faded look.
class F1977Filter extends ColorFilter {
  F1977Filter() : super(name: "1977", nameHindi:"१९७७") {
    subFilters.add(new RGBOverlaySubFilter(255, 25, 0, 0.15));
    subFilters.add(new BrightnessSubFilter(0.1));
  }
}

// Kelvin: Increases saturation and temperature to give it a radiant "glow"
class KelvinFilter extends ColorFilter {
  KelvinFilter() : super(name: "Kelvin", nameHindi:"गर्म") {
    subFilters.add(new RGBOverlaySubFilter(255, 140, 0, 0.1));
    subFilters.add(new RGBScaleSubFilter(1.15, 1.05, 1));
    subFilters.add(new SaturationSubFilter(0.35));
  }
}

// Maven: darkens images, increases shadows, and adds a slightly yellow tint overal
class MavenFilter extends ColorFilter {
  MavenFilter() : super(name: "Maven", nameHindi:"माहिर") {
    subFilters.add(new RGBOverlaySubFilter(225, 240, 0, 0.1));
    subFilters.add(new SaturationSubFilter(0.25));
    subFilters.add(new ContrastSubFilter(0.05));
  }
}

// Ginza: brightens and adds a warm glow
class GinzaFilter extends ColorFilter {
  GinzaFilter() : super(name: "Ginza", nameHindi:"गिंज़ा") {
    subFilters.add(new SepiaSubFilter(0.06));
    subFilters.add(new BrightnessSubFilter(0.1));
  }
}

// Skyline: brightens to the image pop
class SkylineFilter extends ColorFilter {
  SkylineFilter() : super(name: "Skyline", nameHindi:"आकाश") {
    subFilters.add(new SaturationSubFilter(0.35));
    subFilters.add(new BrightnessSubFilter(0.1));
  }
}

// Dogpatch: increases the contrast, while washing out the lighter colors
class DogpatchFilter extends ColorFilter {
  DogpatchFilter() : super(name: "Dogpatch") {
    subFilters.add(new ContrastSubFilter(0.15));
    subFilters.add(new BrightnessSubFilter(0.1));
  }
}

// Brooklyn
class BrooklynFilter extends ColorFilter {
  BrooklynFilter() : super(name: "Brooklyn", nameHindi:"ब्रुकलीन") {
    subFilters.add(new RGBOverlaySubFilter(25, 240, 252, 0.05));
    subFilters.add(new SepiaSubFilter(0.3));
  }
}

// Helena: adds an orange and teal vibe
class HelenaFilter extends ColorFilter {
  HelenaFilter() : super(name: "Helena", nameHindi:"हेलेना") {
    subFilters.add(new RGBOverlaySubFilter(208, 208, 86, 0.2));
    subFilters.add(new ContrastSubFilter(0.15));
  }
}

// Ashby: gives images a great golden glow and a subtle vintage feel
class AshbyFilter extends ColorFilter {
  AshbyFilter() : super(name: "Ashby", nameHindi:"एश्बी") {
    subFilters.add(new RGBOverlaySubFilter(255, 160, 25, 0.1));
    subFilters.add(new BrightnessSubFilter(0.1));
  }
}

// Charmes: a high contrast filter, warming up colors in your image with a red tint
class CharmesFilter extends ColorFilter {
  CharmesFilter() : super(name: "Charmes", nameHindi:"मनोहर") {
    subFilters.add(new RGBOverlaySubFilter(255, 50, 80, 0.12));
    subFilters.add(new ContrastSubFilter(0.05));
  }
}

List<Filter> presetFiltersList = [
  NoFilter(),
  AddictiveBlueFilter(),
  AddictiveRedFilter(),
  AdenFilter(),
  AmaroFilter(),
  AshbyFilter(),
  BrannanFilter(),
  BrooklynFilter(),
  CharmesFilter(),
  ClarendonFilter(),
  CremaFilter(),
  EarlybirdFilter(),
  F1977Filter(),
  GinghamFilter(),
  GinzaFilter(),
  HefeFilter(),
  HelenaFilter(),
  HudsonFilter(),
  InkwellFilter(),
  JunoFilter(),
  KelvinFilter(),
  LarkFilter(),
  LoFiFilter(),
  LudwigFilter(),
  MavenFilter(),
  MayfairFilter(),
  MoonFilter(),
  NashvilleFilter(),
  PerpetuaFilter(),
  ReyesFilter(),
  RiseFilter(),
  SierraFilter(),
  SkylineFilter(),
  SlumberFilter(),
  StinsonFilter(),
  SutroFilter(),
  ToasterFilter(),
  ValenciaFilter(),
  VesperFilter(),
  WaldenFilter(),
  WillowFilter(),
  XProIIFilter(),
];
