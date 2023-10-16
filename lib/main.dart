import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Crypto CurrenciesL ist',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 13, 13, 13),
        primarySwatch: Colors.yellow,
        dividerColor: Colors.white24,
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 13, 13, 13),
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
            labelSmall: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Crypto Currencies List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto Currencies List"),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) => ListTile(
          leading: SvgPicture.asset(
            "assets/coin.svg",
            height: 35, width: 35, //
            semanticsLabel: 'bitcoin',
          ),
          title: Text("Bitcoin", style: theme.textTheme.bodyMedium),
          subtitle: Text("10000\$", style: theme.textTheme.labelSmall),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
