import "package:flutter/material.dart";
import 'package:my_uba_app/constants/styles.dart';
import 'package:my_uba_app/shared/country_list.dart';
import 'package:provider/provider.dart';
import '../state_manager/country_branch_state.dart';

class TopLeft extends StatelessWidget {
  const TopLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<CountrySelection>(
          builder: (BuildContext context, value, child) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage(
                    value.branches[value.selectedCountryIndex].flag,
                    package: "country_icons",),
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
            );
            },
        ),
        IconButton(
          iconSize: 35,
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            showDialog(
              barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                    child: Dialog(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, top: 20, bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: GestureDetector(
                                  child: const Icon(
                                    Icons.sync,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                              GestureDetector(
                                child: const Icon(
                                  Icons.clear,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Tap to change country",
                              style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: SizedBox(
                              height: 2,
                              width: 145,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: CountryList(),
                          ),
                        ],
                      ),
                    )),
                  );
                });
          },
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
