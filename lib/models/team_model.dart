import 'package:flutter/cupertino.dart';

class TeamModel {
  final String name;
  final String logo;

  TeamModel({this.name, this.logo});

  AssetImage assetImage() {
    String logo = this.logo ?? 'JMR';
    return AssetImage('images/logos/' + logo + '.png');
  }
}

List<TeamModel> teams = [
  TeamModel(
    name: 'Balls of Chaos',
    logo: 'BOC',
  ),
  TeamModel(
    name: 'Bumblebees',
    logo: 'BB',
  ),

  TeamModel(
    name: 'Black Jacks',
    logo: null,
  ),
  TeamModel(
    name: 'Chocolatiers',
    logo: 'CH',
  ),
  TeamModel(
    name: 'Crazy Cat\'s Eyes',
    logo: 'CCE',
  ),
  TeamModel(
    name: 'Gliding Glaciers',
    logo: null,
  ),
  TeamModel(
    name: 'Golden Orbs',
    logo: null,
  ),
  TeamModel(
    name: 'Green Ducks',
    logo: 'GD',
  ),
  TeamModel(
    name: 'Hazers',
    logo: 'HZ',
  ),
  TeamModel(
    name: 'Hornets',
    logo: 'HOR',
  ),
  TeamModel(
    name: 'Indigo Stars',
    logo: 'ING',
  ),
  TeamModel(
    name: 'Jawbreakers',
    logo: 'JAW',
  ),
  TeamModel(
    name: 'Jungle Jumpers',
    logo: 'JJ',
  ),
  TeamModel(
    name: 'Kobalts',
    logo: 'KOB',
  ),
  TeamModel(
    name: 'Limers',
    logo: 'LIM',
  ),
  TeamModel(
    name: 'Mellow Yellow',
    logo: 'MY',
  ),
  TeamModel(
    name: 'Midnight Wisps',
    logo: 'MW',
  ),
  TeamModel(
    name: 'Minty Maniacs',
    logo: 'MM',
  ),
  TeamModel(
    name: 'O\'rangers',
    logo: 'OR',
  ),
  TeamModel(
    name: 'Oceanics',
    logo: 'OC',
  ),
  TeamModel(
    name: 'Pinkies',
    logo: 'PIN',
  ),
  TeamModel(
    name: 'Quicksilvers',
    logo: null,
  ),
  TeamModel(
    name: 'Raspberry Racers',
    logo: 'RAS',
  ),
  TeamModel(
    name: 'Rojo Rollers',
    logo: 'ROR',
  ),
  TeamModel(
    name: 'Savage Speeders',
    logo: 'SAV',
  ),
  TeamModel(
    name: 'Shining Swarm',
    logo: 'SHI',
  ),
  TeamModel(
    name: 'Snowballs',
    logo: 'SNO',
  ),
  TeamModel(
    name: 'Team Galactic',
    logo: 'TG',
  ),
  TeamModel(
    name: 'Team Momo',
    logo: 'MOM',
  ),
  TeamModel(
    name: 'Team Plasma',
    logo: null,
  ),
  TeamModel(
    name: 'Team Primary',
    logo: 'PRI',
  ),
  TeamModel(
    name: 'Thunderbolts',
    logo: 'TB',
  ),
  TeamModel(
    name: 'Turtle Sliders',
    logo: 'TTS',
  ),
];