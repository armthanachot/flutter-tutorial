// To parse this JSON data, do
//
//     final joke = jokeFromJson(jsonString);

import 'dart:convert';

Joke jokeFromJson(String str) => Joke.fromJson(json.decode(str));

String jokeToJson(Joke data) => json.encode(data.toJson());

class Joke {
    Joke({
        this.type,
        this.setup,
        this.punchline,
        this.id,
    });

    String? type;
    String? setup;
    String? punchline;
    int? id;

    factory Joke.fromJson(Map<String, dynamic> json) => Joke(
        type: json["type"],
        setup: json["setup"],
        punchline: json["punchline"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "setup": setup,
        "punchline": punchline,
        "id": id,
    };
}
