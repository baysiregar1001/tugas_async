void main()async{
//   dataPertama();
  dataKetiga();
  dataKedua();
//   kamarOyo(5).then((String data){
//     print(data);
//   }).catchError((error){
//     print("Error");
//     print(error);
//   });
  
  try{
    var hasil = await kamarOyo(6);
    print("hasil dari await");
    print(hasil);
  }catch(error){
  print(error);
  } finally {
    dataPertama();
  }
  
  try {
     var dataOrder = await createOrderMessage();
    print(dataOrder);
  }catch(error){
    print(error);
  }
  }

void dataPertama(){
  Future.delayed(Duration(seconds: 2),(){
  print("data pertama");
});
}

void dataKedua(){
 Future((){
  print("data kedua");
});
}

void dataKetiga(){
  Future((){
  print("data ketiga");
});
}

Future<String> kamarOyo(int jumlahKamar){
var kamar = 4;
  return Future((){
    if(kamar > jumlahKamar){
      return 'Kamar tersisa $jumlahKamar';
    } else{
        throw 'kamar sudah penuh';
}
  });
}
Future<String> createOrderMessage() async{
  var order = await fetchUserOrder();
  return 'hasil dari : $order';
}

Future<String> fetchUserOrder(){
  return Future.delayed(Duration(seconds: 5), (){
    return 'sudah order';
  });
}