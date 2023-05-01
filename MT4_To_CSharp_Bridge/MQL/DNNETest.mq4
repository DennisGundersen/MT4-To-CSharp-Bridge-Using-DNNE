//+------------------------------------------------------------------+
//|                                                     DNNETest.mq4 |
//|                                Copyright 2023, Dennis Gundersen. |
//|          https://github.com/DennisGundersen/MT4_To_CSharp_Bridge |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Dennis Gundersen AS"
#property link      "https://github.com/DennisGundersen/MT4_To_CSharp_Bridge"
#property version   "1.00"
#property strict

// Load managed dll from /Libraries/
#import "MT4_To_CSharp_BridgeNE.dll"
   int GimmeAnInt(int a);
#import

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

int OnInit()
  {
   int value =  2;
   int result = GimmeAnInt(value);

   Print("GimmeAnInt(" + IntegerToString(value) + ") returned: " + IntegerToString(result));

   return(INIT_SUCCEEDED);
  }
