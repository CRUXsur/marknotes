import 'package:flutter/material.dart';

import 'package:marknotes/theme/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // print(
      //     '${scrollController.position.pixels},${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        //add5();
        fetchData();
      }
    });
  }

//*creo una funcion o un metodo que regersa un Future y se llama  fetchData
//* parahacer un tipo de espera mientras los tengo los resultados
  Future fetchData() async {
    //
    if (isLoading) return;
    isLoading = true; //hace algun tipo de interacccion en mi widget
    //**espero a que esto resuelva, espero 3 seg
    await Future.delayed(const Duration(seconds: 3));
    //********
    add5();
    //**ya deje de caragar
    isLoading = false;
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});

    if ((scrollController.position.pixels + 100) <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
        //
        scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn //
        );
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    //*purgo, borro todas mis imagenes!
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    //? PARA TENER INFORMACION DEL DISPOSITIVO....
    //? size sabe el ancho y alto de la pantalla, actual...
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        //!Stack es para poner un widget encima de otro
        //!similares son Column, Row y Stack
        //!wrap  with Column => wrap with Stack
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                //** para ver el efecto de IOS al final del scroll
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                      //?para que al cargar la imagen no salte!
                      width: double.infinity,
                      height: 300,
                      //?-----
                      //? quiero todas imagenes pegadas
                      fit: BoxFit.cover,
                      //?-----
                      placeholder: const AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image=${imagesIds[index]}'));
                },
              ),
            ),

            if (isLoading) //!solo nos permite uan instruccion-NO cuerpo inst
              Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30, //*-30,ancho del widget es 60
                child: const _LoadingIcon(),
              ) //
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        //color: Colors.white,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9), //
            shape: BoxShape.circle //
            ),
        child: const CircularProgressIndicator(
          color: AppTheme.primary,
        ));
  }
}
