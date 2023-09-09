import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model/burc.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({
     required  this.secilenBurc,
  Key? key,
    }) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {

  Color appbarColor=Colors.indigo;
  late PaletteGenerator _generator;

  void appbarRenk() async{
    _generator= await PaletteGenerator.fromImageProvider(AssetImage("images/"+widget.secilenBurc.burcBuyukResim));
    appbarColor=_generator.vibrantColor!.color;
    

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(           
            expandedHeight: 250,
            pinned: true,           
            backgroundColor: appbarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.burcAdi+" Burcu ve Özellikleri",),
            centerTitle: true,
              background: SizedBox(
                height: 300,
                child: Image.asset("images/"+widget.secilenBurc.burcKucukResim,
                
                fit: BoxFit.cover,),
              )
              ),
           
          ),
          SliverToBoxAdapter(
            child: Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(4),
              child: SingleChildScrollView(
                child: Text(widget.secilenBurc.burcDetayi,style: Theme.of(context).textTheme.subtitle2,),
              ),
            )
          )
        ],
      )
    );
  }
}