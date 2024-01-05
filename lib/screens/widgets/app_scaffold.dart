import 'package:flutter/material.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {Key? key,
      this.body,
      this.subTitle,
      this.title,
      this.bottomSheet,
      this.action,
      this.onDispose,
      this.globalKey,
      this.automaticallyImplyLeading,
      this.topPadding})
      : super(key: key);

  final Widget? body;
  final String? title;
  final Widget? bottomSheet;
  final String? subTitle;
  final Widget? action;
  final VoidCallback? onDispose;
  final GlobalKey<ScaffoldState>? globalKey;
  final bool? automaticallyImplyLeading;
  final double? topPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SquareColors.white,
      bottomSheet: bottomSheet,
      key: globalKey,
      body: Container(
        color: SquareColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  height: 110,
                  color: SquareColors.white,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, topPadding ??62, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        automaticallyImplyLeading ?? true
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: SquareColors.appBlue,
                                ))
                            : const SizedBox(),
                        const SizedBox(
                          width: 25,
                        ),
                        Text(title!,
                            style: appTextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: SquareColors.appBlue,
                            )),
                        const Spacer(),
                        Visibility(
                            visible: action != null,
                            child: action ?? const SizedBox())
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 1.2),
                  child: Center(
                    child: Text(
                      subTitle!,
                      textAlign: TextAlign.center,
                      style: appTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: SquareColors.appBlack),
                    ),
                  ),
                )
              ],
            ),
                 const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: body!,
            ),
       
          ],
        ),
      ),
    );
  }
}
