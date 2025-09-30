// import 'package:flutter/material.dart';
//
// //TextField => Input from Keyboard
// class InputTextField extends StatefulWidget{
//   @override
//   _InputTextField createState() => _InputTextField();
// }
//
// class _InputTextField extends State<InputTextField>{
//   String _name = '';
//
//   @override
//   Widget build(BuildContext context){
//     return Column(
//       children: [
//         TextField(
//           decoration: const InputDecoration(
//             hintText: 'Write your name here',
//             labelText: 'Your Name',
//           ),
//           onChanged: (String value){
//             setState(() {
//               _name = value;
//             });
//           },
//         ),
//         const SizedBox(height: 20),
//         ElevatedButton(
//             onPressed: (){
//               print("Button Submit on Click");
//               showDialog(
//                 context: context,
//                 builder: (context){
//                   return AlertDialog(
//                     content: Text('Hello, $_name'),
//                   );
//                 }
//               );
//             },
//             child: const Text('Submit'),
//         ),
//       ],
//     );
//   }
// }
//

import 'package:flutter/material.dart';

//TextField => Input from Keyboard
class InputTextField extends StatefulWidget{
  @override
  _InputTextField createState() => _InputTextField();
}

class _InputTextField extends State<InputTextField>{
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Write your name here...',
              labelText: 'Your Name',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Submit'),
            onPressed: (){
              print("Button on click now!");
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hello, ${_controller.text}'),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
}

class SwitchButton extends StatefulWidget{
  @override
  _SwitchButton createState () => _SwitchButton();
}

class _SwitchButton extends State<SwitchButton>{
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: lightOn,
      onChanged: (bool value){
        setState(() {
          lightOn = value;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
              lightOn ? 'Light On' : 'Light Off'),
              duration: Duration(seconds: 1),
          )
        );
      },
    );
  }
}

class RadioButton extends StatefulWidget{
  @override
  _RadioButton createState () => _RadioButton();
}

class _RadioButton extends State<RadioButton>{
  String? language;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ListTile(
          leading: Radio<String>(
            value: 'Dart',
            groupValue: language,
            onChanged: (String? value){
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
          title: Text('Dart'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'Kotlin',
            groupValue: language,
            onChanged: (String? value){
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
          title: Text('Kotlin'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'Switch',
            groupValue: language,
            onChanged: (String? value){
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
        )
      ],
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      )
    );
  }
}