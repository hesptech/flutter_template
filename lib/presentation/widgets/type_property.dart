import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/config/theme/app_theme.dart';
import '/presentation/providers/type_provider.dart';

class TypeProperty extends StatelessWidget {
  const TypeProperty({super.key});

  @override
  Widget build(BuildContext context) {

    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TypePropertyBtn('SALE'),
        SizedBox(width: 10.0,),
        TypePropertyBtn('SOLD'),
      ],
    );
  }
}


class TypePropertyBtn extends ConsumerWidget {
  final String typeBtn;
  
  const TypePropertyBtn(this.typeBtn, { super.key });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final bool typePropertyState = ref.watch(typeProvider) == 'A' ? true : false ;
    final typePropertyColor = typeBtn == 'SALE'
    ? typePropertyState ? colorName['primary'] : colorName['white']
    : typePropertyState ? colorName['white'] : colorName['error'];
    final typePropertyColorBorder = typeBtn == 'SALE'
    ? typePropertyState ? colorName['white']! : colorName['primary']!
    : typePropertyState ? colorName['error']! : colorName['white']!;

    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(7.0),
        width: 145.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
          color: typePropertyColor,
          border: Border(
            left: BorderSide(
            color: typePropertyColorBorder,
            width: 2,
            ),
            top: BorderSide(
            color: typePropertyColorBorder,
            width: 0,
            ),
            right: BorderSide(
            color: typePropertyColorBorder,
            width: 2,
            ),
            bottom: BorderSide(
            color: typePropertyColorBorder,
            width: 2,
            )
          )
        ),
        child: Text(
          typeBtn, 
          textAlign: TextAlign.center,
          style: TextStyle(
            color:  typeBtn == 'SALE' 
            ? typePropertyState ? colorName['white'] : colorName['primary'] 
            : !typePropertyState ? colorName['white'] : colorName['error'],
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        )    
      ),
      onTap: () {
        typePropertyState ? ref.read(typeProvider.notifier).state = 'U' : ref.read(typeProvider.notifier).state = 'A' ;
        //typePropertyState ? ref.read(typeProvider.notifier).update((state) => state = 'U') : ref.read(typeProvider.notifier).update((state) => state = 'A') ;
      },
    );
  }
}