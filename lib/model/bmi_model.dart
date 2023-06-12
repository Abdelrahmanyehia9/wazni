import 'package:waznii/constants.dart';

class BmiModel{
   static bool?  isMale ;
   static double? tall ;
  static int? age ;
  static double? weight ;

static double? bmi  ;

static String? statues ;

static String gender(){
  if (isMale== true){
    return "male" ;
  }else{
    return " female" ;
  }
}
static String ImageBMI(){
  if (isMale == true){
    if(bmi! < 18.4){
      statues = "under weight";
return ImageConstants.underm ;

    }
    else if(24>bmi!&& bmi! > 18.4){
      statues = "normal" ;
      return ImageConstants.normalm;
    }
    else if(24<bmi! && bmi! < 30){
      statues = "over weight";
      return ImageConstants.overm;
    }
    else if (30 <bmi! && bmi! < 35){
      statues = "obese" ;
      return ImageConstants.obesem;
    }
    else{statues = "risky Weight" ;
      return ImageConstants.obesem2;
    }


  }
  else{
    if(bmi! < 18.4){
      statues = "under weight";
      return ImageConstants.underm ;


    }
    else if(24>bmi!&& bmi! > 18.4) {
      statues = "normal" ;
      return ImageConstants.normalf;
    }
    else if(24<bmi! && bmi! < 30){
      statues = " over weight" ;
      return ImageConstants.overf;
    }
    else if (30 <bmi! && bmi! < 35){
      statues = "obese" ;
      return ImageConstants.obesef;
    }
    else{
      statues = " risky weight" ;
      return ImageConstants.obesef2;
    }


  }
}
   static String statueBMI(){

       if(bmi! < 18.4){
         return "under weight";

       }
       else if(24>bmi!&& bmi! > 18.4){
         return "normal" ;
       }
       else if(24<bmi! && bmi! < 30){
         return "over weight";
       }
       else if (30 <bmi! && bmi! < 35){
         return "obese" ;
       }
       else{
         return " risky Weight" ;
       }



     }
   static String discrepBMI(){

     if(bmi! < 18.4){
       return "you are underweight for your height \n its important to aim to keep with in your healthy weight\n range. being in the healthy weight range\n will improve your body's ability to fight off\n infection or illness";

     }
     else if(24>bmi!&& bmi! > 18.4){
       return '''
       you are a healthy weight for you height \n but we recommend that you check 
       your waist measurement \n 
       aim to keep within the healthy weight range by enjoying a  healthy , well-balanced diet and \n
       exercising regularly . Most adults should get at\n 
       least 30 minutes of moderate-intensity physical \n 
       activity on most , if not all days .
                 ''' ;
     }
     else if(24<bmi! && bmi! < 30){
       return '''being overweight increases your risk of \n 
       developing coronary heart disease , as well as\n 
       other health conditions , keeping to a healthy \n 
       weight will help  you control your blood pressure\n
       and cholesterol levels . To physically achive everyday \n 
       and enjoy a healthy , well-balanced diet  
              ''';
     }
     else if (30 <bmi! && bmi! < 35){
       return  '''being overweight increases your risk of \n 
       developing coronary heart disease , as well as\n 
       other health conditions , keeping to a healthy \n 
       weight will help  you control your blood pressure\n
       and cholesterol levels . To physically achive everyday \n 
       and enjoy a healthy , well-balanced diet  
              ''' ;
     }
     else{
       return '''being overweight increases your risk of \n 
       developing coronary heart disease , as well as\n 
       other health conditions , keeping to a healthy \n 
       weight will help  you control your blood pressure\n
       and cholesterol levels . To physically achive everyday \n 
       and enjoy a healthy , well-balanced diet  
              ''' ;
     }



   }

}