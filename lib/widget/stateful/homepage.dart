import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mybasicapp/jokeToJson.dart';
import 'package:mybasicapp/widget/stateless/joke.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Joke _dataFromApi = Joke();
  @override
  void initState() {
    super.initState();
    getJoke();
  }

  Future<Joke> getJoke() async {
    var url = Uri.http(
        "official-joke-api.appspot.com", "/random_joke", {'q': '{http}'});
    var response = await http.get(url);
    _dataFromApi = jokeFromJson(response.body);
    return _dataFromApi;
  }

  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Joke"),
        ),
        body: FutureBuilder(
          future: getJoke(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              var result = snapshot.data;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    JokeDisplay(
                      id: _dataFromApi.id,
                      type: _dataFromApi.type,
                      setup: _dataFromApi.setup,
                      punchline: _dataFromApi.punchline,
                      boxHeight: 200,
                      boxColor: Colors.orange,
                      fontSize: 20,
                      fontColor: Colors.white,
                      boderRadius: 10,
                    )
                  ],
                ),
              );
            } else {
              return LinearProgressIndicator();
            }
          },
        ));
  }
}
