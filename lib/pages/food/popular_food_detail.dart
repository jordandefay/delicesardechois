import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                  width: double.maxFinite,
                  height: Dimensions.popularFoodImgSize,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/food1.png"))))),
          //icon widgets
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          //expandable text widget
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Tomme de Brebis"),
                    SizedBox(height: Dimensions.height20),
                    BigText(text: "Description"),
                    SizedBox(height: Dimensions.height20),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text:
                                "La Tomme de Brebis est un fromage artisanal exquis, élaboré à partir de lait cru de brebis soigneusement sélectionné, provenant des troupeaux qui paissent librement dans les riches pâturages des régions montagneuses. Ce fromage est fabriqué selon des méthodes traditionnelles transmises de génération en génération, garantissant ainsi un respect méticuleux des techniques ancestrales qui caractérisent sa fabrication.Avec sa texture ferme mais délicieusement fondante en bouche, la Tomme de Brebis se distingue par un goût prononcé et savoureusement nuancé, qui évolue au fil de l'affinage. Ce processus, réalisé dans des caves spécifiques où l'humidité et la température sont rigoureusement contrôlées, permet au fromage de développer des arômes riches et complexes. Ces arômes, qui rappellent ceux de la flore montagnarde, sont caractéristiques des fromages de terroir et reflètent la qualité de l'alimentation naturelle des brebis.La croûte de la Tomme de Brebis, légèrement rustique et de couleur variable selon la saison, témoigne également de son affinage soigné et de son caractère authentique. Ce fromage se marie parfaitement avec une variété de vins et peut être dégusté aussi bien en fin de repas qu'en apéritif, accompagné de fruits secs ou de confitures qui en exaltent les saveurs.La Tomme de Brebis, souvent médaillée dans des concours de fromages pour sa qualité exceptionnelle et son goût inimitable, continue de séduire les palais les plus exigeants, offrant une expérience gustative unique et profondément enracinée dans le patrimoine culinaire de sa région d'origine."),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height10,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: AppColors.signColor,
                    ),
                    SizedBox(width: Dimensions.width10 / 2),
                    BigText(text: "0"),
                    SizedBox(width: Dimensions.width10 / 2),
                    Icon(
                      Icons.add,
                      color: AppColors.signColor,
                    )
                  ],
                )),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height10,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: "\$ 10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            )
          ],
        ),
      ),
    );
  }
}
