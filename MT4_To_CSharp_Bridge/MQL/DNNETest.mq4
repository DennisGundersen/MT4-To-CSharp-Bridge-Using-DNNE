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
// Additional dlls must be placed in instances installation folder
// Remember x86 only!
#import "MT4_To_CSharp_BridgeNE.dll"
   int GimmeAnInt(int a);
   int GetAnswerByValue(int a, double b, bool c, string d);
   void GetAnswerByReference(int &a, double &b, bool &c, string &d);
   string GetAnswerByJSONObject(int a, double b, bool c, string d);
#import

int myInt =  2;
double myDouble = 1.5000;
bool myBool = false;
string myString = "My string";

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

int OnInit()
{

   int result = GimmeAnInt(myInt);

   Print("GimmeAnInt(" + IntegerToString(myInt) + ") returned: " + IntegerToString(result));

   return(INIT_SUCCEEDED);
}


//+------------------------------------------------------------------+
//| Tick received function                                           |
//+------------------------------------------------------------------+
void OnTick()
{
/*
   int result = GetAnswerByValue(myInt, myDouble, myBool, myString);
   Print("GetAnswerByValue(" + IntegerToString(myInt) + ", " + DoubleToString(myDouble, 4) + ", " + IntegerToString(myBool) + ", " + myString + ") returned: " + IntegerToString(result));
   
   GetAnswerByReference(myInt, myDouble, myBool, myString);
   Print("Calling GetAnswerByReference(" + IntegerToString(myInt) + ", " + DoubleToString(myDouble, 4) + ", " + IntegerToString(myBool) + ", " + myString + ")");
   Print("New values are " + "myInt = " + IntegerToString(myInt) + ", myDouble = " + DoubleToString(myDouble, 4) + ", myBool = " + IntegerToString(myBool) + ", myString = " + myString);
   
   string json = GetAnswerByJSONObject(myInt, myDouble, myBool, myString);
   Print("GetAnswerByJSONObject(" + IntegerToString(myInt) + ", " + DoubleToString(myDouble, 4) + ", " + IntegerToString(myBool) + ", " + myString + ") returned: " + json);
*/
}



//+------------------------------------------------------------------+
//| EA closing function call                                         |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
{

}