import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:pwmw/size_config.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
     this.title,
     this.image,
     this.press,
  });
  final String title, image;
  final GestureTapCallback press;

  getMoney(int pay) {
    FlutterMoneyFormatter fmt = FlutterMoneyFormatter(
        amount: pay + .0
    );
    return fmt.output.withoutFractionDigits;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(200),
          height: getProportionateScreenWidth(130),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                /*Stack에서 기본적인 위치를 맞춘다.*/
                Positioned.fill(
                  child: Image.network(
                    image,
                    /*이미지와 상자의 크기를 맞춘다.*/
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                // 카드 안에 패딩값
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "가즈아"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}