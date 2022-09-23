import 'package:flutter/material.dart';

class Product {
  final String image, bigImage, title, subTitle, line, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.bigImage,
    required this.title,
    required this.subTitle,
    required this.line,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "가렌",
      subTitle: "데마시아의 힘",
      line: '"내 검과 심장은 데마시아의 것이다!"',
      price: 234,
      size: 12,
      description:
          "가렌은 불굴의 선봉대를 이끄는 고결하고 자긍심 강한 군인이다. 선봉대 내에서 인망이 두터울 뿐 아니라 심지어 적에게도 존경을 받지만, 그가 대대로 데마시아와 그 이상을 수호하는 임무를 맡은 크라운가드 가문의 자손이기 때문은 아니다. 가렌은 자신의 부모님이 마법사에 살해되어 마법을 매우 혐오하며 마법 저항력을 갖춘 방어구와 거대한 대검으로 무장하고, 언제라도 마법사에 맞서 정의의 칼바람을 일으킬 준비가 되어 있다.",
      image: "assets/images/champ_1.jpeg",
      bigImage: "assets/images/champ_1-1.jpeg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "갈리오",
      subTitle: "위대한 석상",
      line: '"힘을 발휘할 시간이군!"',
      price: 234,
      size: 8,
      description:
          '거대한 석상 갈리오는 위대한 도시 데마시아 외곽에 우뚝 선 채 경계를 늦추지 않는다. 마법 공격으로부터 데마시아를 수호하기 위해 만들어진 갈리오는 강력한 마법의 힘을 받아 깨어나기 전까지 수십 년간 그 자리에 미동도 하지 않고 서 있다. 한번 깨어나면 데마시아의 수호자로서 자부심을 안고 전투의 희열에 몸을 맡기며 전력을 다한다. 하지만 달콤한 승리의 이면에는 언제나 씁쓸한 순간이 기다리고 있다. 갈리오가 파괴해야 하는 마법은 곧 그를 움직이게 하는 힘의 원천이기 때문이다. 전투를 승리로 이끈 갈리오는 어김없이 다시 깊은 잠에 빠져든다.',
      image: "assets/images/champ_2.jpeg",
      bigImage: "assets/images/champ_2-1.jpeg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "갱플랭크",
      subTitle: "바다의 무법자",
      line: '"지옥의 불길도, 죽음의 심연도, 이 몸을 넘볼 수는 없다."',
      price: 234,
      size: 10,
      description:
          "몰락한 해적왕 갱플랭크는 잔인한 성격에다 종잡을 수 없으며 사악함은 타의 추종을 불허한다. 과거 항구도시 빌지워터를 힘으로 장악했으나 지금은 영향력을 잃었다. 하지만 사람들은 그렇기 때문에 오히려 갱플랭크가 더 미쳐 날뛰리라고 생각한다. 갱플랭크는 빌지워터를 다른 사람에게 넘기느니 다시 한 번 피바다로 만들어 버릴 인물이니까. 그리고 이제, 권총, 해적검, 화약통으로 무장한 갱플랭크가 잃었던 패권을 되찾기 위한 준비를 끝냈다.",
      image: "assets/images/champ_3.jpeg",
      bigImage: "assets/images/champ_3-1.jpeg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "그라가스",
      subTitle: "술취한 난동꾼",
      line: '"네가 사는 거라면 나도 끼지~"',
      price: 234,
      size: 11,
      description:
          "그라가스는 몸집이 크고 소란스러워서 한 번 보면 잊기 힘든 쾌활한 주조가로, 완벽한 술을 만들기 위한 여정을 떠나게 되었다. 그라가스가 어디서 왔는지는 아무도 모르지만, 프렐요드의 때묻지 않은 불모지를 뒤지며 희귀한 재료를 찾아 주조법을 하나씩 시험해 보고 있다. 대부분 술에 취해 있어 극도로 충동적인 그라가스는 소동을 일으키는 데에는 전설적인 소질이 있는데, 그 소동은 밤샘 파티와 엄청난 기물 파손으로 이어지기 일쑤다. 그라가스를 보게 된다면 곧 음주, 그리고 파괴가 잇따를 것이라고 생각해도 좋다.",
      image: "assets/images/champ_4.jpeg",
      bigImage: "assets/images/champ_4-1.jpeg",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "그레이브즈",
      subTitle: "무법자",
      line: '"내가 돌아왔다."',
      price: 234,
      size: 12,
      description:
          "말콤 그레이브즈는 명성이 자자한 용병, 도박사, 도적으로, 그가 한 번이라도 발을 들였던 모든 도시와 제국에서 수배령이 떨어져 있을 정도다. 그레이브즈는 성미가 불 같지만, 범죄의 명예에 엄격한 면이 있어 자신의 이중 총열 산탄총 '운명'으로 마무리를 하는 경우가 잦다. 최근에는 트위스티드 페이트와 함께 바람 잘 날 없던 파트너 관계를 다시 맺고, 범죄의 냄새가 나는 빌지워터의 그늘진 곳에서 벌어지는 소동을 다시 한 번 주름잡고 있다.",
      image: "assets/images/champ_5.jpeg",
      bigImage: "assets/images/champ_5-1.jpeg",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "그웬",
    subTitle: "신성한 재봉사",
    line: '"자신 있게! 어깨 펴고, 가위 들고!"',
    price: 234,
    size: 12,
    description:
        "마법의 힘으로 살아나 인간이 된 인형 그웬은 한때 자신을 만들었던 도구를 휘두른다. 발걸음을 내디딜 때마다 자신을 만든 재봉사의 사랑을 느끼며 모든 것을 감사히 여긴다. 그웬이 부리는 신성한 안개는 그웬의 가위와 바늘, 실에 축복을 내린 고대의 보호 마법이다. 모든 게 새로운 것으로 가득하지만, 그웬은 망가진 세상에서 살아남은 선한 이들을 위해 기꺼이 싸우러 나선다..",
    image: "assets/images/champ_6.jpeg",
    bigImage: "assets/images/champ_6-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 7,
    title: "나르",
    subTitle: "잃어버린 고리",
    line: '"나르! 갸다!"',
    price: 234,
    size: 12,
    description:
        "쉽게 흥분하는 요들인 나르는 익살스러운 장난을 치다가도 어린아이 같은 변덕을 부려 벌컥 화를 내며, 그럴 때면 순식간에 거대한 몸집의 야수로 변하여 주변을 마구 때려 부순다. 수천 년 동안이나 얼음 정수에 갇혀 있다가 풀려난 터라, 지금의 세계는 나르에게 진기하고 경이로운 세상이다. 호기심 많은 나르는 위험이 닥치면 오히려 즐거워하며, 뼈이빨 부메랑이든 뿌리째 뽑은 나무든 닥치는 대로 집어 들어 적에게 던진다.",
    image: "assets/images/champ_7.jpeg",
    bigImage: "assets/images/champ_7-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 8,
    title: "나미",
    subTitle: "파도 소환사",
    line: '“파도가 뭘 싣고 올진 나한테 달렸죠.”',
    price: 234,
    size: 12,
    description:
        "나미는 바다에 사는 바스타야 종족으로, 어리지만 완고할 정도로 고집이 세다. 먼 옛날 타곤 인과 맺었던 약속이 깨지자, 마라이 종족으로는 처음으로 파도 치는 바다에서 나와 마른 육지로 모험을 떠났다. 달리 해결책이 없었기에, 자신의 종족을 안전하게 지켜주는 성스러운 의식을 완수한다는 임무를 자청한 것이었다. 새로운 시대는 혼란 그 자체지만, 나미는 용기와 결단력으로 불확실한 미래를 마주한다. 그녀의 무기는 바다의 힘을 소환하는 파도 소환사의 지팡이다.",
    image: "assets/images/champ_8.jpeg",
    bigImage: "assets/images/champ_8-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 9,
    title: "나서스",
    subTitle: "사막의 관리자",
    line: '"삶과 죽음의 순환은 계속된다. 우리는 살 것이고, 저들은 죽을 것이다."',
    price: 234,
    size: 12,
    description:
        "자칼의 머리를 한 위풍당당한 반인반수 형상의 초월체 나서스는 고대 슈리마의 영웅적인 인물이었다. 날카로운 지력을 소유한 그는 지식의 수호자이자 최고의 전략가로서 수 세기 동안 슈리마 제국을 번영으로 인도했다. 제국의 몰락 이후엔 칩거에 들어가 전설 속의 존재가 되었다. 하지만 슈리마의 고대 도시가 되살아나면서, 제국의 몰락이 다시는 일어나지 않도록 하겠다는 다짐과 함께 세상 밖으로 나왔다.",
    image: "assets/images/champ_9.jpeg",
    bigImage: "assets/images/champ_9-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 10,
    title: "노틸러스",
    subTitle: "심해의 타이탄",
    line: '"물이 깊으니... 조심해..."',
    price: 234,
    size: 12,
    description:
        "빌지워터에는 처음으로 물에 잠긴 부두만큼이나 오래되었다는 쓸쓸한 전설이 하나 있다. 육중한 갑옷을 걸친 노틸러스라는 이름의 거인이 푸른 불꽃 제도 해안가의 검푸른 물을 배회한다는 이야기이다. 이제는 기억나지도 않을 복수심에 사로잡힌 그는 예고도 없이 거대한 닻을 휘둘러 가여운 자들을 구하고 탐욕스러운 자들을 죽음으로 인도한다. '빌지워터의 공물'이라는 절대 어겨선 안 될 약속을 잊은 자들을 바닷속으로 끌고 들어가며, 끌려들어 간 자는 누구도 그곳에서 살아 돌아올 수 없다고 한다.",
    image: "assets/images/champ_10.jpeg",
    bigImage: "assets/images/champ_10-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 11,
    title: "녹턴",
    subTitle: "영원한 악몽",
    line: '"어둠을… 맞이하라…!"',
    price: 234,
    size: 12,
    description:
        '모든 의식 있는 존재가 꾸는 악몽의 총체, 이름하여 녹턴은 순수하며 원초적인 공포의 존재가 되었다. 그는 물처럼 흐르는 혼돈의 존재이자 냉기 서린 눈을 한 얼굴 없는 그림자, 위협적인 칼날로 무장한 존재다. 녹턴은 영혼 세계로부터 자유를 얻은 후 진정한 어둠 속에서만 피어나는 두려움을 먹기 위해 계속해서 의식의 세계에 출몰하고 있다.',
    image: "assets/images/champ_11.jpeg",
    bigImage: "assets/images/champ_11-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 12,
    title: "누누와 윌럼프",
    subTitle: "소년과 설인",
    line: '"모험은 역시 친구랑 같이 해야 신나는 법!"',
    price: 234,
    size: 12,
    description:
        '아주 오랜 옛날, 무시무시한 괴물을 물리쳐 영웅이 되고 싶은 소년이 있었다. 하지만 소년이 발견한 것은 마법을 부리는, 단지 친구가 필요했던 외로운 설인이었다. 고대의 힘과 눈싸움으로 하나가 된 소년 누누와 설인 윌럼프는 프렐요드 곳곳을 누비며 상상 속의 모험을 떠난다. 실종된 누누의 어머니를 찾아 나선 누누와 윌럼프. 이들이 누누의 어머니를 구한다면 영웅이 될 수 있을지도...',
    image: "assets/images/champ_12.jpeg",
    bigImage: "assets/images/champ_12-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 13,
    title: "니달리",
    subTitle: "야성의 사냥꾼",
    line: '"야생을 두려워하게 만들어주지."',
    price: 234,
    size: 12,
    description:
        '깊은 정글에서 자라난 니달리는 자신의 형태를 흉포한 쿠거로 자유자재로 변화시킬 수 있는 추적의 달인이다. 완전한 여인도, 완전한 야수도 아닌 니달리는 신중하게 배치한 덫과 재빠른 창 투척으로 모든 침입자들로부터 자신의 영역을 맹렬하게 지켜낸다. 니달리는 사냥감을 움직이지 못하게 공격한 후 쿠거 형태로 변해 덮친다. 니달리에게서 운 좋게 살아남은 몇 사람은 야생에 사는 여자가 있다는 이야기를 퍼뜨렸다. 본능이 극도로 예리하고, 발톱은 그보다도 더 예리하다고...',
    image: "assets/images/champ_13.jpeg",
    bigImage: "assets/images/champ_13-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 14,
    title: "니코",
    subTitle: "알쏭달쏭 카멜레온",
    line: '"니코? 정말 멋진 선택이야!"',
    price: 234,
    size: 12,
    description:
        '오래전 사라진 바스타야의 부족 출신인 니코는 다른 존재의 모습을 빌리거나 감정을 흡수해 어떤 무리에나 동화될 수 있어 적과 아군을 쉽게 가릴 수 있다. 그녀가 어디에 있는지 누구의 모습을 하고 있는지는 알 수 없다. 하지만 그녀를 해치려는 자는 그녀의 본 모습과 해방된 원시 영혼 마법의 진정한 힘을 마주하게 될 것이다.',
    image: "assets/images/champ_14.jpeg",
    bigImage: "assets/images/champ_14-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 15,
    title: "닐라",
    subTitle: "해방된 기쁨",
    line: '"기쁨이, 영원토록 함께하리라!"',
    price: 234,
    size: 12,
    description:
        '멀리 떨어진 땅에서 온 고행의 전사, 닐라는 세계에서 가장 위협적이고 거대한 상대를 찾아 도전하고 파괴한다. 오랫동안 갇혀 있던 기쁨의 악마를 만나 힘을 얻은 닐라에게 멈추지 않는 기쁨 외에 다른 감정은 없다. 자신의 막강한 힘을 위한 사소한 대가인 셈이다. 악마의 물을 막강한 힘을 지닌 칼날로 바꾼 닐라는 오래전에 잊힌 고대의 위협에 맞서 싸운다.',
    image: "assets/images/champ_15.jpeg",
    bigImage: "assets/images/champ_15-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 16,
    title: "다리우스",
    subTitle: "녹서스의 실력자",
    line: '"오직 나만이 승리로 이끌 수 있다."',
    price: 234,
    size: 12,
    description:
        '녹서스 그 자체를 상징하는 인물로 다리우스만큼 어울리는 사람도 없을 것이다. 실전에서 단련된 지도자이자 녹서스 내에서조차도 두려움의 대상이니까. 다리우스는 미천한 집안에서 태어났으나 녹서스 제국의 적들을 파죽지세로 베어넘기면서 트리파르 군단 사령관이라는 지금의 자리와 권력을 획득했다. 문제는 그 적들 다수가 녹서스 인이었다는 사실이다. 다리우스는 자신의 명분이 정당하다는 것을 한 번도 의심한 적이 없으며, 도끼를 치켜들 때에도 망설임이 없다. 그러니 다리우스에게 맞서는 자는 자비를 바랄 수 없다.',
    image: "assets/images/champ_16.jpeg",
    bigImage: "assets/images/champ_16-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 17,
    title: "다이애나",
    subTitle: "차가운 달의 분노",
    line: '"새로운 달이 떠오르고 있다."',
    price: 234,
    size: 12,
    description:
        '겨울밤 설원처럼 은은하게 빛나는 갑옷과 초승달 검으로 무장한 다이애나는 은빛 달의 화신 그 자체다. 그녀는 드높은 타곤 산 꼭대기에 떠오른 천체들의 기운을 온몸으로 받아들였다. 그러나 인간을 초월한 그녀의 힘이 무엇을 위한 것인지는 아직까지 분명하지 않다. 다이애나는 이 세상에서 자신에게 부여된 사명이 무엇인지 알아내려 애쓰고 있다.',
    image: "assets/images/champ_17.jpeg",
    bigImage: "assets/images/champ_17-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 18,
    title: "드레이븐",
    subTitle: "화려한 처형자",
    line: '"드레이븐의 리그에 오신 걸 환영한다."',
    price: 234,
    size: 12,
    description:
        '녹서스에서는 경기장에서 피를 흘리며 싸우고 힘을 겨루는 전사들이 있다. 검투사로 알려진 이들 중 드레이븐만큼 많은 환호를 받은 전사는 없었다. 전직 군인인 드레이븐은 회전 도끼가 뿜어내는 피안개는 물론이고, 자신의 극적이고 화려한 기술에 관중들이 환호한다는 것을 알아차렸다. 드레이븐은 요란하고도 완벽한 구경거리를 만들어내는 자신의 기술에 도취되어, 드레이븐이라는 이름을 녹서스 제국에 길이 남기기 위해 누구든 쓰러뜨리겠다고 다짐했다.',
    image: "assets/images/champ_18.jpeg",
    bigImage: "assets/images/champ_18-1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
