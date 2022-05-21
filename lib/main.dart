import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Reading Progress Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double progressValue = 0.0;
  
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      double currentProgressValue =
          scrollController.offset / scrollController.position.maxScrollExtent;

      if (currentProgressValue < 0.0) {
        currentProgressValue = 0.0;
      }

      if (currentProgressValue > 1.0) {
        currentProgressValue = 1.0;
      }

      progressValue = currentProgressValue;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const HtmlWidget(
                  r'''<h1>One morning, when Gregor Samsa woke from troubled 
     dreams.</h1>
     <p>One morning, when Gregor Samsa woke from troubled 
     dreams, he found himself transformed in his bed into 
     a horrible vermin. He lay on his armour-like back, 
     and if he lifted his head a little he could see his 
     brown belly, slightly domed and divided by arches into 
     stiff sections. The bedding was hardly able to cover 
     <strong>strong</strong> it and seemed ready to slide 
     off any moment. His many legs, pitifully thin 
     compared with the size of the rest of him, 
     <a class="external ext" href="#">link</a> waved about 
     helplessly as he looked. "What's happened to me? " he 
     thought. It wasn't a dream. His room, a proper human 
     room although a little too small, lay peacefully 
     between its four familiar walls.</p>
     <h1>One morning, when Gregor Samsa woke from troubled 
     dreams.</h1>
     <h2>The bedding was hardly able to cover it.</h2>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p>
     <h2>The bedding was hardly able to cover it.</h2>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p>
     <ul>
     <li>Lorem ipsum dolor sit amet consectetuer.</li>
     <li>Aenean commodo ligula eget dolor.</li>
     <li>Aenean massa cum sociis natoque penatibus.</li>
     </ul>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p>
     <form action="#" method="post">
     <fieldset>
       <label for="name">Name:</label>
       <input type="text" id="name" placeholder="Enter your 
     full name" />
     
       <label for="email">Email:</label>
       <input type="email" id="email" placeholder="Enter 
     your email address" />
     
       <label for="message">Message:</label>
       <textarea id="message" placeholder="What's on your 
     mind?"></textarea>
     
       <input type="submit" value="Send message" />
     
     </fieldset>
     </form>
     elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p>
     <table class="data">
     <tr>
       <th>Entry Header 1</th>
       <th>Entry Header 2</th>
       <th>Entry Header 3</th>
       <th>Entry Header 4</th>
     </tr>
     <tr>
       <td>Entry First Line 1</td>
       <td>Entry First Line 2</td>
       <td>Entry First Line 3</td>
       <td>Entry First Line 4</td>
     </tr>
     <tr>
       <td>Entry Line 1</td>
       <td>Entry Line 2</td>
       <td>Entry Line 3</td>
       <td>Entry Line 4</td>
     </tr>
     <tr>
       <td>Entry Last Line 1</td>
       <td>Entry Last Line 2</td>
       <td>Entry Last Line 3</td>
       <td>Entry Last Line 4</td>
     </tr>
     </table>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p><h1>One morning, when Gregor Samsa woke from troubled 
     dreams.</h1>
     <p>One morning, when Gregor Samsa woke from troubled 
     dreams, he found himself transformed in his bed into 
     a horrible vermin. He lay on his armour-like back, 
     and if he lifted his head a little he could see his 
     brown belly, slightly domed and divided by arches into 
     stiff sections. The bedding was hardly able to cover 
     <strong>strong</strong> it and seemed ready to slide 
     off any moment. His many legs, pitifully thin 
     compared with the size of the rest of him, 
     <a class="external ext" href="#">link</a> waved about 
     helplessly as he looked. "What's happened to me? " he 
     thought. It wasn't a dream. His room, a proper human 
     room although a little too small, lay peacefully 
     between its four familiar walls.</p>
     <h1>One morning, when Gregor Samsa woke from troubled 
     dreams.</h1>
     <h2>The bedding was hardly able to cover it.</h2>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p>
     <h2>The bedding was hardly able to cover it.</h2>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p>
     <ul>
     <li>Lorem ipsum dolor sit amet consectetuer.</li>
     <li>Aenean commodo ligula eget dolor.</li>
     <li>Aenean massa cum sociis natoque penatibus.</li>
     </ul>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p>
     <form action="#" method="post">
     <fieldset>
       <label for="name">Name:</label>
       <input type="text" id="name" placeholder="Enter your 
     full name" />
     
       <label for="email">Email:</label>
       <input type="email" id="email" placeholder="Enter 
     your email address" />
     
       <label for="message">Message:</label>
       <textarea id="message" placeholder="What's on your 
     mind?"></textarea>
     
       <input type="submit" value="Send message" />
     
     </fieldset>
     </form>
     elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p>
     <table class="data">
     <tr>
       <th>Entry Header 1</th>
       <th>Entry Header 2</th>
       <th>Entry Header 3</th>
       <th>Entry Header 4</th>
     </tr>
     <tr>
       <td>Entry First Line 1</td>
       <td>Entry First Line 2</td>
       <td>Entry First Line 3</td>
       <td>Entry First Line 4</td>
     </tr>
     <tr>
       <td>Entry Line 1</td>
       <td>Entry Line 2</td>
       <td>Entry Line 3</td>
       <td>Entry Line 4</td>
     </tr>
     <tr>
       <td>Entry Last Line 1</td>
       <td>Entry Last Line 2</td>
       <td>Entry Last Line 3</td>
       <td>Entry Last Line 4</td>
     </tr>
     </table>
     <p>It showed a lady fitted out with a fur hat and fur 
     boa who sat upright, raising a heavy fur muff that 
     covered the whole of her lower arm towards the 
     viewer.</p>''')
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: LinearPercentIndicator(
          lineHeight: 10.0,
          percent: progressValue,
          backgroundColor: Colors.grey,
          progressColor: Colors.red,
        ),
      ),
    );
  }
}
