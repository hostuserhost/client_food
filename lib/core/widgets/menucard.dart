import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class MenuCardPage extends StatelessWidget {
  const MenuCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ResponsiveGridList(
        horizontalGridMargin: 10,
        minItemWidth: 140,
        maxItemsPerRow: 3,
        children: List.generate(
          100,
          (index) => Container(
            // height: 300,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              border: Border.all(
                color: const Color(0xFFD9D9D9),
                width: 2,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: [
                Expanded(
                  flex: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://avatars.mds.yandex.net/i?id=d6f973ac612b3835234cfb76c77c26d110ca1410-5906397-images-thumbs&n=13',
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Text('Салат минутка'),
                    Spacer(),
                    Text(r'200$'),
                  ],
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text('200g'),
                ),
                IndexedStack(
                  children: [
                    const SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: null,
                        child: Text('Добавить'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          width: 0.5,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Row(
                        children: [
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.exposure_minus_1),
                          ),
                          Text('Добавить'),
                          IconButton(onPressed: null, icon: Icon(Icons.add)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
