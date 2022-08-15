import 'package:flutter/material.dart';
import 'package:flutter_app/apresentation/UI/category_screen/components/icon_list.dart';
import 'package:flutter_app/domains/entities/product_entity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../domains/entities/category_entity.dart';
import '../../domains/entities/lugar_entitty.dart';

List<IconList> listIcon = [
  IconList(
    icon: FontAwesomeIcons.cartShopping,
    name: "Supermercado",
  ),
  IconList(
    icon: FontAwesomeIcons.dumbbell,
    name: "Academia",
  ),
  IconList(
    icon: FontAwesomeIcons.houseMedical,
    name: "Farmácias",
  ),
  IconList(
    icon: FontAwesomeIcons.shirt,
    name: "Vestimenta",
  ),
  IconList(
    icon: FontAwesomeIcons.dumbbell,
    name: "Construção",
  ),
  IconList(
    icon: FontAwesomeIcons.gasPump,
    name: "Combustível",
  ),
  IconList(
    icon: Icons.car_rental,
    name: "Auto&Peças",
  ),
  IconList(
    icon: Icons.nat,
    name: "Clínicas",
  ),
  IconList(
    icon: Icons.nat,
    name: "Imobiliarias",
  ),
  IconList(
    icon: FontAwesomeIcons.beerMugEmpty,
    name: "Distribuidoras",
  ),
  IconList(
    icon: Icons.fastfood,
    name: "Alimentação",
  ),
  IconList(
    icon: Icons.hotel,
    name: "Hotéis",
  ),
  IconList(
    icon: Icons.nat,
    name: "Barbearias",
  ),
  IconList(
    icon: Icons.nat,
    name: "Emprestimos",
  ),
  IconList(
    icon: Icons.nat,
    name: "Eletrônicos",
  ),
  IconList(
    icon: Icons.nat,
    name: "Barbearias",
  ),
  IconList(
    icon: Icons.nat,
    name: "Emprestimos",
  ),
  IconList(
    icon: Icons.nat,
    name: "Eletrônicos",
  ),
];

List<String> listCategories = [
  "Destaques",
  "Supermercados",
  "Academias",
  "Farmácias",
  "Vestimenta",
  "Construção",
  "Combustível",
  "Auto&Peças",
  "Clinicas",
  "Imobiliarias",
  "Distribuidoras",
  "Alimentação",
  "Hotéis",
  "Barbearias",
  "Emprestimos",
  "Eletrônicos",
  "Barbearias",
  "Emprestimos",
];

