import 'dart:math' as m;
void main() {
  int rdmax = 100;
  dynamic rds = new m.Random();
  int sd;
  do {
    sd = rds.nextInt(rdmax);
  } while ((sd <= 3)&&(sd >= 25));

  int rd = rds.nextInt(rdmax);
  for (int i = sd; i >= 2; i--) {
    rd = rd % i;
  }
  List la,lb,lc,ld;
  if (rd==0) {
    la = chan_shuf(5);
  } else if (rd==1) {
    la = erfu_shuf(5);
  } else {
  }
  lb = chan_shuf(5);
  lc = erfu_shuf(5);

  if (rd==0) {
    la.map((las)=>{
      lb.map((lbs)=>{
        if (las==lbs) {
        } else {
          ld.add(las)
        }
      })
    });
  } else if (rd==1) {
    la.map((las)=>{
      lc.map((lcs)=>{
        if (las==lcs) {
        } else {
          ld.add(las)
        }
      })
    });
  } else {
  }
  List ls = new List.from(ld)..addAll(lb)..addAll(lc);
  print(ls);
}
List erfu_shuf(int nr){
  List d = erfu("list");
  List ans = new List();;
  ans = d..shuffle()..shuffle()..shuffle();
  int x = ans.length;
  if (nr > x) {
    nr = x;
  }
  for (int i = 0; i < x - nr; i++) {
    ans.removeAt(ans.length - 1);
  }
  return ans;
}
List chan_shuf(int nr){
  List d = chan("list");
  List ans = new List();;
  ans = d..shuffle()..shuffle()..shuffle();
  int x = ans.length;
  if (nr > x) {
    nr = x;
  }
  for (int i = 0; i < x - nr; i++) {
    ans.removeAt(ans.length - 1);
  }
  return ans;
}
dynamic erfu(String type){
  String altin_str = "欧陽、太史、端木、上官、司馬、東方、独孤、南宮、万俟、聞人、夏侯、諸葛、尉遅、公羊、赫連、澹台、皇甫、宗政、濮陽、公冶、太叔、申屠、公孫、慕容、仲孫、鍾離、長孫、宇文、司徒、鮮于、司空、閭丘、子車、亓官、司寇、巫馬、公西、顓孫、壌駟、公良、漆雕、楽正、宰父、穀梁、拓跋、夾谷、軒轅、令狐、段干、百里、呼延、東郭、南門、羊舌、微生、公戶、公玉、公儀、梁丘、公仲、公上、公門、公山、公堅、左丘、公伯、西門、公祖、第五、公乗、貫丘、公皙、南栄、東里、東宮、仲長、子書、子桑、即墨、達奚、褚師、呉銘、叱雲、賀蘭、長孫、慕容。";
  altin_str = altin_str..replaceAll('、', '')..replaceAll('。', '');
  List<String> altin_list = altin_str.split('');
  switch (type) {
    case "str" :
      return altin_str;
      break;
    case "list" :
      return altin_list;
      break;
    default:
     return "";
  }
}

dynamic chan(String type){
  String altin_str = "王李張劉陳楊黄趙呉周徐孫馬朱胡郭何高林羅鄭梁謝宋唐許韓馮鄧曹彭曽蕭田董袁潘于蒋蔡余杜葉程蘇魏呂丁任沈姚盧姜崔鍾譚陸汪范金石廖賈夏韋傅方白鄒孟熊秦邱江尹薛閻段雷侯龍史陶黎賀顧毛郝龔邵万銭厳覃武戴莫孔向湯";
  altin_str = altin_str..replaceAll('、', '')..replaceAll('。', '');
  List<String> altin_list = altin_str.split('');
  switch (type) {
    case "str" :
      return altin_str;
      break;
    case "list" :
      return altin_list;
      break;
    default:
     return "";
  }
}