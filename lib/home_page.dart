import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "home_page_title",
          style: TextStyle(color: Colors.white),
        ).tr(),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "home_page_fruits",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ).tr(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "home_page_apple",
              style: TextStyle(fontSize: 20),
            ).tr(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "home_page_orange",
              style: TextStyle(fontSize: 20),
            ).tr(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "home_page_peach",
              style: TextStyle(fontSize: 20),
            ).tr(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "home_page_pinnaple",
              style: TextStyle(fontSize: 20),
            ).tr(),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(
                      const Locale("en"),
                    );
                  },
                  child: const Text("Eng"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(
                      const Locale("uz"),
                    );
                  },
                  child: const Text("Uzb"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(
                      const Locale("ru"),
                    );
                  },
                  child: const Text("Rus"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
