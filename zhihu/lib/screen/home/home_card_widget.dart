import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zhihu/iconfont/AliIcons.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.only(left: 14, right: 20,top:4,bottom: 8),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: const Offset(2, 2),
                  blurRadius: 8.0)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      maxRadius: 20,
                      backgroundImage: AssetImage("assets/avatar.jpg")),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "三七二十",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        Text(
                          "12小时前·赞同了该回答",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                "你怎么看待「网抑云」这个梗？你怎么看待「网抑云」这个梗？你怎么看待「网抑云」这个梗？你怎么看待「网抑云」这个梗？",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.6,
                    textBaseline: TextBaseline.ideographic),
              ),
//
            ),
            Container(
              child: Text(
                '十级抑郁:“烫吗，烫为什么不放手，是舍不得吗？和他分开已经三千年了，还是忘不了他啊！以前的烫奶茶都是他吹冷了给我喝的，当时还嘲笑我说，以后他不在了怎么办，呵呵，想不到他那个时候就想离开我了啊呵呵呵......   你们都说我很温柔，温柔吗？半条命换的。他离开的那天我站在大雨里哭了好久好久，可是他还没有回头看一眼  ，从那以后我变得越来越抑郁，两千年前去医院检查了才知道是抑郁症晚晚晚期了。我的手臂上都被我割了9999道伤口，这却只有我自己知道，呵  。去医院开药，医生也说我没救了，现在我只有吃西瓜霜才能维持我的生命活动  。可是我现在只有10岁，我对我的未来已经没有希望了。在学校同学们都叫我“黑化姐”呵呵 他们根本不知道黑化的意义，他们根本不懂黑化......呵呵。老师讨厌我...呵呵  ，你们根本不懂我你们根本不知道我每天晚上都要崩溃999次我的枕头都因为我的泪水而发霉了  ，妈妈根本不关心我 ，连我之前最喜欢的熊出没都不要我看 ，爸爸也只知道打我... 我早已对这个世界没有了希望，我已经第99999次站在天台了，都想跳下去解决我的一生  可是还有网抑云陪着我 还好有它，陪我度过了每一个崩溃的夜晚 现在估计只有他懂我了吧呵呵呵呵 ，想到这里我又崩溃了，这已经是今晚的1000次了，比平常多了一次，可能今天晚上就要离开了吧，这个世界对于我来说也没有什么好眷恋的了呵呵，我们来世见吧',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, height: 1.6),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          AliIcons.home_card_agree,
                          size: 20,
                          color: Color.fromARGB(255, 122, 122, 122),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 22),
                          child: Text(
                            "2028",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 122, 122, 122)),
                          ),
                        ),
                        Icon(
                          AliIcons.home_card_message,
                          size: 22,
                          color: Color.fromARGB(255, 122, 122, 122),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 22),
                          child: Text(
                            "140",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 122, 122, 122)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.more_horiz,
                      color: Color.fromARGB(255, 211, 211, 211),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
