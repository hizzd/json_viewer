# json_viewer

flutter json tree viewer.   
flutter的json树形浏览器.   

[example](https://github.com/hizzd/json_viewer/blob/master/example/lib/main.dart)

Usage:
```dart
import 'package:json_viewer/json_viewer.dart';
import 'dart:convert';

@override
Widget build(BuildContext context) {
    var obj = json.decode('{"menu": {'
        '  "id": 123456,'
        '  "success": false,'
        '  "value": "File",'
        '  "popup": {'
        '    "menuitem": ['
        '      {"value": "New", "onclick": "CreateNewDoc()"},'
        '      {"value": "Open", "onclick": "OpenDoc()"},'
        '      {"value": "Close", "onclick": "CloseDoc()"}'
        '    ]'
        '  },'
        '  "popup2": {'
        '    "menuitem": ['
        '      {"value": "New", "onclick": "CreateNewDoc()"},'
        '      {"value": "Open", "onclick": "OpenDoc()"},'
        '      {"value": "Close", "onclick": "CloseDoc()"}'
        '    ]'
        '  }'
        '}}');
    return JsonViewerRoot(jsonObj: obj);
}
```

Images:   
![ ](https://github.com/hizzd/json_viewer/raw/master/assets/example1.png)