
import 'package:burc/burc_item.dart';
import 'package:burc/data/strings.dart';
import 'package:burc/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  static const String routeName = '/burclistesi';
   late List<Burc> tumBurclar=[];
  BurcListesi(){
    tumBurclar=veriKaynagi();
    print(tumBurclar);
    
  }
  

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.deepPurple[200],
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        color: Colors.deepPurple[200], // Card'ın arka plan rengi indigo
        child: AppBar(
          title: Text(
            "Burç Yorumları",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
    ),
    body: Center(
      child:  ListView.builder(
        itemBuilder:(context, index){
          return BurcItem(listelenenBurc: tumBurclar[index]);
        } ,
        itemCount: tumBurclar.length,),
    ),
  );
}

  List<Burc>veriKaynagi(){
    List<Burc> gecici=[];
    for(int i=0; i<12; i++){
      var  burcAdi=Strings.BURC_ADLARI[i];
      var burcTarih=Strings.BURC_TARIHLERI[i];
      var burcDetay=Strings.BURC_GENEL_OZELLIKLERI[i];
      var _burcKucukResim=Strings.BURC_ADLARI[i].toLowerCase()+"${i+1}.png";
      var _burcBuyukResim=Strings.BURC_ADLARI[i].toLowerCase() +"_buyuk" + "${i+1}.png";

      Burc eklenecekBurc=Burc(burcAdi,burcTarih,burcDetay,_burcBuyukResim,_burcKucukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
    

  }
}