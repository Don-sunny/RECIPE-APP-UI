import 'package:flutter/material.dart';

class MyRecipesWidget extends StatelessWidget {
  final bool isStack;
  final bool isRated;
  final List<String> imagePath;
  final List<String> mainText;
  final List<String> subText;

  const MyRecipesWidget({
    super.key,
    required this.isStack,
    required this.isRated,
    required this.imagePath,
    required this.mainText,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 15,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(
        2,
        (index) => Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                bottom: 4.0,
                left: 7.0,
                right: 7.0,
              ),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      imagePath[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    mainText[index],
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                    maxLines: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.timer_outlined,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            subText[index],
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      if (isRated)
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange[400],
                            ),
                            Text(
                              '4.9',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.orange[400],
                                    fontSize: 12,
                                  ),
                            )
                          ],
                        )
                    ],
                  )
                ],
              ),
            ),
            if (isStack)
              Positioned(
                top: 10,
                right: 15,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.red[300]!,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
