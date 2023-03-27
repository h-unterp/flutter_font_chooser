import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_chooser/font_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSel extends ConsumerStatefulWidget {
  const FontSel({Key? key}) : super(key: key);

  @override
  FontSelState createState() => FontSelState();
}

class FontSelState extends ConsumerState<FontSel> {
  int pos = 0;
  List<String> fontNames = [];
  final TextEditingController fontListNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fontNames = GoogleFonts.asMap().keys.toList();
  }

  @override
  Widget build(BuildContext context) {
    List<FontList> fontLists = ref.watch(fontStateProvider).fontLists;
    List<String> fontListNames =
        fontLists.map((FontList fontList) => fontList.name).toList();
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  if (pos > 0) {
                    pos--;
                    ref.read(fontStateProvider.notifier).updateCurrentFont(pos);
                  }
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  pos++;
                  ref.read(fontStateProvider.notifier).updateCurrentFont(pos);
                });
              },
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  ref.watch(currentFontStateProvider).getCurrentFontName(),
                )),
            IconButton(
              onPressed: () {
                ref.watch(currentFontStateProvider).isCurrentFontLiked()
                    ? ref
                        .read(fontStateProvider.notifier)
                        .unLikeCurrentFont(pos)
                    : ref.read(fontStateProvider.notifier).likeCurrentFont(pos);
              },
              icon: ref.watch(currentFontStateProvider).isCurrentFontLiked()
                  ? const Icon(CupertinoIcons.minus_circle_fill)
                  : const Icon(CupertinoIcons.plus_circle_fill),
              iconSize: 30,
            )
          ],
        ),
        const Divider(
          thickness: 1,
          color: Colors.white,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            dd(),
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: const Text("Save Current Font List"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                ref
                                    .read(fontStateProvider.notifier)
                                    .saveCurrentList(
                                        fontListNameController.text);
                                Navigator.pop(context);
                              },
                              child: const Text("OK"),
                            )
                          ],
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          content: Builder(
                            builder: (context) {
                              // Get available height and width of the build area of this widget. Make a choice depending on the size.
                              var width = MediaQuery.of(context).size.width;

                              return SizedBox(
                                  width: width,
                                  child: TextField(
                                      controller: fontListNameController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Name your font list',
                                      )));
                            },
                          ),
                        ));
              },
              icon: const Icon(Icons.save),
              iconSize: 40,
            ),
          ],
        ),
      ],
    );
  }

  Widget dd() {
    List<FontList> fontLists = ref.watch(fontStateProvider).fontLists;
    List<String> fontListNames =
        fontLists.map((FontList fontList) => fontList.name).toList();
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: DropdownButton<String>(
          value: fontListNames[0],
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          onChanged: (String? value) {},
          items: fontListNames.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
