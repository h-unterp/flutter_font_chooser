import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final fontProvider =
    StateProvider<TextTheme>((ref) => GoogleFonts.robotoTextTheme());

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
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              if (pos > 0) {
                pos--;
                ref.read(fontProvider.notifier).update(
                    (state) => GoogleFonts.getTextTheme(fontNames[pos]));
              }
            });
          },
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: () {
            setState(() {
              pos++;
              ref
                  .read(fontProvider.notifier)
                  .update((state) => GoogleFonts.getTextTheme(fontNames[pos]));
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(fontNames[pos]),
        )
      ],
    );
  }
}
