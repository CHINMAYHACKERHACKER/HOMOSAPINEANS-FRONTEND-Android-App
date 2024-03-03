import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/personal_profile/widgets/common_gridview_widget.dart';
import 'package:homo_sapiens/view/personal_profile/widgets/common_listview_widget.dart';
import 'package:homo_sapiens/view/personal_profile/widgets/table_widget.dart';
import 'package:homo_sapiens/widgets/profile_appbar.dart';
import 'package:homo_sapiens/view/personal_profile/widgets/profile_details.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';
import 'package:readmore/readmore.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBarWidget('Personal Profile', context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //profile///////////////////////////////////////

                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            color: AppColors.kWhite.withOpacity(0.1),
                          ),
                          child: Column(
                            children: [
                              AppSize.kHeight50,
                              const TextWidget(
                                name: "Rahul",
                                fontSize: 30,
                              ),
                              AppSize.kHeight5,
                              // const TextWidget(
                              //   name: "rahul@gmail.com",
                              //   fontSize: 20,
                              // ),
                              AppSize.kHeight10,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Flexible(
                                  //   child: ElevatedButton(
                                  //     onPressed: () {},
                                  //     style: ElevatedButton.styleFrom(
                                  //       backgroundColor:
                                  //           AppColors.kLightPrimary,
                                  //     ),
                                  //     child: const TextWidget(name: "My Story"),
                                  //   ),
                                  // ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.kLightPrimary,
                                    ),
                                    child: const TextWidget(
                                      name: "Make Friend ?",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Flexible(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            AppColors.kLightPrimary,
                                      ),
                                      child: const TextWidget(
                                        name: "Follow",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            AppColors.kLightPrimary,
                                      ),
                                      child: const TextWidget(
                                        name: "Message",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppColors.kWhite.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: const [
                                      ProfileFollowingDetails(
                                        text: "3021",
                                        details: "Homo Sapiens",
                                        
                                      ),
                                      AppSize.kWidth5,
                                      ProfileFollowingDetails(
                                        text: "3021",
                                        details: "Followers",
                                      ),
                                      AppSize.kWidth5,
                                      ProfileFollowingDetails(
                                        text: "3021",
                                        details: "Following",
                                      ),
                                      AppSize.kWidth5,
                                      ProfileFollowingDetails(
                                        text: "3021",
                                        details: "Uploads",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              AppSize.kHeight20,
                              // Row(
                              //   children: const [
                              //     ButtonPagesWidget(name: "E = Account Page"),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: AppColors.kWhite,
                          child: CircleAvatar(
                            backgroundColor: AppColors.kWhite,
                            radius: 30,
                            child: Icon(
                              Icons.account_circle_outlined,
                              size: 50,
                              color: AppColors.kBlack.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppSize.kHeight20,
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    color: AppColors.kWhite.withOpacity(0.2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidget(
                          name: 'About me',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.kWhite,
                        ),
                        TextWidget(
                            name:
                                'Ravichandran, born and raised in Bagepalli, went to school at Bagepalli, Graduated from Bangalore University and majored in fashion business and working at Private sector as Garment Merchandiser.'),
                      ],
                    ),
                  ),
                  AppSize.kHeight20,
                  const CommonListTileWidget(
                    iconData: Icons.school,
                    text: "Education",
                    name: "Studied at Oxford University",
                    subtitle: TextWidget(
                      name: "MA History 2020-2022",
                    ),
                    itemCount: 3,
                  ),
                  AppSize.kHeight20,
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    color: AppColors.kWhite.withOpacity(0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.work,
                            color: AppColors.kWhite.withOpacity(0.5),
                          ),
                          label: const TextWidget(
                            name: "Profession",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kDarkPrimary,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.kWhite.withOpacity(0.4),
                            ),
                          ),
                          child: const TextWidget(
                              name:
                                  "Write about ur profession & Company story - Home sapiens is social and business media platform, where it allows to connects world people, professions, businesses, Institutes, other various industries for business transaction"),
                        )
                      ],
                    ),
                  ),
                  AppSize.kHeight20,
                  CommonGridViewWidget(
                    itemCount: 6,
                    text: "My Images",
                    subText: "All Images",
                    iconData: Icons.image,
                    widget: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: AppColors.kLightPrimary,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://media.istockphoto.com/id/1291835612/photo/handsome-man-with-shopping-bags-using-smart-phone-outdoors-in-the-city.jpg?s=170667a&w=0&k=20&c=_oWV76i2G5jCm2IUYNs6ek4wu-gJu0mYwYDRZ1_Toqc="),
                                  fit: BoxFit.cover)),
                        ),
                        AppSize.kHeight5,
                        const TextWidget(name: "Aliana Stew"),
                        // const TextWidget(name: "Father"),
                      ],
                    ),
                  ),
                  AppSize.kHeight20,
                  CommonGridViewWidget(
                    itemCount: 6,
                    text: "Family",
                    subText: "All Family",
                    iconData: Icons.family_restroom,
                    widget: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: AppColors.kLightPrimary,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://img.freepik.com/premium-photo/nice-girls-their-mother-father-grandfather-grandmother-are-enjoying-spending-time-together-home-family-time_566707-178.jpg?w=2000"),
                                  fit: BoxFit.cover)),
                        ),
                        AppSize.kHeight5,
                        const TextWidget(name: "Aliana Stew"),
                        const TextWidget(name: "Father"),
                      ],
                    ),
                  ),
                  AppSize.kHeight20,
                  CommonGridViewWidget(
                    itemCount: 6,
                    text: "Friends",
                    subText: "All Friends",
                    iconData: Icons.group,
                    widget: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: AppColors.kLightPrimary,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://images.healthshots.com/healthshots/en/uploads/2022/06/30204217/friends-forever.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        AppSize.kHeight5,
                        const TextWidget(name: "Aliana Stew"),
                      ],
                    ),
                  ),
                  AppSize.kHeight20,
                  CommonGridViewWidget(
                    text: "Favourite Books",
                    subText: "All Books",
                    iconData: Icons.menu_book_rounded,
                    itemCount: 3,
                    widget: Container(
                      padding: const EdgeInsets.all(5),

                      // height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.kBaseColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          AppSize.kHeight5,
                          Image(
                            image: NetworkImage(
                                "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1654371463i/18144590.jpg"),
                            height: 40,
                          ),
                          AppSize.kHeight5,
                          TextWidget(
                            name: "The Alchemist",
                            fontWeight: FontWeight.bold,
                          ),
                          ReadMoreText(
                            "Paulo Coelho's masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy...",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            trimLength: 30,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSize.kHeight20,
                  CommonGridViewWidget(
                    text: "Favorite Movies and\nTelevision Shows",
                    subText: "All Shows",
                    iconData: Icons.tv,
                    itemCount: 3,
                    widget: Container(
                      padding: const EdgeInsets.all(5),

                      // height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.kBaseColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          AppSize.kHeight5,
                          Image(
                            image: NetworkImage(
                                "https://images.moviesanywhere.com/08b5312f6334adf18414ccfb2093960a/80420ae5-16eb-41ce-b0be-a6f2a04b1a16.jpg"),
                            height: 40,
                          ),
                          AppSize.kHeight5,
                          TextWidget(
                            name: "The Pursuit of Happyness",
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.bold,
                          ),
                          ReadMoreText(
                            "Paulo Coelho's masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy...",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            trimLength: 30,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSize.kHeight20,
                  CommonGridViewWidget(
                    text: "Favorite Food & Beverages",
                    subText: "Shows All",
                    iconData: Icons.restaurant,
                    itemCount: 3,
                    widget: Container(
                      padding: const EdgeInsets.all(5),

                      // height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.kBaseColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          AppSize.kHeight5,
                          Image(
                            image: NetworkImage(
                                "https://www.thetakeiteasychef.com/wp-content/uploads/2016/12/unpaid-review-easterns-kebab-masala.1024x1024-3.png"),
                            height: 40,
                          ),
                          AppSize.kHeight5,
                          TextWidget(
                            name: "Chicken Kabab",
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.bold,
                          ),
                          ReadMoreText(
                            "This post is an unpaid, unbiased product review, and the first of its kind on this blog. I didn't go out and buy this masala. Someone I have been talking to at Eastern Condiments sent me a box of spice masalas. From that assortment of masalas, I chose the Kebab Masala to try. Go ahead and read my unpaid Review - Eastern's Kebab Masala.",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            trimLength: 30,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSize.kHeight20,
                  CommonGridViewWidget(
                    text: "Favorite Travel Places",
                    subText: "Shows All",
                    iconData: Icons.travel_explore,
                    itemCount: 3,
                    widget: Container(
                      padding: const EdgeInsets.all(5),

                      // height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.kBaseColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          AppSize.kHeight5,
                          Image(
                            image: NetworkImage(
                                "https://a.cdn-hotels.com/gdcs/production6/d781/3bae040b-2afb-4b11-9542-859eeb8ebaf1.jpg"),
                            height: 40,
                          ),
                          AppSize.kHeight5,
                          TextWidget(
                            name: "Istanbul",
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.bold,
                          ),
                          ReadMoreText(
                            "Istanbul has a timeless charm that owes much to its rich history. The city was historically referred to as Byzantium and Constantinople. It served as a focal point of several ancient empires. Numerous architectural wonders, remnants of these empires, still stand tall in the heart of the city. These include the Hagia Sophia, which stood the tests of time and continues to invite awe with its display of dazzling mosaics.",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            trimLength: 30,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSize.kHeight20,
                  const CommonListTileWidget(
                    iconData: Icons.favorite_outline,
                    text: "Other Favourite",
                    name: "Colour",
                    trailing: TextWidget(name: 'Black'),
                    itemCount: 2,
                  ),

                  AppSize.kHeight20,
                  const CommonListTileWidget(
                    iconData: Icons.link,
                    text: "Links",
                    name: "http//facebook.com",
                    leading: Icon(Icons.facebook),
                    itemCount: 3,
                  ),
                  AppSize.kHeight20,
                  const CommonListTileWidget(
                    iconData: Icons.location_on,
                    text: "HomeTown",
                    name: "Bangalore, Karnataka, India",
                    itemCount: 1,
                  ),
                  AppSize.kHeight20,
                  const TableWidget(
                    iconData: Icons.badge_outlined,
                    text: "Profile Summary",
                    itemCount: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
