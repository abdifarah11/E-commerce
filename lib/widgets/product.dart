
import 'package:flutter/material.dart';
import 'package:flutter_application/constants/themes.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

class product extends StatelessWidget {
  const product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.all(4),
      width: double.infinity,
      height: 300,
    
      child:
      ListView.builder(
       
        itemCount:5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius:BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                 offset: const Offset(0, 6),
                 color: Colors.black.withOpacity(0.1),
                 blurRadius: 8,
                 spreadRadius: 2,
                
                )
              ]
    
          ),
          margin: const EdgeInsets.all(12),
        
          width: MediaQuery.of(context).size.width*0.5,
          child: Column(
            children: [
              Expanded(child: 
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(6),
                color: kLightBackground,
                child: Image.asset('assets/products/airpods.jpg'),
              ),
              ),
              const Gap(2),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    const Text('products name',style: AppTheme.kCardTitle,
                    
                     overflow: TextOverflow.ellipsis,
                     ),
                    Text('short description products',style:AppTheme.kBodyText),
                    Row(
                       mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('\$823',style: AppTheme.kSeeAllText),
                        IconButton(
                          onPressed:(){},
                           icon: const Icon(Icons.add_circle),
                           ),
    
                    ],
                    ),
                    MasonryGridView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      
                      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                     itemBuilder:(context, index) => const SizedBox(
                        height: 250,child: product(),
                    
                     ),)
                  ],
    
                ),
              )
            ],
            ),
    
        ),
         ),
    );
  }
}





