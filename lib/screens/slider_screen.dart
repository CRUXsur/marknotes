import 'package:flutter/material.dart';

import 'package:marknotes/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & Checks'),
        ),
        body: Column(
          children: [
            //
            //! opcion para que se vea mejor en IOS
            //! slider.adaptive(.........)
            Slider(
                min: 50, //
                max: 400, //
                activeColor: AppTheme.primary,
                //*divisions: 10,
                value: _sliderValue, //
                //? habilito o deshabilito el slider con el check
                onChanged: _sliderEnable
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null
/*                 onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                } */
                ),

//            Checkbox(
//                value: _sliderEnable,
//                //* lo desabilito el check mandando un null
//                //* onChanged: null
//                onChanged: (value) {
//                  //! dos formas de resolver:
//                  //! 1: _sliderEnable = value!;
//                  //! 2: _sliderEnable = value ?? true;
//                  _sliderEnable = value ?? true;
//                  setState(() {});
//                }),

            //este check es mejor!!!!!
/*             CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value ?? true;
                    })), */
            //este es muuuucho mejor
//             Switch(
//              value: _sliderEnable,
//              onChanged: (value) => setState(() {
//                      _sliderEnable = value;
//                    }
//            ),
            //pero me quedo con este!!!!!!!!
            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value;
                    })),

            //* para poner una descripcion
            const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            //
          ],
        ));
  }
}
