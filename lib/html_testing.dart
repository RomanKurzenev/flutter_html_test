import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HtmlTesting extends StatefulWidget {
  HtmlTesting({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HtmlTestingState createState() => new _HtmlTestingState();
}

const test = """
  <button value="setState" >Нажми Меня!</button>
  <button value="/details" >Нажми Меня!</button>    
  """;

class _HtmlTestingState extends State<HtmlTesting> {
  List<Color> bg = [
    Color(0xFF80f2d9),
    Color(0xFFec7d4d),
  ];
  int select = 0;

  // void initState() {
  //   super.initState();
  //   bg = ;
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: bg[select],
      appBar: AppBar(
        title: Text('flutter_html Example'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Html(
          data: test,
          customRender: {
            "button": (RenderContext context, Widget child) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (context.tree.attributes.values.first.startsWith('/')) {
                      Navigator.pushNamed(context.buildContext,
                          context.tree.attributes.values.first);
                    } else {
                      setState(() {
                        if (select == 0) {
                          select = 1;
                        } else {
                          select = 0;
                        }
                      });
                    }
                  },
                  child: Text(context.tree.element!.innerHtml.toString()),
                ),
              );
            },
          },
          tagsList: Html.tags..addAll(["button"]),
        ),
      ),
    );
  }
}
