import 'package:flutter/material.dart';
import 'package:flutter_application/constants/themes.dart';
import 'package:flutter_application/widgets/adds_banner.dart';
import 'package:flutter_application/widgets/chep_widget.dart';
import 'package:flutter_application/widgets/drawer.dart';
import 'package:flutter_application/widgets/product.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(    
          backgroundColor: const Color.fromARGB(255, 227, 76, 49),
        title: SvgPicture.asset(
          'assets/general/store_brand_white.svg',
          width: 180, 
          height: 40,  
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        
        ),          
        actions: [
          Padding(
            padding:const EdgeInsets.only(right: 20),
             child:IconButton(onPressed: (){}, icon: const Icon(Icons.local_mall_outlined)))
        ],
        ),
      
       drawer: const Drawer(
        
          child: drawerwidget(), 
          ),
         
      body: SingleChildScrollView
      (child:
       Padding(
         padding: const EdgeInsets.all(25),
         child: Column(
          children: [
            const AddsBannerWidget(),
           SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                 Chipwidget(chiplabel: 'all',),
                  Chipwidget(chiplabel: 'computers',),
                  Chipwidget(chiplabel: 'headsets'),
                  Chipwidget(chiplabel: 'accessories'),
                  Chipwidget(chiplabel: 'printers'),
                  Chipwidget(chiplabel: 'camers'),
        

              ],
            ),
           ),
           const Gap(12),
          
            const Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text('Hot Sales',style:AppTheme.kHeadingOne,),
                Text('see All',style: AppTheme.kSeeAllText,),

              ],
            ),
            const Gap(12),
          const product(),
            
            
        const Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text('featured  product ',style:AppTheme.kHeadingOne,),
                Text('see All',style: AppTheme.kSeeAllText,),

              ],
            ),
          ],
               ),
       ),
      ),
    );
  }
}
