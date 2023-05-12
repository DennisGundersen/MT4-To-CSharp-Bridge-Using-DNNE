# Metatrader 4 to C# programming bridge using DNNE
A prototype / tutorial for connecting unmanaged code in MT4 (MQL) to managed code (C#) in modern .NET (6+) using DNNE.

## Goal
The goal of this project is to create a simple reuseable C# dll project that can be loaded into MQL in order to extend MT4 to take advantage of any modern .NET solution (.NET 6+). No actual trading strategies will be included in this project, just a prototype showing how to do the "plumbing" in order to enable your own ideas using C# and modern .NET. 
Note: Passing strings from MQL to C# is supported, but from C# to MQL is not supported.

## Usage
1. Download or clone the repository into Visual Studio.
2. Restore/update DNNE from NuGet.
3. Compile the project and publish it to a folder.
![Publishing](https://ams03pap005files.storage.live.com/y4mJuVmGk_CGCz6eFiYhMpwkUsHOMBPkhqZin4rgQKVhQFe20t-WLgJG2fQmilf3_OO_sGSxo0LyTJfjFlU5ai2mVHqBI2lZTDeItfVceUBwakyT_Gkf1TGgJ8EaRxqUYIuvdorOBdY92u2sur1mWa-Zco_pkyrzf2fZF8xgEaqvpqbXjrVlWcEKd9hT4fTQhHc?width=1024&height=926&cropmode=none "Publishing")
![Settings](https://ams03pap005files.storage.live.com/y4mu97bnrfrQnssA_oMNLQFWEZUf7_e5Dsws1oA9VT4OepXDvwkntO8ZKpgMVyy0G6hM5QkVMDJuEVmRwXkFo14Vir8Mz53h9ufzqdEkqw73V1cLmxR_QOHGeB-pM2vxs2m8CKr85MnvnuSBVnFAvRCuq5WjOtpms4Dy69sSOYfY-GCYtd1fMFITgZG-fiO3Uhy?width=825&height=750&cropmode=none "Settings")
4. Copy ProjectName.dll, ProjectNameNE.dll and ProjectName.runtimeconfig.json to the /MQL/Libraries folder (see section on MT4 below for details).
5. Copy any extra dlls (other projects or NuGet packages) to the MT4 instance's installation folder (C:\Program Files (x86)\MT4 DEV).
6. Copy the MQL file to /MQL/Experts.
7. Open the MQL Editor and compile the EA.
8. Add EA to chart.

## About MT4
MetaTrader 4 is an electronic trading platform for foreign exchange traders by MetaQuotes. It has a simple built in programming IDE (MetaQuotes Language Editor, press F4 inside MT4) with is own language (MQL) which has a C++ like syntax. MQL allows traders to automate actions and strategies as well as connecting to external tools such as MathLab, R or AI. MT4 itself is available for free from any number of Forex brokers, just open a demo account and download the client.

### Hints about programming in MT4
* You can program visual clues as "Indicators", or automate trading using "Expert Advisors" (EA). This project is an EA.
* To allow autotrading and usage of external code in MT4, go to Tools, Options, Expert Advisors and enable "Allow automated trading", "Allow DLL imports". 
![Settings](https://ams03pap005files.storage.live.com/y4mnu7CRqsFHH6tXo71CmutbA2Doh-NPsgsiZiqoMZsJQylhljHs4L8W-nvHoQ7GVa0GST-hQKmJpIE4NLs7IGgv9M5WIi90jOqUsclO9bGwsS8YDG4q__D2rwk7rsMIR9x88gdpqPzeVoJ01c96z9pPJgcpOxSkosnvzYE1LE_C1FtUj7Tp2uWFCP4R82mHaVm?width=861&height=557&cropmode=none "Settings")
* If calling web apis from MQL, check "Allow WebRequests for listed URL" (+ the used URLs).
* MT4 only accepts "x86" runtime compilations (so no "AnyCPU")
* An external file such as your C# library must be placed in the MT4 instance's "Data Folder"/MQL4/Libraries/ folder, while any additional files (external projects, NuGet packages etc.) must be placed in the MT4 instance's installation folder to be found.
* The included MQL sample "DNNETest.mq4" is an EA and must be placed in the "Data Folder"/MQL4/Experts/ folder and compiled there.
![Editor](https://ams03pap005files.storage.live.com/y4mg0FwvolwWXHwB75LbvzV1SQaT62gKjETpWqwceAuJWkI7pfgLHBfN0mOkI_JgtHsuinr1_BZU8VHuvF_B-3axd9PrRoWM2AmL0Mmk_4KFpwt9ysqtamyW0XMH5q9pfkeuaZ50foRnZDFWMHOMU93HeP0MxYppc0LHSaYXnB76_3qMNCdkt0pJSbKUzcWNqiW?width=1320&height=838&cropmode=none "Editor")
* Your compiled code can now be run by dragging the file from the Navigator onto the active trading window.
![MT4](https://ams03pap005files.storage.live.com/y4miJ2U6SPMouneltHx7aO1Zyyxsabz6z6IiG-QolntA_H-cwvTqD02wKm38w_ieZ7rVFoN_4IHaY-sWK2P1z9NOgZjYPzcsnH-PQC12JAxIMoHOIHuMJnGAVu9GSiwmtAHIwgpH4VdM7yvZZIXpnqmjNOPDrgwke0OZZE2tdbKcbsRbZpA5bp1tLipU0uLmMK4?width=1024&height=665&cropmode=none "MT4")
* MQL uses the "Expert" window for logging, rather than the normal "Journal" window.
* MQL strings are unicode.
* MQL dates uses Unix time (1/1/1970).

## About DNNE
Dot Net Native Exports (DNNE) is an open source project being developed by Aaron Robinson (a "product owner" of .NET InterOp at Microsoft). 
Source code is available at https://github.com/AaronRobinsonMSFT/DNNE, and it's installable from NuGet.
* Note that DNNE must be set to "win-x86" in .csproj, along with some other properties referred to as DNNE.props in the guide.
* Due to DNNE using compiler settings, the project must be published to a folder, don't just take the files from the /bin directory.
* With current settings, your code in ProjectyName.dll is executed by DNNE in ProjectNameNE.dll (as an adapter) while .NET is setup in ProjectName.runtimeconfig.json. To merge files, see DNNE guide.
* Correct .NET Runtime (release version and x86 version) must be installed on the MT4 instance' machine.
