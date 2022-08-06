import 'package:flutter/material.dart';
import '../utilities/constant.dart';



class order_list_container extends StatelessWidget {
  const order_list_container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 8),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(1),
            boxShadow: korderlistshadow,
            borderRadius: ktaskcontainerradius),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    "Be Shopper Shop",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Silicon Shoppers, F4, 1st Floor, Udhna Main Road,\n udhna, Surat, Gujarat - 394210 (India)",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
              EdgeInsets.only(right: 16, top: 16),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.end,
                children: [
                  Text(
                    "18 Dec, 2021",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    " 9:30 AM",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
