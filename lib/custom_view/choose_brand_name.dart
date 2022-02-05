import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';

class ChooseBrandName extends StatefulWidget {
  const ChooseBrandName({Key? key}) : super(key: key);

  @override
  _ChooseBrandNameState createState() => _ChooseBrandNameState();
}

class _ChooseBrandNameState extends State<ChooseBrandName> {
  final List<String> brand = [
    'Adidas Original',
    'ALDO',
    'Bershaka',
    'Converse',
    'Dr. MArtens',
    'Fila',
    'Nike',
    'River Island'
  ];
  bool isChoose = false;
  int initialIndex = 0;

  void chooseBrandName(int index) {
    setState(() {
      isChoose = !isChoose;
      initialIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      //margin: const EdgeInsets.only(top: 16.0),
      height: height * 0.55,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          brand.length,
          (index) => Container(
              height: 50.0,
              width: double.infinity,
              color:
                  isChoose && initialIndex == index ? greyColor : Colors.white,
              child: GestureDetector(
                onTap: () => chooseBrandName(index),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        brand[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        height: 24.0,
                        width: 24.0,
                        padding: const EdgeInsets.only(bottom: 4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: isChoose && initialIndex == index
                              ? primaryColor
                              : Colors.transparent,
                          border: Border.all(
                            color: isChoose && initialIndex == index
                                ? primaryColor
                                : Colors.grey,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Icon(
                          Icons.done,
                          size: isChoose && initialIndex == index ? 24.0 : 22.0,
                          color: isChoose && initialIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