List<LugarEntity> listaDestaques = [
  LugarEntity(
    name: 'Distribuidora WS',
    urlPlacePhoto:
        'https://www.crushpixel.com/static18/preview2/stock-photo-ws-initial-letter-gold-calligraphic-feminine-floral-hand-drawn-heraldic-monogram-antique-vintage-style-luxury-logo-design-premium-vector-3036035.jpg',
    urlProduct:
        'https://i.pinimg.com/originals/94/42/6a/94426aad8e2d5a873e7105b0670ceacb.png',
    categoryEntity: CategoryEntity('Destaques'),
  ),
  LugarEntity(
    name: 'Clinica Sorriso',
    urlPlacePhoto:
        'https://img.freepik.com/vetores-gratis/template-logo-clinica-de-saude_1061-71.jpg',
    urlProduct: 'https://aps.net.br/wp-content/uploads/2020/12/1A-1A.jpg',
    categoryEntity: CategoryEntity('Destaques'),
  ),
  LugarEntity(
    name: 'InfiHealth',
    urlPlacePhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7p7Zfd1kajHJ_2dczXP7rYwn7NrCCV1KLc6PoMxCuD432FWuTvYoBwJAM32PfO4otDYE&usqp=CAU',
    urlProduct:
        'https://img.elo7.com.br/product/zoom/2F7FF0B/divulgacao-de-promocoes-de-farmacia-promocao.jpg',
    categoryEntity: CategoryEntity('Destaques'),
  ),
  LugarEntity(
    name: 'Academia Trinity',
    urlPlacePhoto:
        'https://blog.agenciadosite.com.br/wp-content/uploads/2017/02/logo-para-academia-2-e1486726251950.jpg',
    urlProduct:
        'https://img.freepik.com/psd-gratuitas/modelo-de-banner-horizontal-de-fitness-de-academia_23-2149084698.jpg?w=2000',
    categoryEntity: CategoryEntity('Destaques'),
  ),
  LugarEntity(
    name: 'Supermercado Gavião',
    urlPlacePhoto:
        'https://media-exp1.licdn.com/dms/image/C560BAQEWXgdDtMtWvg/company-logo_200_200/0/1617296195939?e=2147483647&v=beta&t=JrGuk_AntqZNs-6CaUC15ZtVwi3tLMkvHa3xk-Drz5I',
    urlProduct:
        'https://i.pinimg.com/originals/2d/c8/5a/2dc85afd8587ecf036f612871f4f8d4a.jpg',
    categoryEntity: CategoryEntity('Supermercados'),
  ),
  LugarEntity(
    name: 'Supermercado Atacarejo',
    urlPlacePhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSKJvvYq_78eByuaOdLzkFaxiU14ZFX7w-KO7MKDInSVkQi--jeslMOU_SRMSIAcxq5yk&usqp=CAU',
    urlProduct:
        'https://i.pinimg.com/originals/2d/c8/5a/2dc85afd8587ecf036f612871f4f8d4a.jpg',
    categoryEntity: CategoryEntity('Supermercados'),
  ),
  LugarEntity(
    name: 'Supermercado São Jorge',
    urlPlacePhoto:
        'https://i.pinimg.com/280x280_RS/fd/22/5a/fd225a9b934fc73a5a11df65a5701a76.jpg',
    urlProduct:
        'https://i.pinimg.com/originals/2d/c8/5a/2dc85afd8587ecf036f612871f4f8d4a.jpg',
    categoryEntity: CategoryEntity('Supermercados'),
  ),
  LugarEntity(
    name: 'Supermercado Novo Templo',
    urlPlacePhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv6RmaC4YOpUrYn3jfT6Vf3eh8Pytk_jG_sQ&usqp=CAU',
    urlProduct:
        'https://i.pinimg.com/originals/2d/c8/5a/2dc85afd8587ecf036f612871f4f8d4a.jpg',
    categoryEntity: CategoryEntity('Supermercados'),
  ),
  LugarEntity(
    name: 'Distribuidora WS',
    urlPlacePhoto:
        'https://www.crushpixel.com/static18/preview2/stock-photo-ws-initial-letter-gold-calligraphic-feminine-floral-hand-drawn-heraldic-monogram-antique-vintage-style-luxury-logo-design-premium-vector-3036035.jpg',
    urlProduct: 'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
    categoryEntity: CategoryEntity('Distribuidoras'),
  ),
  LugarEntity(
      name: 'Clinica Sorriso',
      urlPlacePhoto:
          'https://img.freepik.com/vetores-gratis/template-logo-clinica-de-saude_1061-71.jpg',
      urlProduct: 'https://aps.net.br/wp-content/uploads/2020/12/1A-1A.jpg',
      categoryEntity: CategoryEntity('Clínicas')),
  LugarEntity(
      name: 'InfiHealth',
      urlPlacePhoto:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7p7Zfd1kajHJ_2dczXP7rYwn7NrCCV1KLc6PoMxCuD432FWuTvYoBwJAM32PfO4otDYE&usqp=CAU',
      urlProduct:
          'https://img.elo7.com.br/product/zoom/2F7FF0B/divulgacao-de-promocoes-de-farmacia-promocao.jpg',
      categoryEntity: CategoryEntity('Clínicas')),
  LugarEntity(
    name: 'Academia Trinity',
    urlPlacePhoto:
        'https://blog.agenciadosite.com.br/wp-content/uploads/2017/02/logo-para-academia-2-e1486726251950.jpg',
    urlProduct:
        'https://img.freepik.com/psd-gratuitas/modelo-de-banner-horizontal-de-fitness-de-academia_23-2149084698.jpg?w=2000',
    categoryEntity: CategoryEntity('Academias'),
  ),
  LugarEntity(
    name: 'Academia TopFit',
    urlPlacePhoto:
        'https://i.pinimg.com/736x/ef/65/b0/ef65b0842a773a918309508322c82997.jpg',
    urlProduct:
        'https://img.freepik.com/psd-premium/midia-social-de-academia-e-fitness-postar-banner-ou-modelo-de-folheto-quadrado_180294-101.jpg?w=2000',
    categoryEntity: CategoryEntity('Academias'),
  ),
];

