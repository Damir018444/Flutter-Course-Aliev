// ЛР 1 — шесть независимых виджетов.
//
// Как сдавать: скопируйте этот файл целиком себе в main.dart, допишите
// шесть функций ниже вместо TODO, запустите — все шесть элементов должны
// появиться на экране. Пришлите готовый файл на проверку.
//
// Основной виджет трогать не нужно. Редактируйте там, где написано TODO.

import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const Lab1App());
}

class Lab1App extends StatelessWidget {
  const Lab1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ЛР 1')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task 1:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task1(),

              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),

              Text(
                'Task 2:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task2(),

              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),

              Text(
                'Task 3:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task3(),

              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),

              Text(
                'Task 4:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task4(),

              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),

              Text(
                'Task 5:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task5(),

              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),

              Text(
                'Task 6:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task6(),
            ],
          ),
        ),
      ),
    );
  }
}

// 1. Заголовок — Text, крупный жирный текст чёрного цвета, обрезается в одну строку, если не помещается.
Widget task1() {
  // TODO: замените Placeholder на Text()
  return const Text(
    "Очень длинный заголовок, который\nне помещается в одну строку и обрезается",
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

// 2. Подпись — небольшой, нежирный курсивный текст белого цвета, обрезается в две строки.
// Также реализуйте подложку из тёмно-серого контейнера с закруглениями, чтобы текст было видно
Widget task2() {
  // TODO: замените Placeholder на ...
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 50, 50, 50),
      borderRadius: BorderRadius.circular(12)
    ),
    child: const Text(
      "Небольшая подпись\nкоторая при необходимости\nобрезается ровно в две строки",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        color: Colors.white,
      ),
  )
  
   
  );
}

// 3. Иконка — любая Icon на ваш вкус,
// с применением цвета и размером.
Widget task3() {
  // TODO: замените Placeholder на...
  return Icon(
    Icons.star,
    color: Colors.amber,
    size: 35
  );
}

// 4. Кнопка с иконкой избранного — большая иконка сердца красного цвета без фона.
// При нажатии пишет в консоль "Вы добавили в избранное"
Widget task4() {
  // TODO: замените Placeholder на ...
  return IconButton(
    icon: Icon(Icons.favorite),
    iconSize: 35,
    color: Colors.red,
    onPressed: (){print("Вы добавили в избранное");},
  );
  
  
}

// 5. Кнопка «Подробнее» — кнопка с текстом и обводкой, при нажатии пишет в консоль "Узнать детали"
Widget task5() {
  // TODO: замените Placeholder на ...
  return OutlinedButton(
    onPressed: (){print("Узнать детали");},
    child: const Text("Подробнее")
  );
}

// 6. Изображение в стиле Polaroid—  выберите любое из каталога по ссылке
// https://picsum.photos/ (необходим vpn), либо используйте https://docs.flutter.dev/assets/images/dash/dash-fainting.gif
// Добавьте чёрную обводку, а внутри белую рамку в стиле фотографии Polaroid (https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAeKRHzUEOMCX836O6p8R5-XBkrSlf8C4go4C7f1q8ClnmlFaV9emSrUFL&s=10)
// Для реализации используйте Container
Widget task6() {
  // TODO: замените Placeholder на Container()
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 170, 170, 170),
      border: Border.all(color: Colors.black, width: 2),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 6,
          offset: Offset(2, 3),
        ),
      ],
    ),
    // Внутренние отступы: снизу больше — это «поляроидный» нижний край
    padding: const EdgeInsets.fromLTRB(12, 12, 12, 42),
    child: Image.network(
      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
      width: 250,
      height: 180,
      fit: BoxFit.cover,
    ),
  );
}



















































// import 'package:flutter/cupertino.dart';
// import 'package:material_ui/material_ui.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHdO-NVZ42_CZfM7TxLLWW_6L0Qrop3OyJR3Egn9hG0vJScTmEY2x6luQ&s=10") //asset('assets/asset1.png'),
//         )
//       ),
//     );
//   }

//   ElevatedButton button_practice1() {
//     return ElevatedButton(onPressed: (){
//           print("Кнопка нажата");
//         }, 
//         child: Icon(Icons.add),
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.red,
//           foregroundColor: Colors.white,
//           elevation: 5,
//           shadowColor: Colors.green
//         )
//         );
//   }

//   Icon icon_practice1() => Icon(Icons.check, size: 52, fontWeight: FontWeight.bold, color: Colors.green);

//   Text text_practice1() {
//     return Text('Всем привет от Дамира!', 
//           style: TextStyle(color: Colors.white, fontSize: 50,
//           backgroundColor: Colors.red),
//           //TextStyle(
//             // color: Colors.pinkAccent,
//             // backgroundColor: Colors.black,
//             // fontSize: 52,
//             // fontWeight: FontWeight.bold,
//             // fontStyle: FontStyle.italic)
//           );
//   }
// }