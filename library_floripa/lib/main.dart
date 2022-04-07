import 'package:flutter/material.dart';

void main() {
  runApp(const LibraryFloripa());
}

class LibraryFloripa extends StatelessWidget {
  const LibraryFloripa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const LibraryFloripaPage(title: 'Biblioteca Floripa'),
    );
  }
}

class LibraryFloripaPage extends StatefulWidget {
  const LibraryFloripaPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LibraryFloripaPage> createState() => _LibraryFloripaPageState();
}

class _LibraryFloripaPageState extends State<LibraryFloripaPage> {

  List<String> _booksTitlesList = ['Romeu e Julieta', 'Percy Jackson', 'Harry Potter', 'Prisioneiro B-3087'];
  List<String> _booksDescriptionList = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in nisl vestibulum, tempus risus eu,'
    ' lobortis massa. Suspendisse faucibus sodales eros sit amet ultricies. Cras nec dapibus sapien. Cras '
    'lectus lorem, ultrices ut velit non, vulputate mattis libero. Morbi aliquet, augue ac sodales mattis,'
    ' quam lacus sollicitudin metus, quis facilisis nibh mauris ut arcu. Fusce malesuada, magna ut venenatis'
    ' placerat, eros neque sagittis tellus, eget hendrerit est lorem ut odio. Aenean eget mollis ex. Fusce nisl'
    ' eros, fermentum eu finibus porta, ullamcorper sit amet diam. Morbi vel orci et ante accumsan tincidunt. '
    'Sed et lorem fringilla, gravida orci at, tristique orci. Praesent rutrum sem eget nisi fermentum, in'
    ' lobortis ante posuere. In hac habitasse platea dictumst',

    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in nisl vestibulum, tempus risus eu, lobortis massa. Suspendisse faucibus sodales eros sit amet ultricies. Cras nec dapibus sapien. Cras lectus lorem, ultrices ut velit non, vulputate mattis libero. Morbi aliquet, augue ac sodales mattis, quam lacus sollicitudin metus, quis facilisis nibh mauris ut arcu. Fusce malesuada, magna ut venenatis placerat, eros neque sagittis tellus, eget hendrerit est lorem ut odio. Aenean eget mollis ex. Fusce nisl eros, fermentum eu finibus porta, ullamcorper sit amet diam. Morbi vel orci et ante accumsan tincidunt. Sed et lorem fringilla, gravida orci at, tristique orci. Praesent rutrum sem eget nisi fermentum, in lobortis ante posuere. In hac habitasse platea dictumst',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in nisl vestibulum, tempus risus eu, lobortis massa. Suspendisse faucibus sodales eros sit amet ultricies. Cras nec dapibus sapien. Cras lectus lorem, ultrices ut velit non, vulputate mattis libero. Morbi aliquet, augue ac sodales mattis, quam lacus sollicitudin metus, quis facilisis nibh mauris ut arcu. Fusce malesuada, magna ut venenatis placerat, eros neque sagittis tellus, eget hendrerit est lorem ut odio. Aenean eget mollis ex. Fusce nisl eros, fermentum eu finibus porta, ullamcorper sit amet diam. Morbi vel orci et ante accumsan tincidunt. Sed et lorem fringilla, gravida orci at, tristique orci. Praesent rutrum sem eget nisi fermentum, in lobortis ante posuere. In hac habitasse platea dictumst',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in nisl vestibulum, tempus risus eu, lobortis massa. Suspendisse faucibus sodales eros sit amet ultricies. Cras nec dapibus sapien. Cras lectus lorem, ultrices ut velit non, vulputate mattis libero. Morbi aliquet, augue ac sodales mattis, quam lacus sollicitudin metus, quis facilisis nibh mauris ut arcu. Fusce malesuada, magna ut venenatis placerat, eros neque sagittis tellus, eget hendrerit est lorem ut odio. Aenean eget mollis ex. Fusce nisl eros, fermentum eu finibus porta, ullamcorper sit amet diam. Morbi vel orci et ante accumsan tincidunt. Sed et lorem fringilla, gravida orci at, tristique orci. Praesent rutrum sem eget nisi fermentum, in lobortis ante posuere. In hac habitasse platea dictumst'];

  int i = 1;
  String _currentBookTitle = "";
  String _currentBookDescription = "";

  void NextBook() {
    setState(() {
      try {
        _currentBookTitle = _booksTitlesList[i];
        _currentBookDescription = _booksDescriptionList[i];

        i++;
      } catch (e) {
        i = 0;
        _currentBookTitle = _booksTitlesList[i];
        _currentBookDescription = _booksDescriptionList[i];
        i++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Text(
              _currentBookTitle,
              style: const TextStyle (
                color: Colors.indigo,
                fontSize: 20,
                height: 3
              )
            ),

            Text(
              _currentBookDescription,
              style: const TextStyle(
                color: Colors.black87,
                height: 1.3
              ),
              textAlign: TextAlign.justify,
            ),

            ButtonBar(
              children: [
                Text(
                  "Próximo",
                  style: Theme.of(context).textTheme.button,
                  textScaleFactor: 1.2,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: NextBook,
        tooltip: 'Próximo livro',
        child: const Icon(Icons.navigate_next_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