List<LugarEntity> listaPrincipais = [
  LugarEntity(
      name: 'Distribuidora WS',
      urlPlacePhoto:
          'https://www.crushpixel.com/static18/preview2/stock-photo-ws-initial-letter-gold-calligraphic-feminine-floral-hand-drawn-heraldic-monogram-antique-vintage-style-luxury-logo-design-premium-vector-3036035.jpg',
      urlProduct:
          'https://i.pinimg.com/originals/94/42/6a/94426aad8e2d5a873e7105b0670ceacb.png',
      categoryEntity: CategoryEntity('Destaques'),
      productEntity: [
        ProductEntity(
            name: 'Caixa Corona',
            price: 15.53,
            photoUrl:
                'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
            description: ''),
        ProductEntity(
            name: 'Heineken',
            price: 4.69,
            photoUrl:
                'https://a-static.mlcdn.com.br/1500x1500/cerveja-heineken-premium-puro-malte-lager-pilsen-6-garrafas-long-neck-330ml/magazineluiza/225339400/37af16f4c3d96ca7c8a87453eb8a29a8.jpg',
            description: ''),
        ProductEntity(
            name: 'Cerveja Pilsen Schin',
            price: 2.69,
            photoUrl:
                'https://samsclub.vtexassets.com/arquivos/ids/164281/cervejapilsenschinlata350ml.jpg?v=637590369640770000',
            description: ''),
        ProductEntity(
            name: 'Caixa Corona',
            price: 15.53,
            photoUrl:
                'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
            description: '')
      ]),
  LugarEntity(
      name: 'Drogasil',
      urlPlacePhoto:
          'https://img.freepik.com/vetores-gratis/template-logo-clinica-de-saude_1061-71.jpg',
      urlProduct: 'https://aps.net.br/wp-content/uploads/2020/12/1A-1A.jpg',
      categoryEntity: CategoryEntity('Destaques'),
      productEntity: [
        ProductEntity(
            name: 'Whey',
            price: 15.53,
            photoUrl:
                'https://static.netshoes.com.br/produtos/whey-protein-nutri-refil-907-g-integralmedica/63/252-0948-963/252-0948-963_zoom1.jpg?ts=1587555154&ims=544x',
            description: ''),
        ProductEntity(
            name: 'Paracetamol',
            price: 2.53,
            photoUrl:
                'https://drogariaspacheco.vteximg.com.br/arquivos/ids/307694-1000-1000/paracetamol-750mg-generico-4-comprimidos-Drogarias-Pacheco-12327.jpg?v=636535910554800000',
            description: ''),
        ProductEntity(
            name: 'Cimegripe',
            price: 5.53,
            photoUrl:
                'https://farmaciaindiana.vteximg.com.br/arquivos/ids/214325-636-636/cimegripe-4.jpg?v=636911299708800000',
            description: ''),
        ProductEntity(
            name: 'Cimegripe',
            price: 5.53,
            photoUrl:
            'https://farmaciaindiana.vteximg.com.br/arquivos/ids/214325-636-636/cimegripe-4.jpg?v=636911299708800000',
            description: '')
      ]),
  LugarEntity(
      name: 'InfiHealth',
      urlPlacePhoto:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7p7Zfd1kajHJ_2dczXP7rYwn7NrCCV1KLc6PoMxCuD432FWuTvYoBwJAM32PfO4otDYE&usqp=CAU',
      urlProduct:
          'https://img.elo7.com.br/product/zoom/2F7FF0B/divulgacao-de-promocoes-de-farmacia-promocao.jpg',
      categoryEntity: CategoryEntity('Destaques'),
      productEntity: [
        ProductEntity(
            name: 'Caixa Corona',
            price: 15.53,
            photoUrl:
                'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
            description: '')
      ]),
  LugarEntity(
      name: 'Academia Trinity',
      urlPlacePhoto:
          'https://blog.agenciadosite.com.br/wp-content/uploads/2017/02/logo-para-academia-2-e1486726251950.jpg',
      urlProduct:
          'https://img.freepik.com/psd-gratuitas/modelo-de-banner-horizontal-de-fitness-de-academia_23-2149084698.jpg?w=2000',
      categoryEntity: CategoryEntity('Destaques'),
      productEntity: [
        ProductEntity(
            name: 'Caixa Corona',
            price: 15.53,
            photoUrl:
                'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
            description: '')
      ]),
  LugarEntity(
      name: 'Supermercado Gavião',
      urlPlacePhoto:
          'https://media-exp1.licdn.com/dms/image/C560BAQEWXgdDtMtWvg/company-logo_200_200/0/1617296195939?e=2147483647&v=beta&t=JrGuk_AntqZNs-6CaUC15ZtVwi3tLMkvHa3xk-Drz5I',
      urlProduct:
          'https://i.pinimg.com/originals/2d/c8/5a/2dc85afd8587ecf036f612871f4f8d4a.jpg',
      categoryEntity: CategoryEntity('Supermercados'),
      productEntity: [
        ProductEntity(
            name: 'Caixa Corona',
            price: 15.53,
            photoUrl:
                'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
            description: '')
      ]),
  LugarEntity(
      name: 'Supermercado Atacarejo',
      urlPlacePhoto:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSKJvvYq_78eByuaOdLzkFaxiU14ZFX7w-KO7MKDInSVkQi--jeslMOU_SRMSIAcxq5yk&usqp=CAU',
      urlProduct:
          'https://i.pinimg.com/originals/2d/c8/5a/2dc85afd8587ecf036f612871f4f8d4a.jpg',
      categoryEntity: CategoryEntity('Supermercados'),
      productEntity: [
        ProductEntity(
            name: 'Caixa Corona',
            price: 15.53,
            photoUrl:
                'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
            description: '')
      ]),
  LugarEntity(
      name: 'Supermercado São Jorge',
      urlPlacePhoto:
          'https://i.pinimg.com/280x280_RS/fd/22/5a/fd225a9b934fc73a5a11df65a5701a76.jpg',
      urlProduct:
          'https://i.pinimg.com/originals/2d/c8/5a/2dc85afd8587ecf036f612871f4f8d4a.jpg',
      categoryEntity: CategoryEntity('Supermercados'),
      productEntity: [
        ProductEntity(
            name: 'Caixa Corona',
            price: 15.53,
            photoUrl:
                'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
            description: '')
      ]),
  LugarEntity(
      name: 'Supermercado Novo Templo',
      urlPlacePhoto:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv6RmaC4YOpUrYn3jfT6Vf3eh8Pytk_jG_sQ&usqp=CAU',
      urlProduct:
          'https://i.pinimg.com/originals/2d/c8/5a/2dc85afd8587ecf036f612871f4f8d4a.jpg',
      categoryEntity: CategoryEntity('Supermercados'),
      productEntity: [
        ProductEntity(
            name: 'Caixa Corona',
            price: 15.53,
            photoUrl:
                'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
            description: '')
      ]),
  LugarEntity(
      name: 'Distribuidora WS',
      urlPlacePhoto:
          'https://www.crushpixel.com/static18/preview2/stock-photo-ws-initial-letter-gold-calligraphic-feminine-floral-hand-drawn-heraldic-monogram-antique-vintage-style-luxury-logo-design-premium-vector-3036035.jpg',
      urlProduct: 'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
      categoryEntity: CategoryEntity('Distribuidoras'),
      productEntity: [
        ProductEntity(
            name: 'Caixa Corona',
            price: 15.53,
            photoUrl:
                'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',
            description: '')
      ]),
  LugarEntity(
      name: 'Academia Trinity',
      urlPlacePhoto:
          'https://blog.agenciadosite.com.br/wp-content/uploads/2017/02/logo-para-academia-2-e1486726251950.jpg',
      urlProduct:
          'https://img.freepik.com/psd-gratuitas/modelo-de-banner-horizontal-de-fitness-de-academia_23-2149084698.jpg?w=2000',
      categoryEntity: CategoryEntity('Academias'),
      productEntity: [
        ProductEntity(
            name: 'Waxy Whey',
            price: 78.90,
            photoUrl:
                'https://m.media-amazon.com/images/I/61yChQ34W3L._AC_SX679_.jpg',
            description: '')
      ]),
  LugarEntity(
      name: 'Academia TopFit',
      urlPlacePhoto:
          'https://i.pinimg.com/736x/ef/65/b0/ef65b0842a773a918309508322c82997.jpg',
      urlProduct:
          'https://img.freepik.com/psd-premium/midia-social-de-academia-e-fitness-postar-banner-ou-modelo-de-folheto-quadrado_180294-101.jpg?w=2000',
      categoryEntity: CategoryEntity('Academias'),
      productEntity: [
        ProductEntity(
            name: 'Waxy Whey',
            price: 78.90,
            photoUrl:
                'https://m.media-amazon.com/images/I/61yChQ34W3L._AC_SX679_.jpg',
            description: '')
      ]),
];

List<LugarEntity> filterList = [];
