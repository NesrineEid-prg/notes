part of '../import.dart';

class MainSc extends StatefulWidget {
  const MainSc({super.key});

  @override
  State<MainSc> createState() => _MainScState();
}

class _MainScState extends State<MainSc> {
  final List<String> dropDownOptions = ["Date Modifier", "Date Create"];
  late String dropDownValue = dropDownOptions.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('   Notes'), actions: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.rightFromBracket),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(FontAwesomeIcons.plus),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          TextField(
              decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
            labelText: ("Search .."),
          )),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.arrowDown),
              ),
              DropdownButton(
                  value: dropDownValue,
                  items: dropDownOptions
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (newVal) {
                    setState(() {
                      dropDownValue = newVal!;
                    });
                  }),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bars))
            ],
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 3, mainAxisSpacing: 4),
                itemBuilder: (context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber),
                    child: Column(
                      children: [
                        Text('data'),
                        Row(
                          children: [
                            Container(child: Text('this is title')),
                          ],
                        ),
                        Text('data'),
                        Row(
                          children: [
                            Text('content'),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
