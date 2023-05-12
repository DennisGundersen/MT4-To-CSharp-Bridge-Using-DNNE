//+------------------------------------------------------------------+
//|                                                     DNNETest.mq4 |
//|                                Copyright 2023, Dennis Gundersen. |
//|          https://github.com/DennisGundersen/MT4_To_CSharp_Bridge |
//+------------------------------------------------------------------+

#property copyright "Copyright 2023, Dennis Gundersen AS"
#property link      "https://github.com/DennisGundersen/MT4_To_CSharp_Bridge"
#property version   "1.03"
#property strict

// Load managed dll from /Libraries/
// Additional dlls must be placed in instances installation folder
// Remember x86 only!
#import "MT4_To_CSharp_BridgeNE.dll"
   //by value
   int GimmeAnInt(int a);
   int GetIntSum(int a, int b);
   int GetSum(int a, double b);
   int GetSumDoubles(double a, double b);
   
   //by reference
   
   int GimmeAnIntRefDummy(int &a);
   int GimmeAnIntRef(int &a);
   int GetIntSumRef(int &a, int &b);
   int GetSumRef(int &a, double &b);
   int GetSumDoublesRef(double &a, double &b);
   
   //bool
   bool GetNot(bool a);
   
   //int GetAnswerByValue(int a, double b, bool c);
   //int GetAnswerByValueEx(int a, double b, bool c, string d);
   //void GetAnswerByReference(int &a, double &b, bool &c, string &d);
   //string GetAnswerByJSONObject(int a, double b, bool c, string d);
#import

int myInt =  2;
int myInt2 = 4;
double myDouble = 2.5000;
double myDouble2 = 3.600;
bool myBool = true;
bool myBool2 = false;
string myString = "My string";

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

int OnInit()
{

   int result;
   //By Value
   result = GimmeAnInt(myInt);
   PrintFormat("GimmeAnInt(%d) returned: %d", myInt, result);
   
   PrintFormat("Starting GetIntSum(%d, %d)", myInt, myInt2);
   result = GetIntSum(myInt, myInt2);
   PrintFormat("GetIntSum(%d, %d) returned: ", myInt, myInt2, result);
   
   PrintFormat("Starting GetSum(%d, %f)", myInt, myDouble);
   result = GetSum(myInt, myDouble);
   PrintFormat("GetSum(%d, %f) returned: %d", myInt, myDouble, result);
   
   PrintFormat("Starting GetSumDoubles(%f, %f)", myDouble, myDouble2);
   result = GetSumDoubles(myDouble2, myDouble);
   PrintFormat("GetSumDoubles(%f, %f) returned: %d", myDouble, myDouble2, result);
   
   
   //By reference
   result = GimmeAnIntRefDummy(myInt);
   PrintFormat("GimmeAnIntRefDummy(%d) returned: %d", myInt, result);
   
   PrintFormat("Starting GimmeAnIntRef(%d)", myInt);
   result = GimmeAnIntRef(myInt);
   PrintFormat("GimmeAnIntRef(%d) returned: %d", myInt, result);
   
   PrintFormat("Starting GetIntSumRef(%d, %d)", myInt, myInt2);
   result = GetIntSum(myInt, myInt2);
   PrintFormat("GetIntSumRef(%d, %d) returned: %d", myInt, myInt2, result);
   
   PrintFormat("Starting GetSumRef(%d, %f)", myInt, myDouble);
   result = GetSumRef(myInt, myDouble);
   PrintFormat("GetSumRef(%d, %f) returned: %d", myInt, myDouble, result);
   
   PrintFormat("Starting GetSumDoublesRef(%f, %f)", myDouble, myDouble2);
   result = GetSumDoublesRef(myDouble, myDouble2);
   PrintFormat("GetSumDoublesRef(%f, %f) returned: %d", myDouble, myDouble2, result);
   
   bool bresult;
   PrintFormat("Starting GetNot(%d)", myBool);
   bresult = GetNot(myBool);
   PrintFormat("GetNot(%d) returned: %d", myBool, bresult);
   PrintFormat("Starting GetNot(%d)", myBool2);
   bresult = GetNot(myBool2);
   PrintFormat("GetNot(%d) returned: %d", myBool2, bresult);
   
   //result = GetAnswerByValue(myInt, myDouble, myBool);
   //Print("GetAnswerByValue(" + IntegerToString(myInt) + ", " + DoubleToString(myDouble, 4) + ", " + IntegerToString(myBool) + ") returned: " + IntegerToString(result));
   
   //Print("Starting GetAnserByValue");
   //result = GetAnswerByValue(myInt, myDouble, myBool);
   //Print("GetAnswerByValue(" + IntegerToString(myInt) + ", " + DoubleToString(myDouble, 4) + ", " + IntegerToString(myBool) + ") returned: " + IntegerToString(result));
   
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