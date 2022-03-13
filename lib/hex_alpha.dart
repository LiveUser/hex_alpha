library hex_alpha;

import 'package:flutter/material.dart';
import 'package:number_system/number_system.dart';

Color hexAlpha(String? hex,[double alpha = 1]){
  //Null safety implemented
  hex = hex == null ? "#000000" : hex.toLowerCase();
  //Remove # from the hexadecimal value if exists
  if(hex.substring(0,1)=='#'){
    hex=hex.substring(1,hex.length);
  }else{
    //Stays the same
  }
  if(hex.length==6){
    //Continue, the hex is correct
  }else{
    throw('Hexadecimal color should be 6 characters long');
  }
  int _opacity(){
    if(alpha < 0 || alpha > 1){
      throw('Alpha value cannot be smaller than 0 or greater than 1');
    }else{
      //Calculate alpha value for argb function
      return (255 * alpha).round();
    }
  }
  return Color.fromARGB(_opacity(), hex.substring(0,2).hexToDEC(), hex.substring(2,4).hexToDEC(), hex.substring(4,6).hexToDEC());
}