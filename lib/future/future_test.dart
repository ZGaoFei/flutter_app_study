import 'package:flutter/material.dart';

class FutureTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FutureState();
}

class FutureState extends State<FutureTest> {
  int _counter = 0;
  var text = "";
  var text2 = "";

  void _incrementCounter() {
    print('==========str=========str');
    debugPrint('=======debugPrint=============');

    setState(() {
      _counter++;
    });
  }

  void testFuture() {
    Future.delayed(new Duration(seconds: 2), () {
      print('hello world!');
      debugPrint('hello world!');
      return "hello world!";
    }).then((data) {
      setState(() {
        text = data;
      });
    });
  }

  void testFuture2() {
    Future.delayed(new Duration(seconds: 3), () {}).then((data) {});
  }

  void testFuture3() {
    Future.wait([
      Future.delayed(new Duration(seconds: 2), () {
        return "hello, ";
      }),
      Future.delayed(new Duration(seconds: 4), () {
        return "world!";
      })
    ]).then((results) {
      setState(() {
        text = results[0] + results[1];
      });
    });
  }

  // 消除callback hell
  void testFuture4() {
    hello().then((helloStr) {
      setState(() {
        text = helloStr;
      });

      return world(helloStr);
    }).then((worldStr) {
      setState(() {
        text = worldStr;
      });

      return print(worldStr);
    }).then((data) {
      setState(() {
        text = data;
      });
    });
  }

  task() async {
    try {
      String helloStr = await hello();
      setState(() {
        text = helloStr;
      });
      String worldStr = await world(helloStr);
      setState(() {
        text = worldStr;
      });
      String xxx = await print(worldStr);
      setState(() {
        text = xxx;
      });
    } catch (e) {}
  }

  void errorTest() {
    Future.delayed(new Duration(seconds: 3), () {
      throw new AssertionError('hello world! error 500');
    }).then((data) {
      print('======data=====' + data);
    }).catchError((e) {
      setState(() {
        text = e.toString();
      });
      print(e.toString());
    });
  }

  Future hello() {
    return Future.delayed(new Duration(seconds: 2), () {
      return 'hello';
    });
  }

  Future world(String hello) {
    return Future.delayed(new Duration(seconds: 3), () {
      return hello + ' world!';
    });
  }

  Future print(String str) {
    return Future.delayed(new Duration(seconds: 2), () {
      return str + ' xxx';
    });
  }

  // stream
  void testStream() {
    Stream.fromFutures([
      Future.delayed(new Duration(seconds: 3), () {
        return "hello w";
      }),
      Future.delayed(new Duration(seconds: 2), () {
        throw new AssertionError('error 500');
      }),
      Future.delayed(new Duration(seconds: 4), () {
        return "hello world!";
      }),
    ]).listen((data) {
      setState(() {
        text2 = data;
      });
    }, onError: (e) {
      setState(() {
        text2 = e.message;
      });
    }, onDone: () {
//      setState(() {
//        text2 = "done!!!";
//      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$text2',
            ),
            Text(
              '$text',
            ),
            RaisedButton(
              child: Text('click'),
              onPressed: testFuture,
            ),
            RaisedButton(
              child: Text('click2'),
              onPressed: errorTest,
            ),
            RaisedButton(
              child: Text('click3'),
              onPressed: testFuture3,
            ),
            RaisedButton(
              child: Text('click4'),
              onPressed: testFuture4,
            ),
            RaisedButton(
              child: Text('task'),
              onPressed: task,
            ),
            RaisedButton(
              child: Text('stream'),
              onPressed: () {
                testStream();
                errorTest();
              },
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
