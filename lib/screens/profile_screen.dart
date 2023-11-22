import 'package:figma_ui/screens/widgets/my_recipesWidget.dart';
import 'package:figma_ui/widgets/general_widgets.dart';
import 'package:figma_ui/widgets/user_details_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: GeneralWidgets.appBarWidgtet(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const UserDetailsWidget(),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Recipes',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'View all',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: const Color.fromRGBO(134, 191, 62, 1),
                                  fontSize: 15,
                                ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Flexible(
                      child: SizedBox(
                        height: size.width / 2,
                        width: double.infinity,
                        child: const MyRecipesWidget(
                          isStack: false,
                          isRated: false,
                          imagePath: [
                            'https://images.pexels.com/photos/1833349/pexels-photo-1833349.jpeg?auto=compress&cs=tinysrgb&w=600',
                            'https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/09/daal-dal-naan-indian-food-1296x728-header.jpg?w=1155&h=1528'
                          ],
                          mainText: [
                            'Yangnyeom Chicken',
                            'Sushi (Filleted Fish)'
                          ],
                          subText: ['By Andrew Jun', 'Lunch | 60'],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Saved Recipes',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'View all',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: const Color.fromRGBO(134, 191, 62, 1),
                                  fontSize: 15,
                                ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Flexible(
                      child: SizedBox(
                        height: size.width / 2,
                        width: double.infinity,
                        child: const MyRecipesWidget(
                          isStack: true,
                          isRated: true,
                          imagePath: [
                            'https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/09/daal-dal-naan-indian-food-1296x728-header.jpg?w=1155&h=1528',
                            'https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/09/daal-dal-naan-indian-food-1296x728-header.jpg?w=1155&h=1528'
                          ],
                          mainText: [
                            'Yangnyeom Chicken',
                            'Sushi (Filleted Fish)'
                          ],
                          subText: ['By Andrew Jun', 'Lunch | 60'],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Saved Challenges',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'View all',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: const Color.fromRGBO(134, 191, 62, 1),
                                  fontSize: 15,
                                ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      children: [
                        Container(
                          height: size.width / 2,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://images.pexels.com/photos/958546/pexels-photo-958546.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 15,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.red[300]!,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
