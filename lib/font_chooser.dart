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

  @override
  void initState() {
    super.initState();
    fontNames = GoogleFonts.asMap().keys.toList();
  }

  @override
  Widget build(BuildContext context) {
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
                  ref.watch(fontStateProvider.notifier).getCurrentFontName()),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.plus_circle_fill),
              iconSize: 30,
            )
          ],
        ),
        const Divider(
          thickness: 1,
          color: Colors.white,
        ),
        Text(ref.watch(fontStateProvider.notifier).getCurrentFont().toString(),
            style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
