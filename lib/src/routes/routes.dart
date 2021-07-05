import 'package:flutter/material.dart';

import 'package:curso_flutter/src/pages/card_page.dart';
import 'package:curso_flutter/src/pages/alert_page.dart';
import 'package:curso_flutter/src/pages/avatar_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes(){
  return <String, WidgetBuilder>{
    'card': (BuildContext context) => CardPage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };
}

