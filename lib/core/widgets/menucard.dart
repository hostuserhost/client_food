import 'package:client_food/core/theme.dart';
import 'package:client_food/features/about/bloc/bloc.dart';
import 'package:client_food/features/menu/bloc/addtocart.dart';
import 'package:flutter/material.dart';

class MenuCardPage extends StatelessWidget {
  const MenuCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        border: Border.all(
          color: const Color(0xFFD9D9D9),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
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
          Row(
            children: [
              Text(
                'Салат минутка',
                textScaleFactor: ScaleSize.textScaleFactor(context),
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
              ),
              const Spacer(),
              const Text(
                r'200$',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              '200g',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          BlocBuilder<OneAddCubit, OneAddState>(builder: (context, state) {
            return IndexedStack(
              index: state == true ? 1 : 0,
              children: [
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: cardbuttonstyle,
                      onPressed: () {
                        state = true as OneAddState;
                      },
                      child: const Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Добавить',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    color: maincolor,
                    border: Border.all(
                      width: 0.1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.remove,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '100',
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.add,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
