import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final title = ('Create your first note');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Image.asset(
              'images/5013828.png',
              fit: BoxFit.cover,
            ),
            _TitleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                    height: ButtonHeigts.buttonNormalHeigt,
                    child: Center(
                        child: Text('Create a Note',
                            style: Theme.of(context).textTheme.headline5)))),
            TextButton(onPressed: () {}, child: Text('Import Note')),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Add a note' * 8,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeigts {
  static const double buttonNormalHeigt = 50;
}
