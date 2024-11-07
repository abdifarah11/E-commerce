
import 'package:flutter/material.dart';
import 'package:flutter_application/constants/themes.dart';
import 'package:gap/gap.dart';

class AddsBannerWidget extends StatelessWidget {
  const AddsBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color:kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [Expanded(child:Container( 
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('apple store', style:AppTheme.kBigTitle
              ),
              Gap(12),
         
              Text('find apple product and accesories  you are looking  for',
             style: AppTheme.kBodyText.copyWith(color: Colors.white),
             ),
             Gap(8),
              ElevatedButton( style: ElevatedButton.styleFrom(
                backgroundColor: kWhiteColor,
                foregroundColor: kSecondaryColor,
              ),
                onPressed: (){}, child: const Text('new year'))
              
            ],
          ),
        ),
        ),
        Image.asset('assets/general/landing.png'),
        ],
          
      ),
             
             
    );
  }
}