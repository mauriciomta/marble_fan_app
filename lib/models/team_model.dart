import 'package:flutter/cupertino.dart';

class TeamModel {
  final String name;
  final String logo;
  final bool isCurrentlyActive;
  final bool hasWonPrizes;

  TeamModel({this.name, this.logo, this.isCurrentlyActive, this.hasWonPrizes});

  AssetImage assetImage() {
    String logo = this.logo ?? 'JMR';
    return AssetImage('images/logos/' + logo + '.png');
  }
}

List<TeamModel> teams = [
  TeamModel(
    name: 'Balls of Chaos',
    logo: 'BOC',
    isCurrentlyActive: true,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Bumblebees',
    logo: 'BB',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),

  TeamModel(
    name: 'Black Jacks',
    logo: null,
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Chocolatiers',
    logo: 'CH',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Crazy Cat\'s Eyes',
    logo: 'CCE',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Gliding Glaciers',
    logo: null,
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Golden Orbs',
    logo: null,
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Green Ducks',
    logo: 'GD',
    isCurrentlyActive: true,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Hazers',
    logo: 'HZ',
    isCurrentlyActive: true,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Hornets',
    logo: 'HOR',
    isCurrentlyActive: true,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Indigo Stars',
    logo: 'ING',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Jawbreakers',
    logo: 'JAW',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Jungle Jumpers',
    logo: 'JJ',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Kobalts',
    logo: 'KOB',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Limers',
    logo: 'LIM',
    isCurrentlyActive: true,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Mellow Yellow',
    logo: 'MY',
    isCurrentlyActive: true,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Midnight Wisps',
    logo: 'MW',
    isCurrentlyActive: true,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Minty Maniacs',
    logo: 'MM',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'O\'rangers',
    logo: 'OR',
    isCurrentlyActive: true,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Oceanics',
    logo: 'OC',
    isCurrentlyActive: false,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Pinkies',
    logo: 'PIN',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Quicksilvers',
    logo: null,
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Raspberry Racers',
    logo: 'RAS',
    isCurrentlyActive: true,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Rojo Rollers',
    logo: 'ROR',
    isCurrentlyActive: true,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Savage Speeders',
    logo: 'SAV',
    isCurrentlyActive: true,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Shining Swarm',
    logo: 'SHI',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Snowballs',
    logo: 'SNO',
    isCurrentlyActive: true,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Team Galactic',
    logo: 'TG',
    isCurrentlyActive: true,
    hasWonPrizes: true,
  ),
  TeamModel(
    name: 'Team Momo',
    logo: 'MOM',
    isCurrentlyActive: true,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Team Plasma',
    logo: null,
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Team Primary',
    logo: 'PRI',
    isCurrentlyActive: true,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Thunderbolts',
    logo: 'TB',
    isCurrentlyActive: true,
    hasWonPrizes: false,
  ),
  TeamModel(
    name: 'Turtle Sliders',
    logo: 'TTS',
    isCurrentlyActive: false,
    hasWonPrizes: false,
  ),
];