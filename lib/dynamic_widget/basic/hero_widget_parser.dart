import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/widgets.dart';

class HeroWidgetParser extends WidgetParser {
  @override
  bool forWidget(String widgetName) {
    return "Hero" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext, ClickListener listener) {
    return Hero(
      tag: map.containsKey("tag") ? map["tag"] : "default",
      transitionOnUserGestures: map.containsKey("transitionOnUserGestures") ? map["transitionOnUserGestures"] : false,
      child: DynamicWidgetBuilder.buildFromMap(map["child"], buildContext, listener),
    );
  }
}
