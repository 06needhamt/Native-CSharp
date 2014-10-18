
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.33440
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Core
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern Microsoft.CSharp
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly CSharpToNative
{
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0E 43 53 68 61 72 70 54 6F 4E 61 74 69 76   // ...CSharpToNativ
                                                                                                65 00 00 )                                        // e..
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 35 01 00 54   // ,Version=v4.5..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 12 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 2E 35 )                      // ework 4.5
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0E 43 53 68 61 72 70 54 6F 4E 61 74 69 76   // ...CSharpToNativ
                                                                                              65 00 00 )                                        // e..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 03 00 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 31 34 00 00 )                            //  2014..
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 65 65 30 65 61 39 35 37 2D 39 30 34 32   // ..$ee0ea957-9042
                                                                                                  2D 34 66 34 36 2D 62 39 64 39 2D 30 35 39 32 32   // -4f46-b9d9-05922
                                                                                                  30 31 65 38 65 33 63 00 00 )                      // 01e8e3c..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module CSharpToNative.exe
// MVID: {DAC53833-EE23-4C79-8F36-21D47F5B88DD}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x00420000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit CSharpToNative.Branch`2<T1,T2>
       extends [mscorlib]System.Object
{
  .field public string name
  .field public valuetype CSharpToNative.EnumTypes 'type'
  .field public valuetype CSharpToNative.EnumAccessModifiers protectionlevel
  .field public valuetype CSharpToNative.EnumOperator operation
  .field public object Value
  .field public class CSharpToNative.Branch`2<!T1,!T2> parent
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       54 (0x36)
    .maxstack  1
    .locals init ([0] class [mscorlib]System.InvalidOperationException ex)
    .line 26,26 : 13,28 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\Branch.cs'
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    .line 30,30 : 21,98 ''
//000030:         }
    .try
    {
      IL_0006:  ldstr      "Cannot Create a branch without tokens"
      IL_000b:  newobj     instance void [mscorlib]System.InvalidOperationException::.ctor(string)
      IL_0010:  throw

      .line 32,32 : 17,53 ''
//000031:     }
//000032: }
    }  // end .try
    catch [mscorlib]System.InvalidOperationException 
    {
      IL_0011:  stloc.0
      .line 34,34 : 21,68 ''
      IL_0012:  ldc.i4.4
      IL_0013:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
      .line 35,35 : 21,51 ''
      IL_0018:  ldloc.0
      IL_0019:  callvirt   instance string [mscorlib]System.Exception::get_Message()
      IL_001e:  call       void [mscorlib]System.Console::WriteLine(string)
      .line 36,36 : 21,54 ''
      IL_0023:  ldloc.0
      IL_0024:  callvirt   instance string [mscorlib]System.Exception::get_StackTrace()
      IL_0029:  call       void [mscorlib]System.Console::WriteLine(string)
      .line 37,37 : 21,42 ''
      IL_002e:  call       void [mscorlib]System.Console::ResetColor()
      .line 16707566,16707566 : 0,0 ''
      IL_0033:  leave.s    IL_0035

      .line 39,39 : 13,14 ''
    }  // end handler
    IL_0035:  ret
  } // end of method Branch`2::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string[] tokens) cil managed
  {
    // Code size       53 (0x35)
    .maxstack  8
    .line 40,40 : 13,43 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    .line 42,42 : 17,88 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.0
    IL_0009:  ldelem.ref
    IL_000a:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_000f:  stfld      valuetype CSharpToNative.EnumAccessModifiers class CSharpToNative.Branch`2<!T1,!T2>::protectionlevel
    .line 43,43 : 17,69 ''
    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  ldc.i4.1
    IL_0017:  ldelem.ref
    IL_0018:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_001d:  stfld      valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<!T1,!T2>::'type'
    .line 44,44 : 17,39 ''
    IL_0022:  ldarg.0
    IL_0023:  ldarg.1
    IL_0024:  ldc.i4.2
    IL_0025:  ldelem.ref
    IL_0026:  stfld      string class CSharpToNative.Branch`2<!T1,!T2>::name
    .line 45,45 : 17,40 ''
    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  ldc.i4.4
    IL_002e:  ldelem.ref
    IL_002f:  stfld      object class CSharpToNative.Branch`2<!T1,!T2>::Value
    .line 47,47 : 13,14 ''
    IL_0034:  ret
  } // end of method Branch`2::.ctor

  .method private hidebysig instance valuetype CSharpToNative.EnumAccessModifiers 
          getaccessmodifier(class CSharpToNative.Branch`2<!T1,!T2> branch) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 51,51 : 17,47 ''
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype CSharpToNative.EnumAccessModifiers class CSharpToNative.Branch`2<!T1,!T2>::protectionlevel
    IL_0006:  ret
  } // end of method Branch`2::getaccessmodifier

  .method private hidebysig instance valuetype CSharpToNative.EnumTypes 
          gettype(class CSharpToNative.Branch`2<!T1,!T2> branch) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 56,56 : 17,36 ''
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<!T1,!T2>::'type'
    IL_0006:  ret
  } // end of method Branch`2::gettype

  .method private hidebysig instance string 
          getname(class CSharpToNative.Branch`2<!T1,!T2> branch) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 62,62 : 17,36 ''
    IL_0000:  ldarg.1
    IL_0001:  ldfld      string class CSharpToNative.Branch`2<!T1,!T2>::name
    IL_0006:  ret
  } // end of method Branch`2::getname

  .method private hidebysig instance object 
          getvalue(class CSharpToNative.Branch`2<!T1,!T2> branch) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 67,67 : 17,37 ''
    IL_0000:  ldarg.1
    IL_0001:  ldfld      object class CSharpToNative.Branch`2<!T1,!T2>::Value
    IL_0006:  ret
  } // end of method Branch`2::getvalue

  .method family hidebysig instance class CSharpToNative.Branch`2<!T1,!T2> 
          Union(class CSharpToNative.Branch`2<!T1,!T2> lhs,
                class CSharpToNative.Branch`2<!T1,!T2> rhs) cil managed
  {
    // Code size       184 (0xb8)
    .maxstack  3
    .locals init ([0] class CSharpToNative.TypeMismatchException ex,
             [1] class CSharpToNative.Branch`2<!T1,!T2> newbranch)
    .line 72,72 : 17,37 ''
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
    IL_0007:  brfalse.s  IL_000b

    .line 74,74 : 21,32 ''
    IL_0009:  ldarg.1
    IL_000a:  ret

    .line 78,78 : 21,62 ''
    IL_000b:  ldarg.1
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<!T1,!T2>::gettype(class CSharpToNative.Branch`2<!0,!1>)
    IL_0012:  ldarg.2
    IL_0013:  ldarg.2
    IL_0014:  callvirt   instance valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<!T1,!T2>::gettype(class CSharpToNative.Branch`2<!0,!1>)
    IL_0019:  beq.s      IL_007b

    .line 82,82 : 29,63 ''
    .try
    {
      .try
      {
        IL_001b:  newobj     instance void CSharpToNative.TypeMismatchException::.ctor()
        IL_0020:  throw

        .line 84,84 : 25,57 ''
      }  // end .try
      catch CSharpToNative.TypeMismatchException 
      {
        IL_0021:  stloc.0
        .line 86,86 : 29,76 ''
        IL_0022:  ldc.i4.4
        IL_0023:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
        .line 87,87 : 29,61 ''
        IL_0028:  ldloc.0
        IL_0029:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Exception::GetType()
        IL_002e:  call       void [mscorlib]System.Console::WriteLine(object)
        .line 88,88 : 29,59 ''
        IL_0033:  ldloc.0
        IL_0034:  callvirt   instance string [mscorlib]System.Exception::get_Message()
        IL_0039:  call       void [mscorlib]System.Console::WriteLine(string)
        .line 89,89 : 29,62 ''
        IL_003e:  ldloc.0
        IL_003f:  callvirt   instance string [mscorlib]System.Exception::get_StackTrace()
        IL_0044:  call       void [mscorlib]System.Console::WriteLine(string)
        .line 90,90 : 29,50 ''
        IL_0049:  call       void [mscorlib]System.Console::ResetColor()
        .line 16707566,16707566 : 0,0 ''
        IL_004e:  leave.s    IL_0050

      }  // end handler
      IL_0050:  leave.s    IL_0079

      .line 94,94 : 29,76 ''
    }  // end .try
    finally
    {
      IL_0052:  ldc.i4.s   13
      IL_0054:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
      .line 95,95 : 29,125 ''
      IL_0059:  ldstr      "A FATAL ERROR HAS OCCURED IN UNION OF BRANCHES: TY"
      + "PES DO NOT MATCH EXITING"
      IL_005e:  call       void [mscorlib]System.Console::WriteLine(string)
      .line 96,96 : 29,50 ''
      IL_0063:  call       void [mscorlib]System.Console::ResetColor()
      .line 97,97 : 29,65 ''
      IL_0068:  ldc.i4     0x9c4
      IL_006d:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
      .line 98,98 : 29,50 ''
      IL_0072:  ldc.i4.m1
      IL_0073:  call       void [mscorlib]System.Environment::Exit(int32)
      .line 16707566,16707566 : 0,0 ''
      IL_0078:  endfinally
      .line 100,100 : 25,37 ''
    }  // end handler
    IL_0079:  ldnull
    IL_007a:  ret

    .line 104,104 : 25,88 ''
    IL_007b:  ldsfld     string[] CSharpToNative.Lexer::pubtokens
    IL_0080:  newobj     instance void class CSharpToNative.Branch`2<!T1,!T2>::.ctor(string[])
    IL_0085:  stloc.1
    .line 105,105 : 25,51 ''
    IL_0086:  ldloc.1
    IL_0087:  ldarg.1
    IL_0088:  ldfld      valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<!T1,!T2>::'type'
    IL_008d:  stfld      valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<!T1,!T2>::'type'
    .line 106,106 : 25,51 ''
    IL_0092:  ldloc.1
    IL_0093:  ldarg.1
    IL_0094:  ldfld      string class CSharpToNative.Branch`2<!T1,!T2>::name
    IL_0099:  stfld      string class CSharpToNative.Branch`2<!T1,!T2>::name
    .line 107,107 : 25,73 ''
    IL_009e:  ldloc.1
    IL_009f:  ldarg.2
    IL_00a0:  ldfld      valuetype CSharpToNative.EnumAccessModifiers class CSharpToNative.Branch`2<!T1,!T2>::protectionlevel
    IL_00a5:  stfld      valuetype CSharpToNative.EnumAccessModifiers class CSharpToNative.Branch`2<!T1,!T2>::protectionlevel
    .line 108,108 : 25,53 ''
    IL_00aa:  ldloc.1
    IL_00ab:  ldarg.1
    IL_00ac:  ldfld      object class CSharpToNative.Branch`2<!T1,!T2>::Value
    IL_00b1:  stfld      object class CSharpToNative.Branch`2<!T1,!T2>::Value
    .line 109,109 : 25,42 ''
    IL_00b6:  ldloc.1
    IL_00b7:  ret
  } // end of method Branch`2::Union

} // end of class CSharpToNative.Branch`2

.class public auto ansi beforefieldinit CSharpToNative.Tree`3<T1,T2,T3>
       extends class CSharpToNative.Branch`2<!T1,!T2>
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2'<T1,T2,T3>
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public object criteria
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass2'::.ctor

    .method public hidebysig instance bool 
            '<GetBranch>b__0'(class CSharpToNative.Branch`2<!T1,!T2> c) cil managed
    {
      // Code size       18 (0x12)
      .maxstack  8
      .line 69,69 : 77,101 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\Tree.cs'
      IL_0000:  ldarg.1
      IL_0001:  ldfld      object class CSharpToNative.Branch`2<!T1,!T2>::Value
      IL_0006:  ldarg.0
      IL_0007:  ldfld      object class CSharpToNative.Tree`3/'<>c__DisplayClass2'<!T1,!T2,!T3>::criteria
      IL_000c:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass2'::'<GetBranch>b__0'

  } // end of class '<>c__DisplayClass2'

  .field public class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>> treebranches
  .field public uint64 depth
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       34 (0x22)
    .maxstack  8
    .line 11,11 : 9,80 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>>::.ctor(int32)
    IL_0007:  stfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    .line 13,13 : 9,22 ''
    IL_000c:  ldarg.0
    IL_000d:  call       instance void class CSharpToNative.Branch`2<!T1,!T2>::.ctor()
    .line 15,15 : 13,28 ''
    IL_0012:  ldarg.0
    IL_0013:  ldc.i4.0
    IL_0014:  conv.i8
    IL_0015:  stfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    .line 16,16 : 13,38 ''
    IL_001a:  ldarg.0
    IL_001b:  ldnull
    IL_001c:  stfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    .line 17,17 : 9,10 ''
    IL_0021:  ret
  } // end of method Tree`3::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>> branches) cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  8
    .line 11,11 : 9,80 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>>::.ctor(int32)
    IL_0007:  stfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    .line 18,18 : 9,51 ''
    IL_000c:  ldarg.0
    IL_000d:  call       instance void class CSharpToNative.Branch`2<!T1,!T2>::.ctor()
    .line 20,20 : 13,42 ''
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  stfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    .line 21,21 : 13,52 ''
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_0020:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>>::get_Count()
    IL_0025:  conv.i8
    IL_0026:  stfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    .line 22,22 : 9,10 ''
    IL_002b:  ret
  } // end of method Tree`3::.ctor

  .method family hidebysig instance class CSharpToNative.Tree`3<!T1,!T2,!T3> 
          AddBranchYToTree(class CSharpToNative.Branch`2<!T1,!T2> branch) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  8
    .line 26,26 : 13,43 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>>::Add(!0)
    .line 27,27 : 13,26 ''
    IL_000c:  ldarg.0
    IL_000d:  dup
    IL_000e:  ldfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    IL_0013:  ldc.i4.1
    IL_0014:  conv.i8
    IL_0015:  add
    IL_0016:  stfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    .line 28,28 : 13,25 ''
    IL_001b:  ldarg.0
    IL_001c:  ret
  } // end of method Tree`3::AddBranchYToTree

  .method family hidebysig instance class CSharpToNative.Tree`3<!T1,!T2,!T3> 
          Union(class CSharpToNative.Tree`3<!T1,!T2,!T3> lhs,
                class CSharpToNative.Tree`3<!T1,!T2,!T3> rhs) cil managed
  {
    // Code size       191 (0xbf)
    .maxstack  4
    .locals init ([0] class CSharpToNative.Tree`3<!T1,!T2,!T3> newtree,
             [1] int32 i,
             [2] int32 j,
             [3] uint64 CS$0$0000)
    .line 34,34 : 13,33 ''
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
    IL_0007:  brfalse.s  IL_000b

    .line 36,36 : 17,29 ''
    IL_0009:  ldarg.0
    IL_000a:  ret

    .line 40,40 : 17,50 ''
    IL_000b:  newobj     instance void class CSharpToNative.Tree`3<!T1,!T2,!T3>::.ctor()
    IL_0010:  stloc.0
    .line 41,41 : 17,56 ''
    IL_0011:  ldloc.0
    IL_0012:  ldarg.1
    IL_0013:  dup
    IL_0014:  ldfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    IL_0019:  ldarg.2
    IL_001a:  ldfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    IL_001f:  add
    IL_0020:  dup
    IL_0021:  stloc.3
    IL_0022:  stfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    IL_0027:  ldloc.3
    IL_0028:  stfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    .line 42,42 : 17,41 ''
    IL_002d:  ldloc.0
    IL_002e:  ldarg.1
    IL_002f:  ldfld      string class CSharpToNative.Branch`2<!T1,!T2>::name
    IL_0034:  stfld      string class CSharpToNative.Branch`2<!T1,!T2>::name
    .line 43,43 : 17,43 ''
    IL_0039:  ldloc.0
    IL_003a:  ldarg.1
    IL_003b:  ldfld      object class CSharpToNative.Branch`2<!T1,!T2>::Value
    IL_0040:  stfld      object class CSharpToNative.Branch`2<!T1,!T2>::Value
    .line 44,44 : 17,49 ''
    IL_0045:  ldloc.0
    IL_0046:  ldc.i4.s   12
    IL_0048:  stfld      valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<!T1,!T2>::'type'
    .line 45,45 : 22,32 ''
    IL_004d:  ldc.i4.0
    IL_004e:  stloc.1
    .line 16707566,16707566 : 0,0 ''
    IL_004f:  br.s       IL_0077

    .line 47,47 : 21,93 ''
    IL_0051:  ldloc.0
    IL_0052:  ldarg.1
    IL_0053:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_0058:  ldloc.1
    IL_0059:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<class CSharpToNative.Branch`2<!T1,!T2>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                    int32)
    IL_005e:  callvirt   instance class CSharpToNative.Tree`3<!0,!1,!2> class CSharpToNative.Tree`3<!T1,!T2,!T3>::AddBranchYToTree(class CSharpToNative.Branch`2<!0,!1>)
    IL_0063:  pop
    .line 48,48 : 21,37 ''
    IL_0064:  ldloc.0
    IL_0065:  dup
    IL_0066:  ldfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    IL_006b:  ldc.i4.1
    IL_006c:  conv.i8
    IL_006d:  add
    IL_006e:  stfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    .line 45,45 : 61,64 ''
    IL_0073:  ldloc.1
    IL_0074:  ldc.i4.1
    IL_0075:  add
    IL_0076:  stloc.1
    .line 45,45 : 33,59 ''
    IL_0077:  ldloc.1
    IL_0078:  ldarg.1
    IL_0079:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_007e:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>>::get_Count()
    IL_0083:  blt.s      IL_0051

    .line 50,50 : 22,32 ''
    IL_0085:  ldc.i4.0
    IL_0086:  stloc.2
    .line 16707566,16707566 : 0,0 ''
    IL_0087:  br.s       IL_00af

    .line 52,52 : 21,93 ''
    IL_0089:  ldloc.0
    IL_008a:  ldarg.2
    IL_008b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_0090:  ldloc.2
    IL_0091:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<class CSharpToNative.Branch`2<!T1,!T2>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                    int32)
    IL_0096:  callvirt   instance class CSharpToNative.Tree`3<!0,!1,!2> class CSharpToNative.Tree`3<!T1,!T2,!T3>::AddBranchYToTree(class CSharpToNative.Branch`2<!0,!1>)
    IL_009b:  pop
    .line 53,53 : 21,37 ''
    IL_009c:  ldloc.0
    IL_009d:  dup
    IL_009e:  ldfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    IL_00a3:  ldc.i4.1
    IL_00a4:  conv.i8
    IL_00a5:  add
    IL_00a6:  stfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    .line 50,50 : 61,64 ''
    IL_00ab:  ldloc.2
    IL_00ac:  ldc.i4.1
    IL_00ad:  add
    IL_00ae:  stloc.2
    .line 50,50 : 33,59 ''
    IL_00af:  ldloc.2
    IL_00b0:  ldarg.2
    IL_00b1:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_00b6:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>>::get_Count()
    IL_00bb:  blt.s      IL_0089

    .line 55,55 : 17,32 ''
    IL_00bd:  ldloc.0
    IL_00be:  ret
  } // end of method Tree`3::Union

  .method family hidebysig instance class CSharpToNative.Branch`2<!T1,!T2> 
          GetBranch(class CSharpToNative.Tree`3<!T1,!T2,!T3> tree,
                    [opt] object criteria) cil managed
  {
    .param [2] = nullref
    // Code size       81 (0x51)
    .maxstack  3
    .locals init ([0] class [mscorlib]System.Func`2<class CSharpToNative.Branch`2<!T1,!T2>,bool> 'CS$<>9__CachedAnonymousMethodDelegate1',
             [1] class CSharpToNative.Tree`3/'<>c__DisplayClass2'<!T1,!T2,!T3> 'CS$<>8__locals3')
    .line 16707566,16707566 : 0,0 ''
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  newobj     instance void class CSharpToNative.Tree`3/'<>c__DisplayClass2'<!T1,!T2,!T3>::.ctor()
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.2
    IL_000a:  stfld      object class CSharpToNative.Tree`3/'<>c__DisplayClass2'<!T1,!T2,!T3>::criteria
    .line 61,61 : 13,66 ''
    IL_000f:  ldsfld     string[] CSharpToNative.Lexer::pubtokens
    IL_0014:  newobj     instance void class CSharpToNative.Branch`2<!T1,!T2>::.ctor(string[])
    IL_0019:  pop
    .line 63,63 : 13,39 ''
    IL_001a:  ldloc.1
    IL_001b:  ldfld      object class CSharpToNative.Tree`3/'<>c__DisplayClass2'<!T1,!T2,!T3>::criteria
    IL_0020:  ldnull
    IL_0021:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
    IL_0026:  brfalse.s  IL_0034

    .line 65,65 : 17,66 ''
    IL_0028:  ldarg.1
    IL_0029:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_002e:  call       !!0 [System.Core]System.Linq.Enumerable::First<class CSharpToNative.Branch`2<!T1,!T2>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0033:  ret

    .line 69,69 : 17,103 ''
    IL_0034:  ldarg.1
    IL_0035:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_003a:  ldloc.0
    IL_003b:  brtrue.s   IL_004a

    IL_003d:  ldloc.1
    IL_003e:  ldftn      instance bool class CSharpToNative.Tree`3/'<>c__DisplayClass2'<!T1,!T2,!T3>::'<GetBranch>b__0'(class CSharpToNative.Branch`2<!0,!1>)
    IL_0044:  newobj     instance void class [mscorlib]System.Func`2<class CSharpToNative.Branch`2<!T1,!T2>,bool>::.ctor(object,
                                                                                                                         native int)
    IL_0049:  stloc.0
    IL_004a:  ldloc.0
    IL_004b:  call       !!0 [System.Core]System.Linq.Enumerable::FirstOrDefault<class CSharpToNative.Branch`2<!T1,!T2>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                         class [mscorlib]System.Func`2<!!0,bool>)
    IL_0050:  ret
  } // end of method Tree`3::GetBranch

  .method family hidebysig instance uint64 
          GetTreeDepth(class CSharpToNative.Tree`3<!T1,!T2,!T3> tree) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 75,75 : 13,31 ''
    IL_0000:  ldarg.1
    IL_0001:  ldfld      uint64 class CSharpToNative.Tree`3<!T1,!T2,!T3>::depth
    IL_0006:  ret
  } // end of method Tree`3::GetTreeDepth

} // end of class CSharpToNative.Tree`3

.class public auto ansi beforefieldinit CSharpToNative.AST`4<T1,T2,T3,T4>
       extends class CSharpToNative.Tree`3<!T1,!T2,!T3>
{
  .field private class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4> root
  .field private class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4> leftchild
  .field private class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4> rightchild
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  8
    .line 17,17 : 9,21 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\AST.cs'
    IL_0000:  ldarg.0
    IL_0001:  call       instance void class CSharpToNative.Tree`3<!T1,!T2,!T3>::.ctor()
    .line 20,20 : 13,73 ''
    IL_0006:  ldarg.0
    IL_0007:  ldsfld     string[] CSharpToNative.Lexer::pubtokens
    IL_000c:  ldarg.0
    IL_000d:  newobj     instance void class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4>::.ctor(string[],
                                                                                                class CSharpToNative.AST`4<!0,!1,!2,!3>)
    IL_0012:  stfld      class CSharpToNative.ASTBranch`4<!0,!1,!2,!3> class CSharpToNative.AST`4<!T1,!T2,!T3,!T4>::root
    .line 21,21 : 13,78 ''
    IL_0017:  ldarg.0
    IL_0018:  ldsfld     string[] CSharpToNative.Lexer::pubtokens
    IL_001d:  ldarg.0
    IL_001e:  newobj     instance void class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4>::.ctor(string[],
                                                                                                class CSharpToNative.AST`4<!0,!1,!2,!3>)
    IL_0023:  stfld      class CSharpToNative.ASTBranch`4<!0,!1,!2,!3> class CSharpToNative.AST`4<!T1,!T2,!T3,!T4>::leftchild
    .line 22,22 : 13,79 ''
    IL_0028:  ldarg.0
    IL_0029:  ldsfld     string[] CSharpToNative.Lexer::pubtokens
    IL_002e:  ldarg.0
    IL_002f:  newobj     instance void class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4>::.ctor(string[],
                                                                                                class CSharpToNative.AST`4<!0,!1,!2,!3>)
    IL_0034:  stfld      class CSharpToNative.ASTBranch`4<!0,!1,!2,!3> class CSharpToNative.AST`4<!T1,!T2,!T3,!T4>::rightchild
    .line 23,23 : 9,10 ''
    IL_0039:  ret
  } // end of method AST`4::.ctor

  .method family hidebysig instance void 
          seroot(class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4> newroot) cil managed
  {
    // Code size       135 (0x87)
    .maxstack  2
    .locals init ([0] class [mscorlib]System.InvalidOperationException ex)
    .line 26,26 : 13,40 ''
    IL_0000:  ldarg.1
    IL_0001:  ldfld      class CSharpToNative.Branch`2<!0,!1> class CSharpToNative.Branch`2<!T1,!T2>::parent
    IL_0006:  brfalse.s  IL_0023

    .line 28,28 : 17,32 ''
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class CSharpToNative.ASTBranch`4<!0,!1,!2,!3> class CSharpToNative.AST`4<!T1,!T2,!T3,!T4>::root
    .line 29,29 : 17,36 ''
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class CSharpToNative.ASTBranch`4<!0,!1,!2,!3> class CSharpToNative.AST`4<!T1,!T2,!T3,!T4>::root
    IL_0015:  ldnull
    IL_0016:  stfld      class CSharpToNative.Branch`2<!0,!1> class CSharpToNative.Branch`2<!T1,!T2>::parent
    .line 30,30 : 17,39 ''
    IL_001b:  ldarg.1
    IL_001c:  ldnull
    IL_001d:  stfld      class CSharpToNative.Branch`2<!0,!1> class CSharpToNative.Branch`2<!T1,!T2>::parent
    .line 16707566,16707566 : 0,0 ''
    IL_0022:  ret

    .line 36,36 : 21,104 ''
    .try
    {
      .try
      {
        IL_0023:  ldstr      "THE BRANCH IS ALREADY THE ROOT OF THIS TREE"
        IL_0028:  newobj     instance void [mscorlib]System.InvalidOperationException::.ctor(string)
        IL_002d:  throw

        .line 38,38 : 17,53 ''
      }  // end .try
      catch [mscorlib]System.InvalidOperationException 
      {
        IL_002e:  stloc.0
        .line 40,40 : 21,68 ''
        IL_002f:  ldc.i4.4
        IL_0030:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
        .line 41,41 : 21,53 ''
        IL_0035:  ldloc.0
        IL_0036:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Exception::GetType()
        IL_003b:  call       void [mscorlib]System.Console::WriteLine(object)
        .line 42,42 : 21,51 ''
        IL_0040:  ldloc.0
        IL_0041:  callvirt   instance string [mscorlib]System.Exception::get_Message()
        IL_0046:  call       void [mscorlib]System.Console::WriteLine(string)
        .line 43,43 : 21,54 ''
        IL_004b:  ldloc.0
        IL_004c:  callvirt   instance string [mscorlib]System.Exception::get_StackTrace()
        IL_0051:  call       void [mscorlib]System.Console::WriteLine(string)
        .line 44,44 : 21,42 ''
        IL_0056:  call       void [mscorlib]System.Console::ResetColor()
        .line 16707566,16707566 : 0,0 ''
        IL_005b:  leave.s    IL_005d

      }  // end handler
      IL_005d:  leave.s    IL_0086

      .line 48,48 : 21,68 ''
    }  // end .try
    finally
    {
      IL_005f:  ldc.i4.s   13
      IL_0061:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
      .line 49,49 : 21,106 ''
      IL_0066:  ldstr      "FATAL ERROR THE BRANCH IS ALREADY THE ROOT OF THIS"
      + " TREE EXITING"
      IL_006b:  call       void [mscorlib]System.Console::WriteLine(string)
      .line 50,50 : 21,42 ''
      IL_0070:  call       void [mscorlib]System.Console::ResetColor()
      .line 51,51 : 21,57 ''
      IL_0075:  ldc.i4     0x9c4
      IL_007a:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
      .line 52,52 : 21,42 ''
      IL_007f:  ldc.i4.m1
      IL_0080:  call       void [mscorlib]System.Environment::Exit(int32)
      .line 16707566,16707566 : 0,0 ''
      IL_0085:  endfinally
      .line 55,55 : 9,10 ''
    }  // end handler
    IL_0086:  ret
  } // end of method AST`4::seroot

  .method family hidebysig instance class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4> 
          getroot(class CSharpToNative.AST`4<!T1,!T2,!T3,!T4> tree) cil managed
  {
    // Code size       74 (0x4a)
    .maxstack  2
    .locals init ([0] class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4> branch,
             [1] class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4> CS$1$0000,
             [2] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CSharpToNative.Branch`2<!T1,!T2>> CS$5$0001)
    .line 58,58 : 58,75 ''
    IL_0000:  ldarg.1
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>>::GetEnumerator()
    IL_000b:  stloc.2
    .line 16707566,16707566 : 0,0 ''
    .try
    {
      IL_000c:  br.s       IL_002d

      .line 58,58 : 22,54 ''
      IL_000e:  ldloca.s   CS$5$0001
      IL_0010:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CSharpToNative.Branch`2<!T1,!T2>>::get_Current()
      IL_0015:  castclass  class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4>
      IL_001a:  stloc.0
      .line 60,60 : 17,48 ''
      IL_001b:  ldloc.0
      IL_001c:  ldfld      class CSharpToNative.Branch`2<!0,!1> class CSharpToNative.Branch`2<!T1,!T2>::parent
      IL_0021:  ldnull
      IL_0022:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
      IL_0027:  brfalse.s  IL_002d

      .line 62,62 : 21,35 ''
      IL_0029:  ldloc.0
      IL_002a:  stloc.1
      IL_002b:  leave.s    IL_0048

      .line 58,58 : 55,57 ''
      IL_002d:  ldloca.s   CS$5$0001
      IL_002f:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CSharpToNative.Branch`2<!T1,!T2>>::MoveNext()
      IL_0034:  brtrue.s   IL_000e

      .line 16707566,16707566 : 0,0 ''
      IL_0036:  leave.s    IL_0046

    }  // end .try
    finally
    {
      IL_0038:  ldloca.s   CS$5$0001
      IL_003a:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CSharpToNative.Branch`2<!T1,!T2>>
      IL_0040:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0045:  endfinally
      .line 69,69 : 13,25 ''
    }  // end handler
    IL_0046:  ldnull
    IL_0047:  ret

    .line 71,71 : 9,10 ''
    IL_0048:  ldloc.1
    IL_0049:  ret
  } // end of method AST`4::getroot

} // end of class CSharpToNative.AST`4

.class public auto ansi beforefieldinit CSharpToNative.ASTBranch`4<T1,T2,T3,T4>
       extends class CSharpToNative.Branch`2<!T1,!T2>
{
  .field private bool isroot
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       54 (0x36)
    .maxstack  1
    .locals init ([0] class [mscorlib]System.InvalidOperationException ex)
    .line 13,13 : 9,27 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\ASTBranch.cs'
    IL_0000:  ldarg.0
    IL_0001:  call       instance void class CSharpToNative.Branch`2<!T1,!T2>::.ctor()
    .line 17,17 : 17,102 ''
    .try
    {
      IL_0006:  ldstr      "Cannot Create a branch without tokens or tree"
      IL_000b:  newobj     instance void [mscorlib]System.InvalidOperationException::.ctor(string)
      IL_0010:  throw

      .line 19,19 : 13,49 ''
    }  // end .try
    catch [mscorlib]System.InvalidOperationException 
    {
      IL_0011:  stloc.0
      .line 21,21 : 17,64 ''
      IL_0012:  ldc.i4.4
      IL_0013:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
      .line 22,22 : 17,47 ''
      IL_0018:  ldloc.0
      IL_0019:  callvirt   instance string [mscorlib]System.Exception::get_Message()
      IL_001e:  call       void [mscorlib]System.Console::WriteLine(string)
      .line 23,23 : 17,50 ''
      IL_0023:  ldloc.0
      IL_0024:  callvirt   instance string [mscorlib]System.Exception::get_StackTrace()
      IL_0029:  call       void [mscorlib]System.Console::WriteLine(string)
      .line 24,24 : 17,38 ''
      IL_002e:  call       void [mscorlib]System.Console::ResetColor()
      .line 16707566,16707566 : 0,0 ''
      IL_0033:  leave.s    IL_0035

      .line 26,26 : 9,10 ''
    }  // end handler
    IL_0035:  ret
  } // end of method ASTBranch`4::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string[] tokens,
                               class CSharpToNative.AST`4<!T1,!T2,!T3,!T4> tree) cil managed
  {
    // Code size       185 (0xb9)
    .maxstack  3
    .locals init ([0] int32 protval,
             [1] int32 typeval,
             [2] int32 opval,
             [3] int32 CS$0$0000)
    .line 27,27 : 9,68 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void class CSharpToNative.Branch`2<!T1,!T2>::.ctor()
    .line 29,29 : 13,54 ''
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.0
    IL_0008:  ldelem.ref
    IL_0009:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_000e:  stloc.0
    .line 30,30 : 13,54 ''
    IL_000f:  ldarg.1
    IL_0010:  ldc.i4.1
    IL_0011:  ldelem.ref
    IL_0012:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_0017:  stloc.1
    .line 31,31 : 13,52 ''
    IL_0018:  ldarg.1
    IL_0019:  ldc.i4.2
    IL_001a:  ldelem.ref
    IL_001b:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_0020:  stloc.2
    .line 32,32 : 13,29 ''
    IL_0021:  ldloc.0
    IL_0022:  ldc.i4.2
    IL_0023:  ble.s      IL_002e

    .line 34,34 : 17,72 ''
    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.m1
    IL_0027:  stfld      valuetype CSharpToNative.EnumAccessModifiers class CSharpToNative.Branch`2<!T1,!T2>::protectionlevel
    .line 16707566,16707566 : 0,0 ''
    IL_002c:  br.s       IL_003c

    .line 38,38 : 17,88 ''
    IL_002e:  ldarg.0
    IL_002f:  ldarg.1
    IL_0030:  ldc.i4.0
    IL_0031:  ldelem.ref
    IL_0032:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_0037:  stfld      valuetype CSharpToNative.EnumAccessModifiers class CSharpToNative.Branch`2<!T1,!T2>::protectionlevel
    .line 41,41 : 13,30 ''
    IL_003c:  ldloc.1
    IL_003d:  ldc.i4.s   12
    IL_003f:  ble.s      IL_004a

    .line 43,43 : 17,47 ''
    IL_0041:  ldarg.0
    IL_0042:  ldc.i4.m1
    IL_0043:  stfld      valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<!T1,!T2>::'type'
    .line 16707566,16707566 : 0,0 ''
    IL_0048:  br.s       IL_0058

    .line 47,47 : 17,67 ''
    IL_004a:  ldarg.0
    IL_004b:  ldarg.1
    IL_004c:  ldc.i4.1
    IL_004d:  ldelem.ref
    IL_004e:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_0053:  stfld      valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<!T1,!T2>::'type'
    .line 50,50 : 13,35 ''
    IL_0058:  ldarg.0
    IL_0059:  ldarg.1
    IL_005a:  ldc.i4.2
    IL_005b:  ldelem.ref
    IL_005c:  stfld      string class CSharpToNative.Branch`2<!T1,!T2>::name
    .line 51,51 : 13,28 ''
    IL_0061:  ldloc.2
    IL_0062:  ldc.i4.s   36
    IL_0064:  ble.s      IL_006f

    .line 53,53 : 17,59 ''
    IL_0066:  ldarg.0
    IL_0067:  ldc.i4.m1
    IL_0068:  stfld      valuetype CSharpToNative.EnumOperator class CSharpToNative.Branch`2<!T1,!T2>::operation
    .line 16707566,16707566 : 0,0 ''
    IL_006d:  br.s       IL_007d

    .line 57,57 : 17,75 ''
    IL_006f:  ldarg.0
    IL_0070:  ldarg.1
    IL_0071:  ldc.i4.3
    IL_0072:  ldelem.ref
    IL_0073:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_0078:  stfld      valuetype CSharpToNative.EnumOperator class CSharpToNative.Branch`2<!T1,!T2>::operation
    .line 60,60 : 13,36 ''
    IL_007d:  ldarg.0
    IL_007e:  ldarg.1
    IL_007f:  ldc.i4.4
    IL_0080:  ldelem.ref
    IL_0081:  stfld      object class CSharpToNative.Branch`2<!T1,!T2>::Value
    .line 61,61 : 13,51 ''
    IL_0086:  ldarg.2
    IL_0087:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_008c:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>>::get_Count()
    IL_0091:  stloc.3
    IL_0092:  ldloca.s   CS$0$0000
    IL_0094:  ldc.i4.0
    IL_0095:  call       instance bool [mscorlib]System.Int32::Equals(int32)
    IL_009a:  brfalse.s  IL_00a5

    .line 63,63 : 17,36 ''
    IL_009c:  ldarg.0
    IL_009d:  ldc.i4.1
    IL_009e:  stfld      bool class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4>::isroot
    .line 16707566,16707566 : 0,0 ''
    IL_00a3:  br.s       IL_00ac

    .line 67,67 : 17,37 ''
    IL_00a5:  ldarg.0
    IL_00a6:  ldc.i4.0
    IL_00a7:  stfld      bool class CSharpToNative.ASTBranch`4<!T1,!T2,!T3,!T4>::isroot
    .line 69,69 : 13,57 ''
    IL_00ac:  ldarg.2
    IL_00ad:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!0,!1>> class CSharpToNative.Tree`3<!T1,!T2,!T3>::treebranches
    IL_00b2:  ldarg.0
    IL_00b3:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class CSharpToNative.Branch`2<!T1,!T2>>::Add(!0)
    .line 70,70 : 9,10 ''
    IL_00b8:  ret
  } // end of method ASTBranch`4::.ctor

} // end of class CSharpToNative.ASTBranch`4

.class private abstract auto ansi sealed beforefieldinit CSharpToNative.DefineTest
       extends [mscorlib]System.Object
{
  .class abstract auto ansi sealed nested private beforefieldinit '<run>o__SiteContainer0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> '<>p__Site1'
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> '<>p__Site2'
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> '<>p__Site3'
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> '<>p__Site4'
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> '<>p__Site5'
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> '<>p__Site6'
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> '<>p__Site7'
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> '<>p__Site8'
  } // end of class '<run>o__SiteContainer0'

  .method public hidebysig static void  run() cil managed
  {
    // Code size       1064 (0x428)
    .maxstack  8
    .locals init ([0] object inta,
             [1] object boola,
             [2] object doublea,
             [3] object chara,
             [4] object stringa,
             [5] object longa,
             [6] object floata,
             [7] object datea,
             [8] valuetype [mscorlib]System.DateTime CS$0$0000,
             [9] valuetype [mscorlib]System.DateTime CS$0$0001,
             [10] valuetype [mscorlib]System.DateTime CS$0$0002,
             [11] valuetype [mscorlib]System.DateTime CS$0$0003,
             [12] valuetype [mscorlib]System.DateTime CS$0$0004,
             [13] valuetype [mscorlib]System.DateTime CS$0$0005,
             [14] class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo[] CS$0$0006,
             [15] class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo[] CS$0$0007,
             [16] class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo[] CS$0$0008,
             [17] class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo[] CS$0$0009,
             [18] class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo[] CS$0$0010,
             [19] class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo[] CS$0$0011,
             [20] class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo[] CS$0$0012,
             [21] class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo[] CS$0$0013)
    .line 13,13 : 13,48 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\DefineTest.cs'
    IL_0000:  ldc.i4.s   100
    IL_0002:  box        [mscorlib]System.Int32
    IL_0007:  call       object CSharpToNative.DefineTest::DefineVariable(object)
    IL_000c:  stloc.0
    .line 14,14 : 13,51 ''
    IL_000d:  ldc.i4.0
    IL_000e:  box        [mscorlib]System.Boolean
    IL_0013:  call       object CSharpToNative.DefineTest::DefineVariable(object)
    IL_0018:  stloc.1
    .line 15,15 : 13,52 ''
    IL_0019:  ldc.r8     12.5
    IL_0022:  box        [mscorlib]System.Double
    IL_0027:  call       object CSharpToNative.DefineTest::DefineVariable(object)
    IL_002c:  stloc.2
    .line 16,16 : 13,49 ''
    IL_002d:  ldc.i4.s   99
    IL_002f:  box        [mscorlib]System.Char
    IL_0034:  call       object CSharpToNative.DefineTest::DefineVariable(object)
    IL_0039:  stloc.3
    .line 17,17 : 13,61 ''
    IL_003a:  ldstr      "Hello World"
    IL_003f:  call       object CSharpToNative.DefineTest::DefineVariable(object)
    IL_0044:  stloc.s    stringa
    .line 18,18 : 13,49 ''
    IL_0046:  ldc.i4.s   25
    IL_0048:  conv.i8
    IL_0049:  box        [mscorlib]System.Int64
    IL_004e:  call       object CSharpToNative.DefineTest::DefineVariable(object)
    IL_0053:  stloc.s    longa
    .line 19,19 : 13,52 ''
    IL_0055:  ldc.r4     17.5
    IL_005a:  box        [mscorlib]System.Single
    IL_005f:  call       object CSharpToNative.DefineTest::DefineVariable(object)
    IL_0064:  stloc.s    floata
    .line 20,20 : 13,176 ''
    IL_0066:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
    IL_006b:  stloc.s    CS$0$0000
    IL_006d:  ldloca.s   CS$0$0000
    IL_006f:  call       instance int32 [mscorlib]System.DateTime::get_Year()
    IL_0074:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
    IL_0079:  stloc.s    CS$0$0001
    IL_007b:  ldloca.s   CS$0$0001
    IL_007d:  call       instance int32 [mscorlib]System.DateTime::get_Month()
    IL_0082:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
    IL_0087:  stloc.s    CS$0$0002
    IL_0089:  ldloca.s   CS$0$0002
    IL_008b:  call       instance int32 [mscorlib]System.DateTime::get_Day()
    IL_0090:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
    IL_0095:  stloc.s    CS$0$0003
    IL_0097:  ldloca.s   CS$0$0003
    IL_0099:  call       instance int32 [mscorlib]System.DateTime::get_Hour()
    IL_009e:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
    IL_00a3:  stloc.s    CS$0$0004
    IL_00a5:  ldloca.s   CS$0$0004
    IL_00a7:  call       instance int32 [mscorlib]System.DateTime::get_Minute()
    IL_00ac:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
    IL_00b1:  stloc.s    CS$0$0005
    IL_00b3:  ldloca.s   CS$0$0005
    IL_00b5:  call       instance int32 [mscorlib]System.DateTime::get_Second()
    IL_00ba:  newobj     instance void [mscorlib]System.DateTime::.ctor(int32,
                                                                        int32,
                                                                        int32,
                                                                        int32,
                                                                        int32,
                                                                        int32)
    IL_00bf:  box        [mscorlib]System.DateTime
    IL_00c4:  call       object CSharpToNative.DefineTest::DefineVariable(object)
    IL_00c9:  stloc.s    datea
    .line 22,22 : 13,37 ''
    IL_00cb:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site1'
    IL_00d0:  brtrue.s   IL_0117

    IL_00d2:  ldc.i4     0x100
    IL_00d7:  ldstr      "WriteLine"
    IL_00dc:  ldnull
    IL_00dd:  ldtoken    CSharpToNative.DefineTest
    IL_00e2:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_00e7:  ldc.i4.2
    IL_00e8:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_00ed:  stloc.s    CS$0$0006
    IL_00ef:  ldloc.s    CS$0$0006
    IL_00f1:  ldc.i4.0
    IL_00f2:  ldc.i4.s   33
    IL_00f4:  ldnull
    IL_00f5:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_00fa:  stelem.ref
    IL_00fb:  ldloc.s    CS$0$0006
    IL_00fd:  ldc.i4.1
    IL_00fe:  ldc.i4.0
    IL_00ff:  ldnull
    IL_0100:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_0105:  stelem.ref
    IL_0106:  ldloc.s    CS$0$0006
    IL_0108:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_010d:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_0112:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site1'
    IL_0117:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site1'
    IL_011c:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Target
    IL_0121:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site1'
    IL_0126:  ldtoken    [mscorlib]System.Console
    IL_012b:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0130:  ldloc.0
    IL_0131:  callvirt   instance void class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>::Invoke(!0,
                                                                                                                                                                               !1,
                                                                                                                                                                               !2)
    .line 23,23 : 13,38 ''
    IL_0136:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site2'
    IL_013b:  brtrue.s   IL_0182

    IL_013d:  ldc.i4     0x100
    IL_0142:  ldstr      "WriteLine"
    IL_0147:  ldnull
    IL_0148:  ldtoken    CSharpToNative.DefineTest
    IL_014d:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0152:  ldc.i4.2
    IL_0153:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_0158:  stloc.s    CS$0$0007
    IL_015a:  ldloc.s    CS$0$0007
    IL_015c:  ldc.i4.0
    IL_015d:  ldc.i4.s   33
    IL_015f:  ldnull
    IL_0160:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_0165:  stelem.ref
    IL_0166:  ldloc.s    CS$0$0007
    IL_0168:  ldc.i4.1
    IL_0169:  ldc.i4.0
    IL_016a:  ldnull
    IL_016b:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_0170:  stelem.ref
    IL_0171:  ldloc.s    CS$0$0007
    IL_0173:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_0178:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_017d:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site2'
    IL_0182:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site2'
    IL_0187:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Target
    IL_018c:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site2'
    IL_0191:  ldtoken    [mscorlib]System.Console
    IL_0196:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_019b:  ldloc.1
    IL_019c:  callvirt   instance void class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>::Invoke(!0,
                                                                                                                                                                               !1,
                                                                                                                                                                               !2)
    .line 24,24 : 13,40 ''
    IL_01a1:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site3'
    IL_01a6:  brtrue.s   IL_01ed

    IL_01a8:  ldc.i4     0x100
    IL_01ad:  ldstr      "WriteLine"
    IL_01b2:  ldnull
    IL_01b3:  ldtoken    CSharpToNative.DefineTest
    IL_01b8:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_01bd:  ldc.i4.2
    IL_01be:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_01c3:  stloc.s    CS$0$0008
    IL_01c5:  ldloc.s    CS$0$0008
    IL_01c7:  ldc.i4.0
    IL_01c8:  ldc.i4.s   33
    IL_01ca:  ldnull
    IL_01cb:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_01d0:  stelem.ref
    IL_01d1:  ldloc.s    CS$0$0008
    IL_01d3:  ldc.i4.1
    IL_01d4:  ldc.i4.0
    IL_01d5:  ldnull
    IL_01d6:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_01db:  stelem.ref
    IL_01dc:  ldloc.s    CS$0$0008
    IL_01de:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_01e3:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_01e8:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site3'
    IL_01ed:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site3'
    IL_01f2:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Target
    IL_01f7:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site3'
    IL_01fc:  ldtoken    [mscorlib]System.Console
    IL_0201:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0206:  ldloc.2
    IL_0207:  callvirt   instance void class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>::Invoke(!0,
                                                                                                                                                                               !1,
                                                                                                                                                                               !2)
    .line 25,25 : 13,38 ''
    IL_020c:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site4'
    IL_0211:  brtrue.s   IL_0258

    IL_0213:  ldc.i4     0x100
    IL_0218:  ldstr      "WriteLine"
    IL_021d:  ldnull
    IL_021e:  ldtoken    CSharpToNative.DefineTest
    IL_0223:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0228:  ldc.i4.2
    IL_0229:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_022e:  stloc.s    CS$0$0009
    IL_0230:  ldloc.s    CS$0$0009
    IL_0232:  ldc.i4.0
    IL_0233:  ldc.i4.s   33
    IL_0235:  ldnull
    IL_0236:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_023b:  stelem.ref
    IL_023c:  ldloc.s    CS$0$0009
    IL_023e:  ldc.i4.1
    IL_023f:  ldc.i4.0
    IL_0240:  ldnull
    IL_0241:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_0246:  stelem.ref
    IL_0247:  ldloc.s    CS$0$0009
    IL_0249:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_024e:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_0253:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site4'
    IL_0258:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site4'
    IL_025d:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Target
    IL_0262:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site4'
    IL_0267:  ldtoken    [mscorlib]System.Console
    IL_026c:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0271:  ldloc.3
    IL_0272:  callvirt   instance void class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>::Invoke(!0,
                                                                                                                                                                               !1,
                                                                                                                                                                               !2)
    .line 26,26 : 13,40 ''
    IL_0277:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site5'
    IL_027c:  brtrue.s   IL_02c3

    IL_027e:  ldc.i4     0x100
    IL_0283:  ldstr      "WriteLine"
    IL_0288:  ldnull
    IL_0289:  ldtoken    CSharpToNative.DefineTest
    IL_028e:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0293:  ldc.i4.2
    IL_0294:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_0299:  stloc.s    CS$0$0010
    IL_029b:  ldloc.s    CS$0$0010
    IL_029d:  ldc.i4.0
    IL_029e:  ldc.i4.s   33
    IL_02a0:  ldnull
    IL_02a1:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_02a6:  stelem.ref
    IL_02a7:  ldloc.s    CS$0$0010
    IL_02a9:  ldc.i4.1
    IL_02aa:  ldc.i4.0
    IL_02ab:  ldnull
    IL_02ac:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_02b1:  stelem.ref
    IL_02b2:  ldloc.s    CS$0$0010
    IL_02b4:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_02b9:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_02be:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site5'
    IL_02c3:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site5'
    IL_02c8:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Target
    IL_02cd:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site5'
    IL_02d2:  ldtoken    [mscorlib]System.Console
    IL_02d7:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_02dc:  ldloc.s    stringa
    IL_02de:  callvirt   instance void class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>::Invoke(!0,
                                                                                                                                                                               !1,
                                                                                                                                                                               !2)
    .line 27,27 : 13,38 ''
    IL_02e3:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site6'
    IL_02e8:  brtrue.s   IL_032f

    IL_02ea:  ldc.i4     0x100
    IL_02ef:  ldstr      "WriteLine"
    IL_02f4:  ldnull
    IL_02f5:  ldtoken    CSharpToNative.DefineTest
    IL_02fa:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_02ff:  ldc.i4.2
    IL_0300:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_0305:  stloc.s    CS$0$0011
    IL_0307:  ldloc.s    CS$0$0011
    IL_0309:  ldc.i4.0
    IL_030a:  ldc.i4.s   33
    IL_030c:  ldnull
    IL_030d:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_0312:  stelem.ref
    IL_0313:  ldloc.s    CS$0$0011
    IL_0315:  ldc.i4.1
    IL_0316:  ldc.i4.0
    IL_0317:  ldnull
    IL_0318:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_031d:  stelem.ref
    IL_031e:  ldloc.s    CS$0$0011
    IL_0320:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_0325:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_032a:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site6'
    IL_032f:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site6'
    IL_0334:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Target
    IL_0339:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site6'
    IL_033e:  ldtoken    [mscorlib]System.Console
    IL_0343:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0348:  ldloc.s    longa
    IL_034a:  callvirt   instance void class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>::Invoke(!0,
                                                                                                                                                                               !1,
                                                                                                                                                                               !2)
    .line 28,28 : 13,39 ''
    IL_034f:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site7'
    IL_0354:  brtrue.s   IL_039b

    IL_0356:  ldc.i4     0x100
    IL_035b:  ldstr      "WriteLine"
    IL_0360:  ldnull
    IL_0361:  ldtoken    CSharpToNative.DefineTest
    IL_0366:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_036b:  ldc.i4.2
    IL_036c:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_0371:  stloc.s    CS$0$0012
    IL_0373:  ldloc.s    CS$0$0012
    IL_0375:  ldc.i4.0
    IL_0376:  ldc.i4.s   33
    IL_0378:  ldnull
    IL_0379:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_037e:  stelem.ref
    IL_037f:  ldloc.s    CS$0$0012
    IL_0381:  ldc.i4.1
    IL_0382:  ldc.i4.0
    IL_0383:  ldnull
    IL_0384:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_0389:  stelem.ref
    IL_038a:  ldloc.s    CS$0$0012
    IL_038c:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_0391:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_0396:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site7'
    IL_039b:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site7'
    IL_03a0:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Target
    IL_03a5:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site7'
    IL_03aa:  ldtoken    [mscorlib]System.Console
    IL_03af:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_03b4:  ldloc.s    floata
    IL_03b6:  callvirt   instance void class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>::Invoke(!0,
                                                                                                                                                                               !1,
                                                                                                                                                                               !2)
    .line 29,29 : 13,38 ''
    IL_03bb:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site8'
    IL_03c0:  brtrue.s   IL_0407

    IL_03c2:  ldc.i4     0x100
    IL_03c7:  ldstr      "WriteLine"
    IL_03cc:  ldnull
    IL_03cd:  ldtoken    CSharpToNative.DefineTest
    IL_03d2:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_03d7:  ldc.i4.2
    IL_03d8:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_03dd:  stloc.s    CS$0$0013
    IL_03df:  ldloc.s    CS$0$0013
    IL_03e1:  ldc.i4.0
    IL_03e2:  ldc.i4.s   33
    IL_03e4:  ldnull
    IL_03e5:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_03ea:  stelem.ref
    IL_03eb:  ldloc.s    CS$0$0013
    IL_03ed:  ldc.i4.1
    IL_03ee:  ldc.i4.0
    IL_03ef:  ldnull
    IL_03f0:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_03f5:  stelem.ref
    IL_03f6:  ldloc.s    CS$0$0013
    IL_03f8:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_03fd:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_0402:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site8'
    IL_0407:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site8'
    IL_040c:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>>::Target
    IL_0411:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>> CSharpToNative.DefineTest/'<run>o__SiteContainer0'::'<>p__Site8'
    IL_0416:  ldtoken    [mscorlib]System.Console
    IL_041b:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0420:  ldloc.s    datea
    IL_0422:  callvirt   instance void class [mscorlib]System.Action`3<class [System.Core]System.Runtime.CompilerServices.CallSite,class [mscorlib]System.Type,object>::Invoke(!0,
                                                                                                                                                                               !1,
                                                                                                                                                                               !2)
    .line 31,31 : 9,10 ''
    IL_0427:  ret
  } // end of method DefineTest::run

  .method private hidebysig static object 
          DefineVariable([opt] object val) cil managed
  {
    .param [0]
    .custom instance void [System.Core]System.Runtime.CompilerServices.DynamicAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [1] = nullref
    // Code size       4 (0x4)
    .maxstack  1
    .locals init ([0] object memory)
    .line 34,34 : 13,34 ''
    IL_0000:  ldarg.0
    IL_0001:  stloc.0
    .line 35,35 : 13,27 ''
    IL_0002:  ldloc.0
    IL_0003:  ret
  } // end of method DefineTest::DefineVariable

} // end of class CSharpToNative.DefineTest

.class public auto ansi sealed CSharpToNative.EnumAccessModifiers
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype CSharpToNative.EnumAccessModifiers NO_MODIFIER = int32(0xFFFFFFFF)
  .field public static literal valuetype CSharpToNative.EnumAccessModifiers PUBLIC = int32(0x00000000)
  .field public static literal valuetype CSharpToNative.EnumAccessModifiers PROTECTED = int32(0x00000001)
  .field public static literal valuetype CSharpToNative.EnumAccessModifiers PRIVATE = int32(0x00000002)
} // end of class CSharpToNative.EnumAccessModifiers

.class private auto ansi sealed CSharpToNative.EnumKeywords
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype CSharpToNative.EnumKeywords PUBLIC = int32(0x00000000)
  .field public static literal valuetype CSharpToNative.EnumKeywords PROTECTED = int32(0x00000001)
  .field public static literal valuetype CSharpToNative.EnumKeywords PRIVATE = int32(0x00000002)
  .field public static literal valuetype CSharpToNative.EnumKeywords CONST = int32(0x00000003)
  .field public static literal valuetype CSharpToNative.EnumKeywords VOLATILE = int32(0x00000004)
  .field public static literal valuetype CSharpToNative.EnumKeywords UNSIGNED = int32(0x00000005)
  .field public static literal valuetype CSharpToNative.EnumKeywords UNSAFE = int32(0x00000006)
  .field public static literal valuetype CSharpToNative.EnumKeywords NEW = int32(0x00000007)
  .field public static literal valuetype CSharpToNative.EnumKeywords CONTINUE = int32(0x00000008)
  .field public static literal valuetype CSharpToNative.EnumKeywords BREAK = int32(0x00000009)
  .field public static literal valuetype CSharpToNative.EnumKeywords FOR = int32(0x0000000A)
  .field public static literal valuetype CSharpToNative.EnumKeywords IF = int32(0x0000000B)
  .field public static literal valuetype CSharpToNative.EnumKeywords ELSE = int32(0x0000000C)
  .field public static literal valuetype CSharpToNative.EnumKeywords ELSE_IF = int32(0x0000000D)
  .field public static literal valuetype CSharpToNative.EnumKeywords WHILE = int32(0x0000000E)
  .field public static literal valuetype CSharpToNative.EnumKeywords DO = int32(0x0000000F)
  .field public static literal valuetype CSharpToNative.EnumKeywords CLASS = int32(0x00000010)
  .field public static literal valuetype CSharpToNative.EnumKeywords ENUM = int32(0x00000011)
  .field public static literal valuetype CSharpToNative.EnumKeywords INTERFACE = int32(0x00000012)
  .field public static literal valuetype CSharpToNative.EnumKeywords STATIC = int32(0x00000013)
  .field public static literal valuetype CSharpToNative.EnumKeywords VOID = int32(0x00000014)
} // end of class CSharpToNative.EnumKeywords

.class private auto ansi sealed CSharpToNative.EnumLogicInstructions
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype CSharpToNative.EnumLogicInstructions AND = int32(0x00000000)
  .field public static literal valuetype CSharpToNative.EnumLogicInstructions OR = int32(0x00000001)
  .field public static literal valuetype CSharpToNative.EnumLogicInstructions XOR = int32(0x00000002)
  .field public static literal valuetype CSharpToNative.EnumLogicInstructions NOT = int32(0x00000003)
} // end of class CSharpToNative.EnumLogicInstructions

.class private auto ansi sealed CSharpToNative.EnumNumericalInstructions
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions ADD = int32(0x00000001)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions ADC = int32(0x00000002)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions SUB = int32(0x00000003)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions SBB = int32(0x00000004)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions IMUL = int32(0x00000005)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions MUL = int32(0x00000006)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions IDIV = int32(0x00000007)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions DIV = int32(0x00000008)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions INC = int32(0x00000009)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions DEC = int32(0x0000000A)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions NEG = int32(0x0000000B)
  .field public static literal valuetype CSharpToNative.EnumNumericalInstructions CMP = int32(0x0000000C)
} // end of class CSharpToNative.EnumNumericalInstructions

.class public auto ansi sealed CSharpToNative.EnumOperator
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype CSharpToNative.EnumOperator NO_OPERATOR = int32(0xFFFFFFFF)
  .field public static literal valuetype CSharpToNative.EnumOperator ASSIGNMEMT = int32(0x00000000)
  .field public static literal valuetype CSharpToNative.EnumOperator EQUALITY = int32(0x00000001)
  .field public static literal valuetype CSharpToNative.EnumOperator NOT_EQUAL = int32(0x00000002)
  .field public static literal valuetype CSharpToNative.EnumOperator UNARY_PLUS = int32(0x00000003)
  .field public static literal valuetype CSharpToNative.EnumOperator UNARY_MINUS = int32(0x00000004)
  .field public static literal valuetype CSharpToNative.EnumOperator UNARY_MULTIPLY = int32(0x00000005)
  .field public static literal valuetype CSharpToNative.EnumOperator UNARY_DIVIDE = int32(0x00000006)
  .field public static literal valuetype CSharpToNative.EnumOperator INCREMENT_PREFIX = int32(0x00000007)
  .field public static literal valuetype CSharpToNative.EnumOperator INCREMENT_POSTFIX = int32(0x00000008)
  .field public static literal valuetype CSharpToNative.EnumOperator DECREMENT_PREFIX = int32(0x00000009)
  .field public static literal valuetype CSharpToNative.EnumOperator DECREMENT_POSTFIX = int32(0x0000000A)
  .field public static literal valuetype CSharpToNative.EnumOperator GREATER_THAN = int32(0x0000000B)
  .field public static literal valuetype CSharpToNative.EnumOperator LESS_THAN = int32(0x0000000C)
  .field public static literal valuetype CSharpToNative.EnumOperator GREATER_THAN_AND_EQUAL = int32(0x0000000D)
  .field public static literal valuetype CSharpToNative.EnumOperator LESS_THAN_AND_EQUAL = int32(0x0000000E)
  .field public static literal valuetype CSharpToNative.EnumOperator LOGICAL_AND = int32(0x0000000F)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_AND = int32(0x00000010)
  .field public static literal valuetype CSharpToNative.EnumOperator LOGICAL_OR = int32(0x00000011)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_OR = int32(0x00000012)
  .field public static literal valuetype CSharpToNative.EnumOperator LOGICAL_NOT = int32(0x00000013)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_NOT = int32(0x00000014)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_XOR = int32(0x00000015)
  .field public static literal valuetype CSharpToNative.EnumOperator ADDITION_ASSIGNMENT = int32(0x00000016)
  .field public static literal valuetype CSharpToNative.EnumOperator SUBTRACTION_ASSIGNMENT = int32(0x00000017)
  .field public static literal valuetype CSharpToNative.EnumOperator MULTIPLICATION_ASSIGNMENT = int32(0x00000018)
  .field public static literal valuetype CSharpToNative.EnumOperator DIVISION_ASSIGNMENT = int32(0x00000019)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_LEFT_SHIFT = int32(0x0000001A)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_RIGHT_SHIFT = int32(0x0000001B)
  .field public static literal valuetype CSharpToNative.EnumOperator MODULO_ASSIGNMENT = int32(0x0000001C)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_AND_ASSIGNMENT = int32(0x0000001D)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_OR_ASSIGNMENT = int32(0x0000001E)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_XOR_ASSIGNMENT = int32(0x0000001F)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_LEFT_SHIFT_ASSIGNMENT = int32(0x00000020)
  .field public static literal valuetype CSharpToNative.EnumOperator BITWISE_RIGHT_SHIFT_ASSIGNMENT = int32(0x00000021)
  .field public static literal valuetype CSharpToNative.EnumOperator TERNARY = int32(0x00000022)
  .field public static literal valuetype CSharpToNative.EnumOperator DOT = int32(0x00000023)
  .field public static literal valuetype CSharpToNative.EnumOperator COMMA = int32(0x00000024)
} // end of class CSharpToNative.EnumOperator

.class public auto ansi sealed CSharpToNative.EnumTypes
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype CSharpToNative.EnumTypes NO_TYPE = int32(0xFFFFFFFF)
  .field public static literal valuetype CSharpToNative.EnumTypes INT = int32(0x00000000)
  .field public static literal valuetype CSharpToNative.EnumTypes STRING = int32(0x00000001)
  .field public static literal valuetype CSharpToNative.EnumTypes BOOL = int32(0x00000002)
  .field public static literal valuetype CSharpToNative.EnumTypes DOUBLE = int32(0x00000003)
  .field public static literal valuetype CSharpToNative.EnumTypes FLOAT = int32(0x00000004)
  .field public static literal valuetype CSharpToNative.EnumTypes LONG = int32(0x00000005)
  .field public static literal valuetype CSharpToNative.EnumTypes SHORT = int32(0x00000006)
  .field public static literal valuetype CSharpToNative.EnumTypes BYTE = int32(0x00000007)
  .field public static literal valuetype CSharpToNative.EnumTypes CHAR = int32(0x00000008)
  .field public static literal valuetype CSharpToNative.EnumTypes DECIMAL = int32(0x00000009)
  .field public static literal valuetype CSharpToNative.EnumTypes DATE = int32(0x0000000A)
  .field public static literal valuetype CSharpToNative.EnumTypes SINGLE = int32(0x0000000B)
  .field public static literal valuetype CSharpToNative.EnumTypes OBJECT = int32(0x0000000C)
} // end of class CSharpToNative.EnumTypes

.class private auto ansi beforefieldinit CSharpToNative.Instruction
       extends [mscorlib]System.Object
{
  .field private int32 Opcode
  .field private string[] Operands
  .method private hidebysig specialname rtspecialname 
          instance void  .ctor(int32 opcode,
                               string[] operands) cil managed
  {
    // Code size       48 (0x30)
    .maxstack  3
    .locals init ([0] string hexop)
    .line 14,14 : 9,51 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\Instruction.cs'
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    .line 16,16 : 13,54 ''
    IL_0006:  ldarg.0
    IL_0007:  ldflda     int32 CSharpToNative.Instruction::Opcode
    IL_000c:  ldstr      "X"
    IL_0011:  call       instance string [mscorlib]System.Int32::ToString(string)
    IL_0016:  stloc.0
    .line 18,18 : 13,88 ''
    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4     0x203
    IL_001e:  call       int32 [mscorlib]System.Int32::Parse(string,
                                                             valuetype [mscorlib]System.Globalization.NumberStyles)
    IL_0023:  stfld      int32 CSharpToNative.Instruction::Opcode
    .line 19,19 : 13,38 ''
    IL_0028:  ldarg.0
    IL_0029:  ldarg.2
    IL_002a:  stfld      string[] CSharpToNative.Instruction::Operands
    .line 20,20 : 9,10 ''
    IL_002f:  ret
  } // end of method Instruction::.ctor

  .method private hidebysig specialname rtspecialname 
          instance void  .ctor(int32 opcode) cil managed
  {
    // Code size       48 (0x30)
    .maxstack  3
    .locals init ([0] string hexop)
    .line 22,22 : 9,32 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    .line 24,24 : 13,54 ''
    IL_0006:  ldarg.0
    IL_0007:  ldflda     int32 CSharpToNative.Instruction::Opcode
    IL_000c:  ldstr      "X"
    IL_0011:  call       instance string [mscorlib]System.Int32::ToString(string)
    IL_0016:  stloc.0
    .line 25,25 : 13,89 ''
    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4     0x203
    IL_001e:  call       int32 [mscorlib]System.Int32::Parse(string,
                                                             valuetype [mscorlib]System.Globalization.NumberStyles)
    IL_0023:  stfld      int32 CSharpToNative.Instruction::Opcode
    .line 26,26 : 13,34 ''
    IL_0028:  ldarg.0
    IL_0029:  ldnull
    IL_002a:  stfld      string[] CSharpToNative.Instruction::Operands
    .line 27,27 : 9,10 ''
    IL_002f:  ret
  } // end of method Instruction::.ctor

  .method private hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       106 (0x6a)
    .maxstack  1
    .locals init ([0] class [mscorlib]System.InvalidOperationException ex)
    .line 29,29 : 9,22 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    .line 33,33 : 17,112 ''
    .try
    {
      .try
      {
        IL_0006:  ldstr      "Cannot Create Instruction Without an Opcode or Ope"
        + "rands"
        IL_000b:  newobj     instance void [mscorlib]System.InvalidOperationException::.ctor(string)
        IL_0010:  throw

        .line 35,35 : 13,49 ''
      }  // end .try
      catch [mscorlib]System.InvalidOperationException 
      {
        IL_0011:  stloc.0
        .line 37,37 : 18,65 ''
        IL_0012:  ldc.i4.4
        IL_0013:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
        .line 38,38 : 18,50 ''
        IL_0018:  ldloc.0
        IL_0019:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Exception::GetType()
        IL_001e:  call       void [mscorlib]System.Console::WriteLine(object)
        .line 39,39 : 18,48 ''
        IL_0023:  ldloc.0
        IL_0024:  callvirt   instance string [mscorlib]System.Exception::get_Message()
        IL_0029:  call       void [mscorlib]System.Console::WriteLine(string)
        .line 40,40 : 18,51 ''
        IL_002e:  ldloc.0
        IL_002f:  callvirt   instance string [mscorlib]System.Exception::get_StackTrace()
        IL_0034:  call       void [mscorlib]System.Console::WriteLine(string)
        .line 41,41 : 18,39 ''
        IL_0039:  call       void [mscorlib]System.Console::ResetColor()
        .line 16707566,16707566 : 0,0 ''
        IL_003e:  leave.s    IL_0040

      }  // end handler
      IL_0040:  leave.s    IL_0069

      .line 45,45 : 18,65 ''
    }  // end .try
    finally
    {
      IL_0042:  ldc.i4.s   13
      IL_0044:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
      .line 46,46 : 18,147 ''
      IL_0049:  ldstr      "A FATAL ERROR HAS OCCURED DURING CODE GENERATION :"
      + " CANNOT CREATE INSTRUCTION WITHOUT AN OPCODE OR OPERANDS "
      IL_004e:  call       void [mscorlib]System.Console::WriteLine(string)
      .line 47,47 : 18,39 ''
      IL_0053:  call       void [mscorlib]System.Console::ResetColor()
      .line 48,48 : 18,54 ''
      IL_0058:  ldc.i4     0x9c4
      IL_005d:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
      .line 49,49 : 18,39 ''
      IL_0062:  ldc.i4.m1
      IL_0063:  call       void [mscorlib]System.Environment::Exit(int32)
      .line 16707566,16707566 : 0,0 ''
      IL_0068:  endfinally
      .line 52,52 : 9,10 ''
    }  // end handler
    IL_0069:  ret
  } // end of method Instruction::.ctor

  .method public hidebysig instance int32 
          getOpcode() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 55,55 : 13,32 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 CSharpToNative.Instruction::Opcode
    IL_0006:  ret
  } // end of method Instruction::getOpcode

  .method public hidebysig instance string[] 
          getOperands() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 60,60 : 13,34 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string[] CSharpToNative.Instruction::Operands
    IL_0006:  ret
  } // end of method Instruction::getOperands

} // end of class CSharpToNative.Instruction

.class private auto ansi beforefieldinit CSharpToNative.Lexer
       extends [mscorlib]System.Object
{
  .field public static string[] pubtokens
  .field private static class [mscorlib]System.Collections.Generic.List`1<string> operators
  .field private static class [mscorlib]System.Collections.Generic.List`1<string> keywords
  .field private static class [mscorlib]System.Collections.Generic.List`1<string> types
  .field private static string[] lines
  .field private static class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumOperator> ops
  .field private static class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords> kywrds
  .field private static class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumTypes> typedefs
  .field private static class [mscorlib]System.Collections.Generic.List`1<string> usertypedefs
  .field private static class [mscorlib]System.IO.StreamWriter writer
  .field private static string[] lhs
  .field private static bool isafunction
  .field private static class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> integersymboltable
  .field private static class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> stringsymboltable
  .field private static class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>> functionsymboltable
  .field private static class [mscorlib]System.Func`2<string,bool> 'CS$<>9__CachedAnonymousMethodDelegate1'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static void  Start(string[]& linespar,
                                              int32& i,
                                              class [mscorlib]System.IO.StreamWriter writerpar) cil managed
  {
    // Code size       116 (0x74)
    .maxstack  2
    .line 29,29 : 13,30 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\Lexer.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldind.ref
    IL_0002:  stsfld     string[] CSharpToNative.Lexer::lines
    .line 30,30 : 13,32 ''
    IL_0007:  ldarg.2
    IL_0008:  stsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    .line 31,31 : 13,87 ''
    IL_000d:  ldarg.1
    IL_000e:  call       bool CSharpToNative.Lexer::checkkeywords(int32&)
    IL_0013:  brfalse.s  IL_0025

    IL_0015:  ldarg.1
    IL_0016:  call       bool CSharpToNative.Lexer::checkoperators(int32&)
    IL_001b:  brfalse.s  IL_0025

    IL_001d:  ldarg.1
    IL_001e:  call       bool CSharpToNative.Lexer::checktypes(int32&)
    IL_0023:  brtrue.s   IL_0034

    .line 33,33 : 17,54 ''
    IL_0025:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Error()
    IL_002a:  ldstr      "Invalid Input"
    IL_002f:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    .line 36,36 : 13,48 ''
    IL_0034:  ldc.i4.s   100
    IL_0036:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    .line 37,37 : 13,53 ''
    IL_003b:  ldarg.1
    IL_003c:  call       bool CSharpToNative.Lexer::checkkeywords(int32&)
    IL_0041:  call       void [mscorlib]System.Console::WriteLine(bool)
    .line 38,38 : 13,48 ''
    IL_0046:  ldc.i4.s   100
    IL_0048:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    .line 39,39 : 13,54 ''
    IL_004d:  ldarg.1
    IL_004e:  call       bool CSharpToNative.Lexer::checkoperators(int32&)
    IL_0053:  call       void [mscorlib]System.Console::WriteLine(bool)
    .line 40,40 : 13,48 ''
    IL_0058:  ldc.i4.s   100
    IL_005a:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    .line 42,42 : 13,30 ''
    IL_005f:  ldsfld     string[] CSharpToNative.Lexer::lhs
    IL_0064:  call       void CSharpToNative.Lexer::printTokens(string[])
    .line 43,43 : 13,32 ''
    IL_0069:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_006e:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine()
    .line 44,44 : 9,10 ''
    IL_0073:  ret
  } // end of method Lexer::Start

  .method private hidebysig static bool  checkoperators(int32& i) cil managed
  {
    // Code size       204 (0xcc)
    .maxstack  4
    .locals init ([0] int32 cops,
             [1] int32 j,
             [2] int32 str,
             [3] char[] CS$0$0000,
             [4] object[] CS$0$0001)
    .line 50,50 : 13,26 ''
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    .line 51,51 : 18,28 ''
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    .line 16707566,16707566 : 0,0 ''
    IL_0004:  br         IL_00aa

    .line 53,53 : 17,53 ''
    IL_0009:  ldsfld     string[] CSharpToNative.Lexer::lines
    IL_000e:  ldarg.0
    IL_000f:  ldind.i4
    IL_0010:  ldelem.ref
    IL_0011:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::operators
    IL_0016:  ldloc.1
    IL_0017:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_001c:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_0021:  brfalse    IL_00a6

    .line 55,55 : 21,28 ''
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  stloc.0
    .line 57,57 : 21,46 ''
    IL_002a:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumOperator> CSharpToNative.Lexer::ops
    IL_002f:  ldloc.1
    IL_0030:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumOperator>::Add(!0)
    .line 58,58 : 21,67 ''
    IL_0035:  ldsfld     string[] CSharpToNative.Lexer::lines
    IL_003a:  ldarg.0
    IL_003b:  ldind.i4
    IL_003c:  ldelem.ref
    IL_003d:  ldc.i4.2
    IL_003e:  newarr     [mscorlib]System.Char
    IL_0043:  stloc.3
    IL_0044:  ldloc.3
    IL_0045:  ldc.i4.0
    IL_0046:  ldc.i4.s   32
    IL_0048:  stelem.i2
    IL_0049:  ldloc.3
    IL_004a:  ldc.i4.1
    IL_004b:  ldc.i4.s   59
    IL_004d:  stelem.i2
    IL_004e:  ldloc.3
    IL_004f:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_0054:  stsfld     string[] CSharpToNative.Lexer::lhs
    .line 59,59 : 26,39 ''
    IL_0059:  ldc.i4.0
    IL_005a:  stloc.2
    .line 16707566,16707566 : 0,0 ''
    IL_005b:  br.s       IL_009c

    .line 61,61 : 25,75 ''
    IL_005d:  ldc.i4.4
    IL_005e:  newarr     [mscorlib]System.Object
    IL_0063:  stloc.s    CS$0$0001
    IL_0065:  ldloc.s    CS$0$0001
    IL_0067:  ldc.i4.0
    IL_0068:  ldstr      "lhs "
    IL_006d:  stelem.ref
    IL_006e:  ldloc.s    CS$0$0001
    IL_0070:  ldc.i4.1
    IL_0071:  ldloc.2
    IL_0072:  box        [mscorlib]System.Int32
    IL_0077:  stelem.ref
    IL_0078:  ldloc.s    CS$0$0001
    IL_007a:  ldc.i4.2
    IL_007b:  ldstr      "= "
    IL_0080:  stelem.ref
    IL_0081:  ldloc.s    CS$0$0001
    IL_0083:  ldc.i4.3
    IL_0084:  ldsfld     string[] CSharpToNative.Lexer::lhs
    IL_0089:  ldloc.2
    IL_008a:  ldelem.ref
    IL_008b:  stelem.ref
    IL_008c:  ldloc.s    CS$0$0001
    IL_008e:  call       string [mscorlib]System.String::Concat(object[])
    IL_0093:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 59,59 : 58,63 ''
    IL_0098:  ldloc.2
    IL_0099:  ldc.i4.1
    IL_009a:  add
    IL_009b:  stloc.2
    .line 59,59 : 40,56 ''
    IL_009c:  ldloc.2
    IL_009d:  ldsfld     string[] CSharpToNative.Lexer::lhs
    IL_00a2:  ldlen
    IL_00a3:  conv.i4
    IL_00a4:  blt.s      IL_005d

    .line 51,51 : 50,53 ''
    IL_00a6:  ldloc.1
    IL_00a7:  ldc.i4.1
    IL_00a8:  add
    IL_00a9:  stloc.1
    .line 51,51 : 29,48 ''
    IL_00aa:  ldloc.1
    IL_00ab:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::operators
    IL_00b0:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_00b5:  blt        IL_0009

    .line 70,70 : 13,25 ''
    IL_00ba:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumOperator> CSharpToNative.Lexer::ops
    IL_00bf:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumOperator>::Clear()
    .line 71,71 : 13,46 ''
    IL_00c4:  ldloc.0
    IL_00c5:  ldc.i4.0
    IL_00c6:  bgt.s      IL_00ca

    IL_00c8:  ldc.i4.0
    IL_00c9:  ret

    IL_00ca:  ldc.i4.1
    IL_00cb:  ret
  } // end of method Lexer::checkoperators

  .method private hidebysig static bool  checkkeywords(int32& i) cil managed
  {
    // Code size       296 (0x128)
    .maxstack  4
    .locals init ([0] int32 ckeywords,
             [1] bool accessmodifier,
             [2] int32 j,
             [3] int32 str,
             [4] int32 k,
             [5] char[] CS$0$0000,
             [6] object[] CS$0$0001)
    .line 78,78 : 13,31 ''
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    .line 79,79 : 13,41 ''
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    .line 80,80 : 18,28 ''
    IL_0004:  ldc.i4.0
    IL_0005:  stloc.2
    .line 16707566,16707566 : 0,0 ''
    IL_0006:  br         IL_00d2

    .line 82,82 : 17,52 ''
    IL_000b:  ldsfld     string[] CSharpToNative.Lexer::lines
    IL_0010:  ldarg.0
    IL_0011:  ldind.i4
    IL_0012:  ldelem.ref
    IL_0013:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::keywords
    IL_0018:  ldloc.2
    IL_0019:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_001e:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_0023:  brfalse    IL_00ce

    .line 84,84 : 21,50 ''
    IL_0028:  ldloc.2
    IL_0029:  ldc.i4.2
    IL_002a:  bgt.s      IL_0033

    IL_002c:  ldloc.1
    IL_002d:  brtrue.s   IL_0033

    .line 86,86 : 25,47 ''
    IL_002f:  ldc.i4.1
    IL_0030:  stloc.1
    .line 16707566,16707566 : 0,0 ''
    IL_0031:  br.s       IL_004a

    .line 88,88 : 26,55 ''
    IL_0033:  ldloc.2
    IL_0034:  ldc.i4.2
    IL_0035:  bgt.s      IL_004a

    IL_0037:  ldloc.1
    IL_0038:  brfalse.s  IL_004a

    .line 90,90 : 25,79 ''
    IL_003a:  ldstr      " ERROR Too many access modifiers"
    IL_003f:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 91,91 : 25,46 ''
    IL_0044:  ldc.i4.m1
    IL_0045:  call       void [mscorlib]System.Environment::Exit(int32)
    .line 94,94 : 21,33 ''
    IL_004a:  ldloc.0
    IL_004b:  ldc.i4.1
    IL_004c:  add
    IL_004d:  stloc.0
    .line 96,96 : 21,49 ''
    IL_004e:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords> CSharpToNative.Lexer::kywrds
    IL_0053:  ldloc.2
    IL_0054:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords>::Add(!0)
    .line 97,97 : 21,67 ''
    IL_0059:  ldsfld     string[] CSharpToNative.Lexer::lines
    IL_005e:  ldarg.0
    IL_005f:  ldind.i4
    IL_0060:  ldelem.ref
    IL_0061:  ldc.i4.2
    IL_0062:  newarr     [mscorlib]System.Char
    IL_0067:  stloc.s    CS$0$0000
    IL_0069:  ldloc.s    CS$0$0000
    IL_006b:  ldc.i4.0
    IL_006c:  ldc.i4.s   32
    IL_006e:  stelem.i2
    IL_006f:  ldloc.s    CS$0$0000
    IL_0071:  ldc.i4.1
    IL_0072:  ldc.i4.s   59
    IL_0074:  stelem.i2
    IL_0075:  ldloc.s    CS$0$0000
    IL_0077:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_007c:  stsfld     string[] CSharpToNative.Lexer::lhs
    .line 98,98 : 26,39 ''
    IL_0081:  ldc.i4.0
    IL_0082:  stloc.3
    .line 16707566,16707566 : 0,0 ''
    IL_0083:  br.s       IL_00c4

    .line 100,100 : 25,75 ''
    IL_0085:  ldc.i4.4
    IL_0086:  newarr     [mscorlib]System.Object
    IL_008b:  stloc.s    CS$0$0001
    IL_008d:  ldloc.s    CS$0$0001
    IL_008f:  ldc.i4.0
    IL_0090:  ldstr      "lhs "
    IL_0095:  stelem.ref
    IL_0096:  ldloc.s    CS$0$0001
    IL_0098:  ldc.i4.1
    IL_0099:  ldloc.3
    IL_009a:  box        [mscorlib]System.Int32
    IL_009f:  stelem.ref
    IL_00a0:  ldloc.s    CS$0$0001
    IL_00a2:  ldc.i4.2
    IL_00a3:  ldstr      "= "
    IL_00a8:  stelem.ref
    IL_00a9:  ldloc.s    CS$0$0001
    IL_00ab:  ldc.i4.3
    IL_00ac:  ldsfld     string[] CSharpToNative.Lexer::lhs
    IL_00b1:  ldloc.3
    IL_00b2:  ldelem.ref
    IL_00b3:  stelem.ref
    IL_00b4:  ldloc.s    CS$0$0001
    IL_00b6:  call       string [mscorlib]System.String::Concat(object[])
    IL_00bb:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 98,98 : 58,63 ''
    IL_00c0:  ldloc.3
    IL_00c1:  ldc.i4.1
    IL_00c2:  add
    IL_00c3:  stloc.3
    .line 98,98 : 40,56 ''
    IL_00c4:  ldloc.3
    IL_00c5:  ldsfld     string[] CSharpToNative.Lexer::lhs
    IL_00ca:  ldlen
    IL_00cb:  conv.i4
    IL_00cc:  blt.s      IL_0085

    .line 80,80 : 49,52 ''
    IL_00ce:  ldloc.2
    IL_00cf:  ldc.i4.1
    IL_00d0:  add
    IL_00d1:  stloc.2
    .line 80,80 : 29,47 ''
    IL_00d2:  ldloc.2
    IL_00d3:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::keywords
    IL_00d8:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_00dd:  blt        IL_000b

    .line 105,105 : 18,28 ''
    IL_00e2:  ldc.i4.0
    IL_00e3:  stloc.s    k
    .line 16707566,16707566 : 0,0 ''
    IL_00e5:  br.s       IL_0108

    .line 107,107 : 17,88 ''
    IL_00e7:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords> CSharpToNative.Lexer::kywrds
    IL_00ec:  ldloc.s    k
    IL_00ee:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<valuetype CSharpToNative.EnumKeywords>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                   int32)
    IL_00f3:  box        CSharpToNative.EnumKeywords
    IL_00f8:  call       string [mscorlib]System.Convert::ToString(object)
    IL_00fd:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 105,105 : 47,50 ''
    IL_0102:  ldloc.s    k
    IL_0104:  ldc.i4.1
    IL_0105:  add
    IL_0106:  stloc.s    k
    .line 105,105 : 29,45 ''
    IL_0108:  ldloc.s    k
    IL_010a:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords> CSharpToNative.Lexer::kywrds
    IL_010f:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords>::get_Count()
    IL_0114:  blt.s      IL_00e7

    .line 109,109 : 13,28 ''
    IL_0116:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords> CSharpToNative.Lexer::kywrds
    IL_011b:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords>::Clear()
    .line 110,110 : 13,51 ''
    IL_0120:  ldloc.0
    IL_0121:  ldc.i4.0
    IL_0122:  bgt.s      IL_0126

    IL_0124:  ldc.i4.0
    IL_0125:  ret

    IL_0126:  ldc.i4.1
    IL_0127:  ret
  } // end of method Lexer::checkkeywords

  .method private hidebysig static bool  checktypes(int32& i) cil managed
  {
    // Code size       204 (0xcc)
    .maxstack  4
    .locals init ([0] int32 ctypes,
             [1] int32 j,
             [2] int32 str,
             [3] char[] CS$0$0000,
             [4] object[] CS$0$0001)
    .line 116,116 : 13,28 ''
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    .line 117,117 : 18,28 ''
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    .line 16707566,16707566 : 0,0 ''
    IL_0004:  br         IL_00aa

    .line 119,119 : 17,51 ''
    IL_0009:  ldsfld     string[] CSharpToNative.Lexer::lines
    IL_000e:  ldarg.0
    IL_000f:  ldind.i4
    IL_0010:  ldelem.ref
    IL_0011:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::types
    IL_0016:  ldloc.1
    IL_0017:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_001c:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_0021:  brfalse    IL_00a6

    .line 121,121 : 21,30 ''
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  stloc.0
    .line 122,122 : 21,48 ''
    IL_002a:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumTypes> CSharpToNative.Lexer::typedefs
    IL_002f:  ldloc.1
    IL_0030:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumTypes>::Add(!0)
    .line 123,123 : 21,67 ''
    IL_0035:  ldsfld     string[] CSharpToNative.Lexer::lines
    IL_003a:  ldarg.0
    IL_003b:  ldind.i4
    IL_003c:  ldelem.ref
    IL_003d:  ldc.i4.2
    IL_003e:  newarr     [mscorlib]System.Char
    IL_0043:  stloc.3
    IL_0044:  ldloc.3
    IL_0045:  ldc.i4.0
    IL_0046:  ldc.i4.s   32
    IL_0048:  stelem.i2
    IL_0049:  ldloc.3
    IL_004a:  ldc.i4.1
    IL_004b:  ldc.i4.s   59
    IL_004d:  stelem.i2
    IL_004e:  ldloc.3
    IL_004f:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_0054:  stsfld     string[] CSharpToNative.Lexer::lhs
    .line 124,124 : 26,39 ''
    IL_0059:  ldc.i4.0
    IL_005a:  stloc.2
    .line 16707566,16707566 : 0,0 ''
    IL_005b:  br.s       IL_009c

    .line 126,126 : 25,76 ''
    IL_005d:  ldc.i4.4
    IL_005e:  newarr     [mscorlib]System.Object
    IL_0063:  stloc.s    CS$0$0001
    IL_0065:  ldloc.s    CS$0$0001
    IL_0067:  ldc.i4.0
    IL_0068:  ldstr      "lhs "
    IL_006d:  stelem.ref
    IL_006e:  ldloc.s    CS$0$0001
    IL_0070:  ldc.i4.1
    IL_0071:  ldloc.2
    IL_0072:  box        [mscorlib]System.Int32
    IL_0077:  stelem.ref
    IL_0078:  ldloc.s    CS$0$0001
    IL_007a:  ldc.i4.2
    IL_007b:  ldstr      " = "
    IL_0080:  stelem.ref
    IL_0081:  ldloc.s    CS$0$0001
    IL_0083:  ldc.i4.3
    IL_0084:  ldsfld     string[] CSharpToNative.Lexer::lhs
    IL_0089:  ldloc.2
    IL_008a:  ldelem.ref
    IL_008b:  stelem.ref
    IL_008c:  ldloc.s    CS$0$0001
    IL_008e:  call       string [mscorlib]System.String::Concat(object[])
    IL_0093:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 124,124 : 58,63 ''
    IL_0098:  ldloc.2
    IL_0099:  ldc.i4.1
    IL_009a:  add
    IL_009b:  stloc.2
    .line 124,124 : 40,56 ''
    IL_009c:  ldloc.2
    IL_009d:  ldsfld     string[] CSharpToNative.Lexer::lhs
    IL_00a2:  ldlen
    IL_00a3:  conv.i4
    IL_00a4:  blt.s      IL_005d

    .line 117,117 : 46,49 ''
    IL_00a6:  ldloc.1
    IL_00a7:  ldc.i4.1
    IL_00a8:  add
    IL_00a9:  stloc.1
    .line 117,117 : 29,44 ''
    IL_00aa:  ldloc.1
    IL_00ab:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::types
    IL_00b0:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_00b5:  blt        IL_0009

    .line 131,131 : 13,30 ''
    IL_00ba:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumTypes> CSharpToNative.Lexer::typedefs
    IL_00bf:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumTypes>::Clear()
    .line 132,132 : 13,48 ''
    IL_00c4:  ldloc.0
    IL_00c5:  ldc.i4.0
    IL_00c6:  bgt.s      IL_00ca

    IL_00c8:  ldc.i4.0
    IL_00c9:  ret

    IL_00ca:  ldc.i4.1
    IL_00cb:  ret
  } // end of method Lexer::checktypes

  .method private hidebysig static bool  isvardeclared(string[]& tokens,
                                                       int32& i) cil managed
  {
    // Code size       205 (0xcd)
    .maxstack  3
    .locals init ([0] string 'type',
             [1] int32 j,
             [2] int32 m)
    .line 137,137 : 13,81 ''
    IL_0000:  ldarg.0
    IL_0001:  ldind.ref
    IL_0002:  ldsfld     class [mscorlib]System.Func`2<string,bool> CSharpToNative.Lexer::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_0007:  brtrue.s   IL_001a

    IL_0009:  ldnull
    IL_000a:  ldftn      bool CSharpToNative.Lexer::'<isvardeclared>b__0'(string)
    IL_0010:  newobj     instance void class [mscorlib]System.Func`2<string,bool>::.ctor(object,
                                                                                         native int)
    IL_0015:  stsfld     class [mscorlib]System.Func`2<string,bool> CSharpToNative.Lexer::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_001a:  ldsfld     class [mscorlib]System.Func`2<string,bool> CSharpToNative.Lexer::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_001f:  call       !!0 [System.Core]System.Linq.Enumerable::FirstOrDefault<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                         class [mscorlib]System.Func`2<!!0,bool>)
    IL_0024:  stloc.0
    .line 138,138 : 13,63 ''
    IL_0025:  ldloc.0
    IL_0026:  brtrue     IL_00cb

    IL_002b:  ldarg.1
    IL_002c:  ldind.i4
    IL_002d:  ldarg.0
    IL_002e:  ldind.ref
    IL_002f:  ldlen
    IL_0030:  conv.i4
    IL_0031:  ldc.i4.1
    IL_0032:  sub
    IL_0033:  bge        IL_00cb

    .line 140,140 : 17,27 ''
    IL_0038:  ldarg.1
    IL_0039:  ldind.i4
    IL_003a:  stloc.1
    .line 141,141 : 22,32 ''
    IL_003b:  ldc.i4.0
    IL_003c:  stloc.2
    .line 16707566,16707566 : 0,0 ''
    IL_003d:  br.s       IL_004c

    .line 143,143 : 21,50 ''
    IL_003f:  ldarg.0
    IL_0040:  ldind.ref
    IL_0041:  ldloc.2
    IL_0042:  ldelem.ref
    IL_0043:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 141,141 : 52,55 ''
    IL_0048:  ldloc.2
    IL_0049:  ldc.i4.1
    IL_004a:  add
    IL_004b:  stloc.2
    .line 141,141 : 33,50 ''
    IL_004c:  ldloc.2
    IL_004d:  ldarg.0
    IL_004e:  ldind.ref
    IL_004f:  ldlen
    IL_0050:  conv.i4
    IL_0051:  blt.s      IL_003f

    .line 145,145 : 17,35 ''
    IL_0053:  call       valuetype [mscorlib]System.ConsoleKeyInfo [mscorlib]System.Console::ReadKey()
    IL_0058:  pop
    .line 146,146 : 21,25 ''
    IL_0059:  ldloc.1
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  stloc.1
    .line 147,147 : 17,50 ''
    IL_005d:  ldarg.0
    IL_005e:  ldloca.s   j
    IL_0060:  call       bool CSharpToNative.Lexer::isvardeclared(string[]&,
                                                                  int32&)
    IL_0065:  pop
    .line 149,149 : 17,43 ''
    IL_0066:  ldloc.0
    IL_0067:  ldstr      "string"
    IL_006c:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0071:  brfalse.s  IL_0094

    .line 151,151 : 21,55 ''
    IL_0073:  ldc.i4.s   50
    IL_0075:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    .line 152,152 : 21,100 ''
    IL_007a:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::stringsymboltable
    IL_007f:  ldarg.0
    IL_0080:  ldind.ref
    IL_0081:  ldarg.1
    IL_0082:  ldind.i4
    IL_0083:  ldelem.ref
    IL_0084:  newobj     instance void class [mscorlib]System.Tuple`1<string>::.ctor(!0)
    IL_0089:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::Contains(!0)
    IL_008e:  brtrue.s   IL_0092

    IL_0090:  ldc.i4.0
    IL_0091:  ret

    IL_0092:  ldc.i4.1
    IL_0093:  ret

    .line 154,154 : 22,45 ''
    IL_0094:  ldloc.0
    IL_0095:  ldstr      "int"
    IL_009a:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_009f:  brfalse.s  IL_00c2

    .line 156,156 : 21,55 ''
    IL_00a1:  ldc.i4.s   50
    IL_00a3:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    .line 157,157 : 21,103 ''
    IL_00a8:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::integersymboltable
    IL_00ad:  ldarg.0
    IL_00ae:  ldind.ref
    IL_00af:  ldarg.1
    IL_00b0:  ldind.i4
    IL_00b1:  ldelem.ref
    IL_00b2:  newobj     instance void class [mscorlib]System.Tuple`1<string>::.ctor(!0)
    IL_00b7:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::Contains(!0)
    IL_00bc:  brtrue.s   IL_00c0

    IL_00be:  ldc.i4.0
    IL_00bf:  ret

    IL_00c0:  ldc.i4.1
    IL_00c1:  ret

    .line 161,161 : 21,55 ''
    IL_00c2:  ldc.i4.s   50
    IL_00c4:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    .line 162,162 : 21,34 ''
    IL_00c9:  ldc.i4.0
    IL_00ca:  ret

    .line 168,168 : 17,30 ''
    IL_00cb:  ldc.i4.0
    IL_00cc:  ret
  } // end of method Lexer::isvardeclared

  .method private hidebysig static bool  checkisafunction(string[]& tokens,
                                                          int32& i) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    .line 175,175 : 13,62 ''
    IL_0000:  ldarg.0
    IL_0001:  ldind.ref
    IL_0002:  ldarg.1
    IL_0003:  ldind.i4
    IL_0004:  ldelem.ref
    IL_0005:  ldstr      "()"
    IL_000a:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_000f:  brtrue.s   IL_0013

    IL_0011:  ldc.i4.0
    IL_0012:  ret

    IL_0013:  ldc.i4.1
    IL_0014:  ret
  } // end of method Lexer::checkisafunction

  .method private hidebysig static void  printTokens(string[] tokens) cil managed
  {
    // Code size       917 (0x395)
    .maxstack  4
    .locals init ([0] int32 index,
             [1] int32 i,
             [2] int32 j,
             [3] int32 V_3,
             [4] class CSharpToNative.TypeMismatchException ex2,
             [5] string[] funcsplit)
    .line 181,181 : 13,32 ''
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string[] CSharpToNative.Lexer::pubtokens
    .line 182,182 : 13,39 ''
    IL_0006:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_000b:  ldstr      "START"
    IL_0010:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    .line 183,183 : 18,28 ''
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.1
    .line 16707566,16707566 : 0,0 ''
    IL_0017:  br         IL_0372

    .line 185,185 : 17,58 ''
    IL_001c:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::keywords
    IL_0021:  ldarg.0
    IL_0022:  ldloc.1
    IL_0023:  ldelem.ref
    IL_0024:  call       bool [System.Core]System.Linq.Enumerable::Contains<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                    !!0)
    IL_0029:  brfalse.s  IL_0065

    .line 188,188 : 21,57 ''
    IL_002b:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::keywords
    IL_0030:  ldarg.0
    IL_0031:  ldloc.1
    IL_0032:  ldelem.ref
    IL_0033:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::IndexOf(!0)
    IL_0038:  stloc.0
    .line 189,189 : 21,55 ''
    IL_0039:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_003e:  ldloc.0
    IL_003f:  box        CSharpToNative.EnumKeywords
    IL_0044:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(object)
    .line 190,190 : 21,60 ''
    IL_0049:  ldloc.0
    IL_004a:  box        CSharpToNative.EnumKeywords
    IL_004f:  call       void [mscorlib]System.Console::WriteLine(object)
    .line 191,191 : 21,39 ''
    IL_0054:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0059:  ldc.i4.s   44
    IL_005b:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(char)
    .line 192,192 : 21,30 ''
    IL_0060:  br         IL_036e

    .line 195,195 : 22,64 ''
    IL_0065:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::operators
    IL_006a:  ldarg.0
    IL_006b:  ldloc.1
    IL_006c:  ldelem.ref
    IL_006d:  call       bool [System.Core]System.Linq.Enumerable::Contains<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                    !!0)
    IL_0072:  brfalse.s  IL_00ae

    .line 197,197 : 21,58 ''
    IL_0074:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::operators
    IL_0079:  ldarg.0
    IL_007a:  ldloc.1
    IL_007b:  ldelem.ref
    IL_007c:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::IndexOf(!0)
    IL_0081:  stloc.0
    .line 198,198 : 21,60 ''
    IL_0082:  ldloc.0
    IL_0083:  box        CSharpToNative.EnumOperator
    IL_0088:  call       void [mscorlib]System.Console::WriteLine(object)
    .line 199,199 : 21,55 ''
    IL_008d:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0092:  ldloc.0
    IL_0093:  box        CSharpToNative.EnumOperator
    IL_0098:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(object)
    .line 200,200 : 21,39 ''
    IL_009d:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_00a2:  ldc.i4.s   44
    IL_00a4:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(char)
    .line 16707566,16707566 : 0,0 ''
    IL_00a9:  br         IL_036e

    .line 202,202 : 22,60 ''
    IL_00ae:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::types
    IL_00b3:  ldarg.0
    IL_00b4:  ldloc.1
    IL_00b5:  ldelem.ref
    IL_00b6:  call       bool [System.Core]System.Linq.Enumerable::Contains<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                    !!0)
    IL_00bb:  brfalse    IL_01a5

    .line 204,204 : 21,54 ''
    IL_00c0:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::types
    IL_00c5:  ldarg.0
    IL_00c6:  ldloc.1
    IL_00c7:  ldelem.ref
    IL_00c8:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::IndexOf(!0)
    IL_00cd:  stloc.0
    .line 205,205 : 21,59 ''
    IL_00ce:  ldloc.0
    IL_00cf:  brtrue.s   IL_010c

    .line 208,208 : 29,86 ''
    IL_00d1:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::integersymboltable
    IL_00d6:  ldarg.0
    IL_00d7:  ldloc.1
    IL_00d8:  ldc.i4.1
    IL_00d9:  add
    IL_00da:  ldelem.ref
    IL_00db:  newobj     instance void class [mscorlib]System.Tuple`1<string>::.ctor(!0)
    IL_00e0:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::Add(!0)
    .line 209,209 : 34,44 ''
    IL_00e5:  ldc.i4.0
    IL_00e6:  stloc.2
    .line 16707566,16707566 : 0,0 ''
    IL_00e7:  br.s       IL_00fd

    .line 211,211 : 33,99 ''
    IL_00e9:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::integersymboltable
    IL_00ee:  ldloc.2
    IL_00ef:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<class [mscorlib]System.Tuple`1<string>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                    int32)
    IL_00f4:  call       void [mscorlib]System.Console::WriteLine(object)
    .line 209,209 : 75,78 ''
    IL_00f9:  ldloc.2
    IL_00fa:  ldc.i4.1
    IL_00fb:  add
    IL_00fc:  stloc.2
    .line 209,209 : 45,73 ''
    IL_00fd:  ldloc.2
    IL_00fe:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::integersymboltable
    IL_0103:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::get_Count()
    IL_0108:  blt.s      IL_00e9

    .line 16707566,16707566 : 0,0 ''
    IL_010a:  br.s       IL_0179

    .line 217,217 : 26,68 ''
    IL_010c:  ldloc.0
    IL_010d:  ldc.i4.1
    IL_010e:  bne.un.s   IL_014b

    .line 219,219 : 25,81 ''
    IL_0110:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::stringsymboltable
    IL_0115:  ldarg.0
    IL_0116:  ldloc.1
    IL_0117:  ldc.i4.1
    IL_0118:  add
    IL_0119:  ldelem.ref
    IL_011a:  newobj     instance void class [mscorlib]System.Tuple`1<string>::.ctor(!0)
    IL_011f:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::Add(!0)
    .line 220,220 : 30,40 ''
    IL_0124:  ldc.i4.0
    IL_0125:  stloc.3
    .line 16707566,16707566 : 0,0 ''
    IL_0126:  br.s       IL_013c

    .line 222,222 : 29,94 ''
    IL_0128:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::stringsymboltable
    IL_012d:  ldloc.3
    IL_012e:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<class [mscorlib]System.Tuple`1<string>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                    int32)
    IL_0133:  call       void [mscorlib]System.Console::WriteLine(object)
    .line 220,220 : 70,73 ''
    IL_0138:  ldloc.3
    IL_0139:  ldc.i4.1
    IL_013a:  add
    IL_013b:  stloc.3
    .line 220,220 : 41,68 ''
    IL_013c:  ldloc.3
    IL_013d:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::stringsymboltable
    IL_0142:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::get_Count()
    IL_0147:  blt.s      IL_0128

    .line 16707566,16707566 : 0,0 ''
    IL_0149:  br.s       IL_0179

    .line 230,230 : 29,134 ''
    .try
    {
      IL_014b:  ldstr      " FATAL ERROR "
      IL_0150:  ldarg.0
      IL_0151:  ldloc.1
      IL_0152:  ldelem.ref
      IL_0153:  ldstr      "Is the incorrect type for this variable"
      IL_0158:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_015d:  newobj     instance void CSharpToNative.TypeMismatchException::.ctor(string)
      IL_0162:  throw

      .line 232,232 : 25,58 ''
    }  // end .try
    catch CSharpToNative.TypeMismatchException 
    {
      IL_0163:  stloc.s    ex2
      .line 234,234 : 29,60 ''
      IL_0165:  ldloc.s    ex2
      IL_0167:  callvirt   instance string [mscorlib]System.Exception::get_Message()
      IL_016c:  call       void [mscorlib]System.Console::WriteLine(string)
      .line 235,235 : 29,50 ''
      IL_0171:  ldc.i4.m1
      IL_0172:  call       void [mscorlib]System.Environment::Exit(int32)
      .line 16707566,16707566 : 0,0 ''
      IL_0177:  leave.s    IL_0179

      .line 239,239 : 21,57 ''
    }  // end handler
    IL_0179:  ldloc.0
    IL_017a:  box        CSharpToNative.EnumTypes
    IL_017f:  call       void [mscorlib]System.Console::WriteLine(object)
    .line 240,240 : 21,52 ''
    IL_0184:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0189:  ldloc.0
    IL_018a:  box        CSharpToNative.EnumTypes
    IL_018f:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(object)
    .line 241,241 : 21,39 ''
    IL_0194:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0199:  ldc.i4.s   44
    IL_019b:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(char)
    .line 16707566,16707566 : 0,0 ''
    IL_01a0:  br         IL_036e

    .line 244,244 : 22,98 ''
    IL_01a5:  ldarg.0
    IL_01a6:  ldloc.1
    IL_01a7:  ldelem.ref
    IL_01a8:  ldstr      " "
    IL_01ad:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_01b2:  brtrue     IL_036e

    IL_01b7:  ldarg.0
    IL_01b8:  ldloc.1
    IL_01b9:  ldelem.ref
    IL_01ba:  ldstr      ""
    IL_01bf:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_01c4:  brtrue     IL_036e

    IL_01c9:  ldarg.0
    IL_01ca:  ldloc.1
    IL_01cb:  ldelem.ref
    IL_01cc:  ldnull
    IL_01cd:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_01d2:  brtrue     IL_036e

    .line 249,249 : 22,93 ''
    IL_01d7:  ldarg.0
    IL_01d8:  ldloc.1
    IL_01d9:  ldelem.ref
    IL_01da:  ldstr      "([0-9])"
    IL_01df:  call       bool [System]System.Text.RegularExpressions.Regex::IsMatch(string,
                                                                                    string)
    IL_01e4:  brfalse.s  IL_0207

    .line 251,251 : 21,65 ''
    IL_01e6:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_01eb:  ldstr      "INTVALUE("
    IL_01f0:  ldarg.0
    IL_01f1:  ldloc.1
    IL_01f2:  ldelem.ref
    IL_01f3:  ldstr      ")"
    IL_01f8:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_01fd:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    .line 252,252 : 21,30 ''
    IL_0202:  br         IL_036e

    .line 256,256 : 22,49 ''
    IL_0207:  ldarg.0
    IL_0208:  ldloc.1
    IL_0209:  ldelem.ref
    IL_020a:  ldstr      "\n"
    IL_020f:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0214:  brfalse.s  IL_0217

    .line 258,258 : 21,28 ''
    IL_0216:  ret

    .line 261,261 : 22,94 ''
    IL_0217:  ldarg.0
    IL_0218:  ldloc.1
    IL_0219:  ldelem.ref
    IL_021a:  ldstr      "([0-9])"
    IL_021f:  call       bool [System]System.Text.RegularExpressions.Regex::IsMatch(string,
                                                                                    string)
    IL_0224:  brtrue     IL_0355

    .line 263,263 : 21,67 ''
    IL_0229:  ldstr      "Tokens i =  "
    IL_022e:  ldarg.0
    IL_022f:  ldloc.1
    IL_0230:  ldelem.ref
    IL_0231:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0236:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 264,264 : 21,254 ''
    IL_023b:  ldarg.0
    IL_023c:  ldc.i4.0
    IL_023d:  ldelem.ref
    IL_023e:  ldc.i4.2
    IL_023f:  box        CSharpToNative.EnumKeywords
    IL_0244:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0249:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_024e:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0253:  brtrue.s   IL_0289

    IL_0255:  ldarg.0
    IL_0256:  ldc.i4.0
    IL_0257:  ldelem.ref
    IL_0258:  ldc.i4.0
    IL_0259:  box        CSharpToNative.EnumKeywords
    IL_025e:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0263:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_0268:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_026d:  brtrue.s   IL_0289

    IL_026f:  ldarg.0
    IL_0270:  ldc.i4.0
    IL_0271:  ldelem.ref
    IL_0272:  ldc.i4.1
    IL_0273:  box        CSharpToNative.EnumKeywords
    IL_0278:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_027d:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_0282:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0287:  brfalse.s  IL_0297

    .line 266,266 : 25,59 ''
    IL_0289:  ldarga.s   tokens
    IL_028b:  ldloca.s   i
    IL_028d:  call       void CSharpToNative.Lexer::defineVariable(string[]&,
                                                                   int32&)
    .line 267,267 : 25,34 ''
    IL_0292:  br         IL_036e

    .line 269,269 : 21,58 ''
    IL_0297:  ldarga.s   tokens
    IL_0299:  ldloca.s   i
    IL_029b:  call       bool CSharpToNative.Lexer::isvardeclared(string[]&,
                                                                  int32&)
    IL_02a0:  brfalse.s  IL_02c0

    .line 271,271 : 25,49 ''
    IL_02a2:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_02a7:  ldarg.0
    IL_02a8:  ldloc.1
    IL_02a9:  ldelem.ref
    IL_02aa:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    .line 272,272 : 25,43 ''
    IL_02af:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_02b4:  ldc.i4.s   44
    IL_02b6:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(char)
    .line 16707566,16707566 : 0,0 ''
    IL_02bb:  br         IL_036e

    .line 276,276 : 25,75 ''
    IL_02c0:  ldarga.s   tokens
    IL_02c2:  ldloca.s   i
    IL_02c4:  call       bool CSharpToNative.Lexer::checkisafunction(string[]&,
                                                                     int32&)
    IL_02c9:  stsfld     bool CSharpToNative.Lexer::isafunction
    .line 277,277 : 25,41 ''
    IL_02ce:  ldsfld     bool CSharpToNative.Lexer::isafunction
    IL_02d3:  brfalse.s  IL_0331

    .line 279,279 : 29,96 ''
    IL_02d5:  ldarg.0
    IL_02d6:  ldloc.1
    IL_02d7:  ldelem.ref
    IL_02d8:  ldc.i4.3
    IL_02d9:  newarr     [mscorlib]System.Char
    IL_02de:  dup
    IL_02df:  ldtoken    field valuetype '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'::'$$method0x6000020-1'
    IL_02e4:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_02e9:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_02ee:  stloc.s    funcsplit
    .line 281,281 : 29,118 ''
    IL_02f0:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>> CSharpToNative.Lexer::functionsymboltable
    IL_02f5:  ldloc.s    funcsplit
    IL_02f7:  ldc.i4.0
    IL_02f8:  ldelem.ref
    IL_02f9:  ldloc.s    funcsplit
    IL_02fb:  ldc.i4.1
    IL_02fc:  ldelem.ref
    IL_02fd:  newobj     instance void class [mscorlib]System.Tuple`2<string,string>::.ctor(!0,
                                                                                            !1)
    IL_0302:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>>::Contains(!0)
    IL_0307:  brtrue.s   IL_0322

    .line 283,283 : 33,112 ''
    IL_0309:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>> CSharpToNative.Lexer::functionsymboltable
    IL_030e:  ldloc.s    funcsplit
    IL_0310:  ldc.i4.0
    IL_0311:  ldelem.ref
    IL_0312:  ldloc.s    funcsplit
    IL_0314:  ldc.i4.1
    IL_0315:  ldelem.ref
    IL_0316:  newobj     instance void class [mscorlib]System.Tuple`2<string,string>::.ctor(!0,
                                                                                            !1)
    IL_031b:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>>::Add(!0)
    .line 16707566,16707566 : 0,0 ''
    IL_0320:  br.s       IL_036e

    .line 289,289 : 33,57 ''
    IL_0322:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0327:  ldarg.0
    IL_0328:  ldloc.1
    IL_0329:  ldelem.ref
    IL_032a:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    .line 290,290 : 33,42 ''
    IL_032f:  br.s       IL_036e

    .line 296,296 : 29,76 ''
    IL_0331:  ldc.i4.s   13
    IL_0333:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
    .line 297,297 : 29,96 ''
    IL_0338:  ldstr      "Fatal Error "
    IL_033d:  ldarg.0
    IL_033e:  ldloc.1
    IL_033f:  ldelem.ref
    IL_0340:  ldstr      " Is not Declared"
    IL_0345:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_034a:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 298,298 : 29,50 ''
    IL_034f:  call       void [mscorlib]System.Console::ResetColor()
    .line 299,299 : 29,36 ''
    IL_0354:  ret

    .line 307,307 : 21,45 ''
    IL_0355:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_035a:  ldarg.0
    IL_035b:  ldloc.1
    IL_035c:  ldelem.ref
    IL_035d:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    .line 308,308 : 21,39 ''
    IL_0362:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0367:  ldc.i4.s   44
    IL_0369:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(char)
    .line 183,183 : 48,51 ''
    IL_036e:  ldloc.1
    IL_036f:  ldc.i4.1
    IL_0370:  add
    IL_0371:  stloc.1
    .line 183,183 : 29,46 ''
    IL_0372:  ldloc.1
    IL_0373:  ldarg.0
    IL_0374:  ldlen
    IL_0375:  conv.i4
    IL_0376:  blt        IL_001c

    .line 313,313 : 13,32 ''
    IL_037b:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0380:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine()
    .line 314,314 : 13,37 ''
    IL_0385:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_038a:  ldstr      "END"
    IL_038f:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    .line 316,316 : 9,10 ''
    IL_0394:  ret
  } // end of method Lexer::printTokens

  .method private hidebysig static void  defineVariable(string[]& tokens,
                                                        int32& i) cil managed
  {
    // Code size       359 (0x167)
    .maxstack  5
    .locals init ([0] string name,
             [1] string[] funcsplit,
             [2] int32 m)
    .line 321,321 : 13,37 ''
    IL_0000:  ldarg.0
    IL_0001:  ldind.ref
    IL_0002:  ldarg.1
    IL_0003:  ldind.i4
    IL_0004:  ldelem.ref
    IL_0005:  stloc.0
    .line 322,322 : 13,72 ''
    IL_0006:  ldarg.0
    IL_0007:  ldind.ref
    IL_0008:  ldarg.1
    IL_0009:  ldind.i4
    IL_000a:  ldc.i4.1
    IL_000b:  sub
    IL_000c:  ldelem.ref
    IL_000d:  ldc.i4.0
    IL_000e:  box        CSharpToNative.EnumTypes
    IL_0013:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0018:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_001d:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0022:  brfalse.s  IL_004c

    .line 324,324 : 17,65 ''
    IL_0024:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::integersymboltable
    IL_0029:  ldloc.0
    IL_002a:  newobj     instance void class [mscorlib]System.Tuple`1<string>::.ctor(!0)
    IL_002f:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::Add(!0)
    .line 325,325 : 17,36 ''
    IL_0034:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0039:  ldloc.0
    IL_003a:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    .line 326,326 : 17,35 ''
    IL_003f:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0044:  ldc.i4.s   44
    IL_0046:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(char)
    .line 327,327 : 17,24 ''
    IL_004b:  ret

    .line 329,329 : 18,82 ''
    IL_004c:  ldarg.0
    IL_004d:  ldind.ref
    IL_004e:  ldarg.1
    IL_004f:  ldind.i4
    IL_0050:  ldc.i4.1
    IL_0051:  sub
    IL_0052:  ldelem.ref
    IL_0053:  ldc.i4.1
    IL_0054:  box        CSharpToNative.EnumTypes
    IL_0059:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_005e:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_0063:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0068:  brfalse.s  IL_0092

    .line 331,331 : 17,64 ''
    IL_006a:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::stringsymboltable
    IL_006f:  ldloc.0
    IL_0070:  newobj     instance void class [mscorlib]System.Tuple`1<string>::.ctor(!0)
    IL_0075:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::Add(!0)
    .line 332,332 : 17,36 ''
    IL_007a:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_007f:  ldloc.0
    IL_0080:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    .line 333,333 : 17,35 ''
    IL_0085:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_008a:  ldc.i4.s   44
    IL_008c:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(char)
    .line 334,334 : 17,24 ''
    IL_0091:  ret

    .line 338,338 : 17,67 ''
    IL_0092:  ldarg.0
    IL_0093:  ldarg.1
    IL_0094:  call       bool CSharpToNative.Lexer::checkisafunction(string[]&,
                                                                     int32&)
    IL_0099:  stsfld     bool CSharpToNative.Lexer::isafunction
    .line 339,339 : 17,33 ''
    IL_009e:  ldsfld     bool CSharpToNative.Lexer::isafunction
    IL_00a3:  brfalse    IL_0166

    .line 341,341 : 21,88 ''
    IL_00a8:  ldarg.0
    IL_00a9:  ldind.ref
    IL_00aa:  ldarg.1
    IL_00ab:  ldind.i4
    IL_00ac:  ldelem.ref
    IL_00ad:  ldc.i4.3
    IL_00ae:  newarr     [mscorlib]System.Char
    IL_00b3:  dup
    IL_00b4:  ldtoken    field valuetype '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'::'$$method0x6000021-1'
    IL_00b9:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_00be:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_00c3:  stloc.1
    .line 343,343 : 21,110 ''
    IL_00c4:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>> CSharpToNative.Lexer::functionsymboltable
    IL_00c9:  ldloc.1
    IL_00ca:  ldc.i4.0
    IL_00cb:  ldelem.ref
    IL_00cc:  ldloc.1
    IL_00cd:  ldc.i4.1
    IL_00ce:  ldelem.ref
    IL_00cf:  newobj     instance void class [mscorlib]System.Tuple`2<string,string>::.ctor(!0,
                                                                                            !1)
    IL_00d4:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>>::Contains(!0)
    IL_00d9:  brtrue.s   IL_014b

    .line 345,345 : 25,104 ''
    IL_00db:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>> CSharpToNative.Lexer::functionsymboltable
    IL_00e0:  ldloc.1
    IL_00e1:  ldc.i4.0
    IL_00e2:  ldelem.ref
    IL_00e3:  ldloc.1
    IL_00e4:  ldc.i4.1
    IL_00e5:  ldelem.ref
    IL_00e6:  newobj     instance void class [mscorlib]System.Tuple`2<string,string>::.ctor(!0,
                                                                                            !1)
    IL_00eb:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>>::Add(!0)
    .line 346,346 : 30,40 ''
    IL_00f0:  ldc.i4.0
    IL_00f1:  stloc.2
    .line 16707566,16707566 : 0,0 ''
    IL_00f2:  br.s       IL_0100

    .line 348,348 : 29,61 ''
    IL_00f4:  ldloc.1
    IL_00f5:  ldloc.2
    IL_00f6:  ldelem.ref
    IL_00f7:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 346,346 : 63,66 ''
    IL_00fc:  ldloc.2
    IL_00fd:  ldc.i4.1
    IL_00fe:  add
    IL_00ff:  stloc.2
    .line 346,346 : 41,61 ''
    IL_0100:  ldloc.2
    IL_0101:  ldloc.1
    IL_0102:  ldlen
    IL_0103:  conv.i4
    IL_0104:  blt.s      IL_00f4

    .line 350,350 : 25,69 ''
    IL_0106:  ldloc.1
    IL_0107:  ldc.i4.1
    IL_0108:  ldelem.ref
    IL_0109:  call       bool [mscorlib]System.String::IsNullOrWhiteSpace(string)
    IL_010e:  brfalse.s  IL_011f

    .line 352,352 : 29,73 ''
    IL_0110:  ldloc.1
    IL_0111:  ldc.i4.1
    IL_0112:  ldc.i4.s   20
    IL_0114:  box        CSharpToNative.EnumKeywords
    IL_0119:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_011e:  stelem.ref
    .line 354,354 : 25,79 ''
    IL_011f:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0124:  ldloc.1
    IL_0125:  ldc.i4.0
    IL_0126:  ldelem.ref
    IL_0127:  ldstr      "("
    IL_012c:  ldloc.1
    IL_012d:  ldc.i4.1
    IL_012e:  ldelem.ref
    IL_012f:  ldstr      ")"
    IL_0134:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_0139:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    .line 355,355 : 25,43 ''
    IL_013e:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0143:  ldc.i4.s   44
    IL_0145:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(char)
    .line 16707566,16707566 : 0,0 ''
    IL_014a:  ret

    .line 361,361 : 25,49 ''
    IL_014b:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_0150:  ldarg.0
    IL_0151:  ldind.ref
    IL_0152:  ldarg.1
    IL_0153:  ldind.i4
    IL_0154:  ldelem.ref
    IL_0155:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    .line 362,362 : 25,43 ''
    IL_015a:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Lexer::writer
    IL_015f:  ldc.i4.s   44
    IL_0161:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(char)
    .line 368,368 : 9,10 ''
    IL_0166:  ret
  } // end of method Lexer::defineVariable

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Lexer::.ctor

  .method private hidebysig static bool  '<isvardeclared>b__0'(string j) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  8
    .line 137,137 : 62,79 ''
    IL_0000:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::types
    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<string>::Contains(!0)
    IL_000b:  ret
  } // end of method Lexer::'<isvardeclared>b__0'

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       753 (0x2f1)
    .maxstack  3
    .locals init ([0] string[] CS$0$0000,
             [1] string[] CS$0$0001,
             [2] string[] CS$0$0002)
    .line 12,12 : 9,297 ''
    IL_0000:  ldc.i4.s   37
    IL_0002:  newarr     [mscorlib]System.String
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  ldstr      "="
    IL_000f:  stelem.ref
    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.1
    IL_0012:  ldstr      "!="
    IL_0017:  stelem.ref
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.2
    IL_001a:  ldstr      "=="
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldstr      "+"
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.4
    IL_002a:  ldstr      "-"
    IL_002f:  stelem.ref
    IL_0030:  ldloc.0
    IL_0031:  ldc.i4.5
    IL_0032:  ldstr      "*"
    IL_0037:  stelem.ref
    IL_0038:  ldloc.0
    IL_0039:  ldc.i4.6
    IL_003a:  ldstr      "/"
    IL_003f:  stelem.ref
    IL_0040:  ldloc.0
    IL_0041:  ldc.i4.7
    IL_0042:  ldstr      "++#"
    IL_0047:  stelem.ref
    IL_0048:  ldloc.0
    IL_0049:  ldc.i4.8
    IL_004a:  ldstr      "#++"
    IL_004f:  stelem.ref
    IL_0050:  ldloc.0
    IL_0051:  ldc.i4.s   9
    IL_0053:  ldstr      "--#"
    IL_0058:  stelem.ref
    IL_0059:  ldloc.0
    IL_005a:  ldc.i4.s   10
    IL_005c:  ldstr      "#--"
    IL_0061:  stelem.ref
    IL_0062:  ldloc.0
    IL_0063:  ldc.i4.s   11
    IL_0065:  ldstr      ">"
    IL_006a:  stelem.ref
    IL_006b:  ldloc.0
    IL_006c:  ldc.i4.s   12
    IL_006e:  ldstr      "<"
    IL_0073:  stelem.ref
    IL_0074:  ldloc.0
    IL_0075:  ldc.i4.s   13
    IL_0077:  ldstr      ">="
    IL_007c:  stelem.ref
    IL_007d:  ldloc.0
    IL_007e:  ldc.i4.s   14
    IL_0080:  ldstr      "<="
    IL_0085:  stelem.ref
    IL_0086:  ldloc.0
    IL_0087:  ldc.i4.s   15
    IL_0089:  ldstr      "&&"
    IL_008e:  stelem.ref
    IL_008f:  ldloc.0
    IL_0090:  ldc.i4.s   16
    IL_0092:  ldstr      "&"
    IL_0097:  stelem.ref
    IL_0098:  ldloc.0
    IL_0099:  ldc.i4.s   17
    IL_009b:  ldstr      "||"
    IL_00a0:  stelem.ref
    IL_00a1:  ldloc.0
    IL_00a2:  ldc.i4.s   18
    IL_00a4:  ldstr      "|"
    IL_00a9:  stelem.ref
    IL_00aa:  ldloc.0
    IL_00ab:  ldc.i4.s   19
    IL_00ad:  ldstr      "!"
    IL_00b2:  stelem.ref
    IL_00b3:  ldloc.0
    IL_00b4:  ldc.i4.s   20
    IL_00b6:  ldstr      "~"
    IL_00bb:  stelem.ref
    IL_00bc:  ldloc.0
    IL_00bd:  ldc.i4.s   21
    IL_00bf:  ldstr      "^"
    IL_00c4:  stelem.ref
    IL_00c5:  ldloc.0
    IL_00c6:  ldc.i4.s   22
    IL_00c8:  ldstr      "+="
    IL_00cd:  stelem.ref
    IL_00ce:  ldloc.0
    IL_00cf:  ldc.i4.s   23
    IL_00d1:  ldstr      "-="
    IL_00d6:  stelem.ref
    IL_00d7:  ldloc.0
    IL_00d8:  ldc.i4.s   24
    IL_00da:  ldstr      "*="
    IL_00df:  stelem.ref
    IL_00e0:  ldloc.0
    IL_00e1:  ldc.i4.s   25
    IL_00e3:  ldstr      "/="
    IL_00e8:  stelem.ref
    IL_00e9:  ldloc.0
    IL_00ea:  ldc.i4.s   26
    IL_00ec:  ldstr      "<<"
    IL_00f1:  stelem.ref
    IL_00f2:  ldloc.0
    IL_00f3:  ldc.i4.s   27
    IL_00f5:  ldstr      ">>"
    IL_00fa:  stelem.ref
    IL_00fb:  ldloc.0
    IL_00fc:  ldc.i4.s   28
    IL_00fe:  ldstr      "%="
    IL_0103:  stelem.ref
    IL_0104:  ldloc.0
    IL_0105:  ldc.i4.s   29
    IL_0107:  ldstr      "&="
    IL_010c:  stelem.ref
    IL_010d:  ldloc.0
    IL_010e:  ldc.i4.s   30
    IL_0110:  ldstr      "|="
    IL_0115:  stelem.ref
    IL_0116:  ldloc.0
    IL_0117:  ldc.i4.s   31
    IL_0119:  ldstr      "^="
    IL_011e:  stelem.ref
    IL_011f:  ldloc.0
    IL_0120:  ldc.i4.s   32
    IL_0122:  ldstr      "<<="
    IL_0127:  stelem.ref
    IL_0128:  ldloc.0
    IL_0129:  ldc.i4.s   33
    IL_012b:  ldstr      ">>="
    IL_0130:  stelem.ref
    IL_0131:  ldloc.0
    IL_0132:  ldc.i4.s   34
    IL_0134:  ldstr      "\?:"
    IL_0139:  stelem.ref
    IL_013a:  ldloc.0
    IL_013b:  ldc.i4.s   35
    IL_013d:  ldstr      "."
    IL_0142:  stelem.ref
    IL_0143:  ldloc.0
    IL_0144:  ldc.i4.s   36
    IL_0146:  ldstr      ","
    IL_014b:  stelem.ref
    IL_014c:  ldloc.0
    IL_014d:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0152:  stsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::operators
    .line 13,13 : 9,290 ''
    IL_0157:  ldc.i4.s   21
    IL_0159:  newarr     [mscorlib]System.String
    IL_015e:  stloc.1
    IL_015f:  ldloc.1
    IL_0160:  ldc.i4.0
    IL_0161:  ldstr      "public"
    IL_0166:  stelem.ref
    IL_0167:  ldloc.1
    IL_0168:  ldc.i4.1
    IL_0169:  ldstr      "protected"
    IL_016e:  stelem.ref
    IL_016f:  ldloc.1
    IL_0170:  ldc.i4.2
    IL_0171:  ldstr      "private"
    IL_0176:  stelem.ref
    IL_0177:  ldloc.1
    IL_0178:  ldc.i4.3
    IL_0179:  ldstr      "const"
    IL_017e:  stelem.ref
    IL_017f:  ldloc.1
    IL_0180:  ldc.i4.4
    IL_0181:  ldstr      "volatile"
    IL_0186:  stelem.ref
    IL_0187:  ldloc.1
    IL_0188:  ldc.i4.5
    IL_0189:  ldstr      "unsigned"
    IL_018e:  stelem.ref
    IL_018f:  ldloc.1
    IL_0190:  ldc.i4.6
    IL_0191:  ldstr      "unsafe"
    IL_0196:  stelem.ref
    IL_0197:  ldloc.1
    IL_0198:  ldc.i4.7
    IL_0199:  ldstr      "new"
    IL_019e:  stelem.ref
    IL_019f:  ldloc.1
    IL_01a0:  ldc.i4.8
    IL_01a1:  ldstr      "continue"
    IL_01a6:  stelem.ref
    IL_01a7:  ldloc.1
    IL_01a8:  ldc.i4.s   9
    IL_01aa:  ldstr      "break"
    IL_01af:  stelem.ref
    IL_01b0:  ldloc.1
    IL_01b1:  ldc.i4.s   10
    IL_01b3:  ldstr      "for"
    IL_01b8:  stelem.ref
    IL_01b9:  ldloc.1
    IL_01ba:  ldc.i4.s   11
    IL_01bc:  ldstr      "if"
    IL_01c1:  stelem.ref
    IL_01c2:  ldloc.1
    IL_01c3:  ldc.i4.s   12
    IL_01c5:  ldstr      "else"
    IL_01ca:  stelem.ref
    IL_01cb:  ldloc.1
    IL_01cc:  ldc.i4.s   13
    IL_01ce:  ldstr      "else if"
    IL_01d3:  stelem.ref
    IL_01d4:  ldloc.1
    IL_01d5:  ldc.i4.s   14
    IL_01d7:  ldstr      "while"
    IL_01dc:  stelem.ref
    IL_01dd:  ldloc.1
    IL_01de:  ldc.i4.s   15
    IL_01e0:  ldstr      "do"
    IL_01e5:  stelem.ref
    IL_01e6:  ldloc.1
    IL_01e7:  ldc.i4.s   16
    IL_01e9:  ldstr      "class"
    IL_01ee:  stelem.ref
    IL_01ef:  ldloc.1
    IL_01f0:  ldc.i4.s   17
    IL_01f2:  ldstr      "enum"
    IL_01f7:  stelem.ref
    IL_01f8:  ldloc.1
    IL_01f9:  ldc.i4.s   18
    IL_01fb:  ldstr      "interface"
    IL_0200:  stelem.ref
    IL_0201:  ldloc.1
    IL_0202:  ldc.i4.s   19
    IL_0204:  ldstr      "private static"
    IL_0209:  stelem.ref
    IL_020a:  ldloc.1
    IL_020b:  ldc.i4.s   20
    IL_020d:  ldstr      "void"
    IL_0212:  stelem.ref
    IL_0213:  ldloc.1
    IL_0214:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0219:  stsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::keywords
    .line 14,14 : 9,195 ''
    IL_021e:  ldc.i4.s   13
    IL_0220:  newarr     [mscorlib]System.String
    IL_0225:  stloc.2
    IL_0226:  ldloc.2
    IL_0227:  ldc.i4.0
    IL_0228:  ldstr      "int"
    IL_022d:  stelem.ref
    IL_022e:  ldloc.2
    IL_022f:  ldc.i4.1
    IL_0230:  ldstr      "string"
    IL_0235:  stelem.ref
    IL_0236:  ldloc.2
    IL_0237:  ldc.i4.2
    IL_0238:  ldstr      "bool"
    IL_023d:  stelem.ref
    IL_023e:  ldloc.2
    IL_023f:  ldc.i4.3
    IL_0240:  ldstr      "double"
    IL_0245:  stelem.ref
    IL_0246:  ldloc.2
    IL_0247:  ldc.i4.4
    IL_0248:  ldstr      "float"
    IL_024d:  stelem.ref
    IL_024e:  ldloc.2
    IL_024f:  ldc.i4.5
    IL_0250:  ldstr      "long"
    IL_0255:  stelem.ref
    IL_0256:  ldloc.2
    IL_0257:  ldc.i4.6
    IL_0258:  ldstr      "short"
    IL_025d:  stelem.ref
    IL_025e:  ldloc.2
    IL_025f:  ldc.i4.7
    IL_0260:  ldstr      "byte"
    IL_0265:  stelem.ref
    IL_0266:  ldloc.2
    IL_0267:  ldc.i4.8
    IL_0268:  ldstr      "char"
    IL_026d:  stelem.ref
    IL_026e:  ldloc.2
    IL_026f:  ldc.i4.s   9
    IL_0271:  ldstr      "decimal"
    IL_0276:  stelem.ref
    IL_0277:  ldloc.2
    IL_0278:  ldc.i4.s   10
    IL_027a:  ldstr      "date"
    IL_027f:  stelem.ref
    IL_0280:  ldloc.2
    IL_0281:  ldc.i4.s   11
    IL_0283:  ldstr      "single"
    IL_0288:  stelem.ref
    IL_0289:  ldloc.2
    IL_028a:  ldc.i4.s   12
    IL_028c:  ldstr      "object"
    IL_0291:  stelem.ref
    IL_0292:  ldloc.2
    IL_0293:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0298:  stsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::types
    .line 16,16 : 9,75 ''
    IL_029d:  ldc.i4.1
    IL_029e:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumOperator>::.ctor(int32)
    IL_02a3:  stsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumOperator> CSharpToNative.Lexer::ops
    .line 17,17 : 9,78 ''
    IL_02a8:  ldc.i4.1
    IL_02a9:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords>::.ctor(int32)
    IL_02ae:  stsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumKeywords> CSharpToNative.Lexer::kywrds
    .line 18,18 : 9,74 ''
    IL_02b3:  ldc.i4.1
    IL_02b4:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumTypes>::.ctor(int32)
    IL_02b9:  stsfld     class [mscorlib]System.Collections.Generic.List`1<valuetype CSharpToNative.EnumTypes> CSharpToNative.Lexer::typedefs
    .line 19,19 : 9,72 ''
    IL_02be:  ldc.i4.1
    IL_02bf:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor(int32)
    IL_02c4:  stsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Lexer::usertypedefs
    .line 22,22 : 9,49 ''
    IL_02c9:  ldc.i4.0
    IL_02ca:  stsfld     bool CSharpToNative.Lexer::isafunction
    .line 23,23 : 9,92 ''
    IL_02cf:  ldc.i4.1
    IL_02d0:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::.ctor(int32)
    IL_02d5:  stsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::integersymboltable
    .line 24,24 : 9,91 ''
    IL_02da:  ldc.i4.1
    IL_02db:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>>::.ctor(int32)
    IL_02e0:  stsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`1<string>> CSharpToNative.Lexer::stringsymboltable
    .line 25,25 : 9,109 ''
    IL_02e5:  ldc.i4.1
    IL_02e6:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>>::.ctor(int32)
    IL_02eb:  stsfld     class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Tuple`2<string,string>> CSharpToNative.Lexer::functionsymboltable
    .line 16707566,16707566 : 0,0 ''
    IL_02f0:  ret
  } // end of method Lexer::.cctor

} // end of class CSharpToNative.Lexer

.class private auto ansi beforefieldinit CSharpToNative.Parser
       extends [mscorlib]System.Object
{
  .field private int32[] numericaltypes
  .method private hidebysig instance void 
          CreateInstruction(valuetype CSharpToNative.EnumTypes Type,
                            valuetype CSharpToNative.EnumOperator operation,
                            string name,
                            object val) cil managed
  {
    // Code size       48 (0x30)
    .maxstack  8
    .line 14,14 : 13,44 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\Parser.cs'
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldnull
    IL_0003:  call       object CSharpToNative.Parser::DefineVariable(valuetype CSharpToNative.EnumTypes,
                                                                      string,
                                                                      object)
    IL_0008:  pop
    .line 15,15 : 13,71 ''
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] CSharpToNative.Parser::numericaltypes
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  call       instance int32 CSharpToNative.Parser::GetOperation(valuetype CSharpToNative.EnumOperator)
    IL_0016:  call       bool [System.Core]System.Linq.Enumerable::Contains<int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                   !!0)
    IL_001b:  brfalse.s  IL_002f

    .line 17,17 : 17,63 ''
    IL_001d:  ldarg.2
    IL_001e:  box        CSharpToNative.EnumOperator
    IL_0023:  ldc.i4.3
    IL_0024:  box        CSharpToNative.EnumOperator
    IL_0029:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
    IL_002e:  pop
    .line 23,23 : 9,10 ''
    IL_002f:  ret
  } // end of method Parser::CreateInstruction

  .method private hidebysig instance int32 
          GetOperation(valuetype CSharpToNative.EnumOperator Operator) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    .line 27,27 : 13,34 ''
    IL_0000:  ldarg.1
    IL_0001:  ret
  } // end of method Parser::GetOperation

  .method private hidebysig static object 
          DefineVariable(valuetype CSharpToNative.EnumTypes Type,
                         string name,
                         [opt] object val) cil managed
  {
    .param [0]
    .custom instance void [System.Core]System.Runtime.CompilerServices.DynamicAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [3] = nullref
    // Code size       4 (0x4)
    .maxstack  1
    .locals init ([0] object memory)
    .line 33,33 : 13,34 ''
    IL_0000:  ldarg.2
    IL_0001:  stloc.0
    .line 34,34 : 13,27 ''
    IL_0002:  ldloc.0
    IL_0003:  ret
  } // end of method Parser::DefineVariable

  .method private hidebysig instance bool 
          IsNumerical(valuetype CSharpToNative.EnumTypes Type) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    .line 40,40 : 13,75 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] CSharpToNative.Parser::numericaltypes
    IL_0006:  ldarg.1
    IL_0007:  box        CSharpToNative.EnumTypes
    IL_000c:  call       int32 [mscorlib]System.Convert::ToInt32(object)
    IL_0011:  call       bool [System.Core]System.Linq.Enumerable::Contains<int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                   !!0)
    IL_0016:  ret
  } // end of method Parser::IsNumerical

  .method family hidebysig instance bool 
          executebranch(class CSharpToNative.ASTBranch`4<object,object,object,object> branch) cil managed
  {
    .param [1]
    .custom instance void [System.Core]System.Runtime.CompilerServices.DynamicAttribute::.ctor(bool[]) = ( 01 00 05 00 00 00 00 01 01 01 01 00 00 ) 
    // Code size       49 (0x31)
    .maxstack  5
    .locals init ([0] string varname,
             [1] valuetype CSharpToNative.EnumTypes 'type',
             [2] valuetype CSharpToNative.EnumOperator operation,
             [3] object 'value')
    .line 44,44 : 13,42 ''
    IL_0000:  ldarg.1
    IL_0001:  ldfld      string class CSharpToNative.Branch`2<object,object>::name
    IL_0006:  stloc.0
    .line 45,45 : 13,42 ''
    IL_0007:  ldarg.1
    IL_0008:  ldfld      valuetype CSharpToNative.EnumTypes class CSharpToNative.Branch`2<object,object>::'type'
    IL_000d:  stloc.1
    .line 46,46 : 13,55 ''
    IL_000e:  ldarg.1
    IL_000f:  ldfld      valuetype CSharpToNative.EnumOperator class CSharpToNative.Branch`2<object,object>::operation
    IL_0014:  stloc.2
    .line 47,47 : 13,41 ''
    IL_0015:  ldarg.1
    IL_0016:  ldfld      object class CSharpToNative.Branch`2<object,object>::Value
    IL_001b:  stloc.3
    .line 48,48 : 13,34 ''
    IL_001c:  ldarg.0
    IL_001d:  ldloc.1
    IL_001e:  call       instance bool CSharpToNative.Parser::IsNumerical(valuetype CSharpToNative.EnumTypes)
    IL_0023:  brfalse.s  IL_002f

    .line 50,50 : 17,65 ''
    IL_0025:  ldarg.0
    IL_0026:  ldloc.1
    IL_0027:  ldloc.2
    IL_0028:  ldloc.0
    IL_0029:  ldloc.3
    IL_002a:  call       instance void CSharpToNative.Parser::CreateInstruction(valuetype CSharpToNative.EnumTypes,
                                                                                valuetype CSharpToNative.EnumOperator,
                                                                                string,
                                                                                object)
    .line 52,52 : 13,26 ''
    IL_002f:  ldc.i4.0
    IL_0030:  ret
  } // end of method Parser::executebranch

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    .line 11,11 : 9,57 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  newarr     [mscorlib]System.Int32
    IL_0007:  dup
    IL_0008:  ldtoken    field valuetype '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'/'__StaticArrayInitTypeSize=28' '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'::'$$method0x6000028-1'
    IL_000d:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0012:  stfld      int32[] CSharpToNative.Parser::numericaltypes
    .line 16707566,16707566 : 0,0 ''
    IL_0017:  ldarg.0
    IL_0018:  call       instance void [mscorlib]System.Object::.ctor()
    IL_001d:  ret
  } // end of method Parser::.ctor

} // end of class CSharpToNative.Parser

.class private auto ansi beforefieldinit CSharpToNative.Program
       extends [mscorlib]System.Object
{
  .field private static class [mscorlib]System.Collections.Generic.List`1<string> operators
  .field private static class [mscorlib]System.Collections.Generic.List`1<string> keywords
  .field private static class [mscorlib]System.Collections.Generic.List`1<string> types
  .field private static string[] lines
  .field private static class [mscorlib]System.IO.StreamWriter writer
  .field private static string currentdir
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       209 (0xd1)
    .maxstack  3
    .locals init ([0] int32 i)
    .line 19,19 : 13,30 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\Program.cs'
    IL_0000:  call       void CSharpToNative.DefineTest::run()
    .line 24,24 : 13,80 ''
    IL_0005:  ldsfld     string CSharpToNative.Program::currentdir
    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.0
    IL_000c:  ldelem.ref
    IL_000d:  ldstr      ".lex"
    IL_0012:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0017:  newobj     instance void [mscorlib]System.IO.StreamWriter::.ctor(string)
    IL_001c:  stsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Program::writer
    .line 25,25 : 13,71 ''
    IL_0021:  ldsfld     string CSharpToNative.Program::currentdir
    IL_0026:  ldarg.0
    IL_0027:  ldc.i4.0
    IL_0028:  ldelem.ref
    IL_0029:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_002e:  call       string[] [mscorlib]System.IO.File::ReadAllLines(string)
    IL_0033:  stsfld     string[] CSharpToNative.Program::lines
    .line 26,26 : 13,48 ''
    IL_0038:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Program::operators
    IL_003d:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0042:  call       void [mscorlib]System.Console::WriteLine(int32)
    .line 27,27 : 13,47 ''
    IL_0047:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Program::keywords
    IL_004c:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0051:  call       void [mscorlib]System.Console::WriteLine(int32)
    .line 29,29 : 18,28 ''
    IL_0056:  ldc.i4.0
    IL_0057:  stloc.0
    .line 16707566,16707566 : 0,0 ''
    IL_0058:  br.s       IL_008e

    .line 35,35 : 17,45 ''
    IL_005a:  ldsfld     string[] CSharpToNative.Program::lines
    IL_005f:  ldloc.0
    IL_0060:  ldelem.ref
    IL_0061:  ldstr      "//"
    IL_0066:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_006b:  brtrue.s   IL_008a

    .line 39,39 : 17,45 ''
    IL_006d:  ldsfld     string[] CSharpToNative.Program::lines
    IL_0072:  ldloc.0
    IL_0073:  ldelem.ref
    IL_0074:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 40,40 : 17,54 ''
    IL_0079:  ldsflda    string[] CSharpToNative.Program::lines
    IL_007e:  ldloca.s   i
    IL_0080:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Program::writer
    IL_0085:  call       void CSharpToNative.Lexer::Start(string[]&,
                                                          int32&,
                                                          class [mscorlib]System.IO.StreamWriter)
    .line 29,29 : 47,50 ''
    IL_008a:  ldloc.0
    IL_008b:  ldc.i4.1
    IL_008c:  add
    IL_008d:  stloc.0
    .line 29,29 : 29,45 ''
    IL_008e:  ldloc.0
    IL_008f:  ldsfld     string[] CSharpToNative.Program::lines
    IL_0094:  ldlen
    IL_0095:  conv.i4
    IL_0096:  blt.s      IL_005a

    .line 43,43 : 13,28 ''
    IL_0098:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Program::writer
    IL_009d:  callvirt   instance void [mscorlib]System.IO.TextWriter::Flush()
    .line 44,44 : 13,28 ''
    IL_00a2:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Program::writer
    IL_00a7:  callvirt   instance void [mscorlib]System.IO.TextWriter::Close()
    .line 45,45 : 13,30 ''
    IL_00ac:  ldsfld     class [mscorlib]System.IO.StreamWriter CSharpToNative.Program::writer
    IL_00b1:  callvirt   instance void [mscorlib]System.IO.TextWriter::Dispose()
    .line 46,46 : 13,60 ''
    IL_00b6:  ldstr      "Lexical Analasis Complete"
    IL_00bb:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 47,47 : 13,56 ''
    IL_00c0:  ldstr      "Press Any Key To Exit"
    IL_00c5:  call       void [mscorlib]System.Console::WriteLine(string)
    .line 48,48 : 13,31 ''
    IL_00ca:  call       valuetype [mscorlib]System.ConsoleKeyInfo [mscorlib]System.Console::ReadKey()
    IL_00cf:  pop
    .line 49,49 : 9,10 ''
    IL_00d0:  ret
  } // end of method Program::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Program::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       690 (0x2b2)
    .maxstack  3
    .locals init ([0] string[] CS$0$0000,
             [1] string[] CS$0$0001,
             [2] string[] CS$0$0002)
    .line 11,11 : 9,297 ''
    IL_0000:  ldc.i4.s   37
    IL_0002:  newarr     [mscorlib]System.String
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  ldstr      "="
    IL_000f:  stelem.ref
    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.1
    IL_0012:  ldstr      "!="
    IL_0017:  stelem.ref
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.2
    IL_001a:  ldstr      "=="
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldstr      "+"
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.4
    IL_002a:  ldstr      "-"
    IL_002f:  stelem.ref
    IL_0030:  ldloc.0
    IL_0031:  ldc.i4.5
    IL_0032:  ldstr      "*"
    IL_0037:  stelem.ref
    IL_0038:  ldloc.0
    IL_0039:  ldc.i4.6
    IL_003a:  ldstr      "/"
    IL_003f:  stelem.ref
    IL_0040:  ldloc.0
    IL_0041:  ldc.i4.7
    IL_0042:  ldstr      "++#"
    IL_0047:  stelem.ref
    IL_0048:  ldloc.0
    IL_0049:  ldc.i4.8
    IL_004a:  ldstr      "#++"
    IL_004f:  stelem.ref
    IL_0050:  ldloc.0
    IL_0051:  ldc.i4.s   9
    IL_0053:  ldstr      "--#"
    IL_0058:  stelem.ref
    IL_0059:  ldloc.0
    IL_005a:  ldc.i4.s   10
    IL_005c:  ldstr      "#--"
    IL_0061:  stelem.ref
    IL_0062:  ldloc.0
    IL_0063:  ldc.i4.s   11
    IL_0065:  ldstr      ">"
    IL_006a:  stelem.ref
    IL_006b:  ldloc.0
    IL_006c:  ldc.i4.s   12
    IL_006e:  ldstr      "<"
    IL_0073:  stelem.ref
    IL_0074:  ldloc.0
    IL_0075:  ldc.i4.s   13
    IL_0077:  ldstr      ">="
    IL_007c:  stelem.ref
    IL_007d:  ldloc.0
    IL_007e:  ldc.i4.s   14
    IL_0080:  ldstr      "<="
    IL_0085:  stelem.ref
    IL_0086:  ldloc.0
    IL_0087:  ldc.i4.s   15
    IL_0089:  ldstr      "&&"
    IL_008e:  stelem.ref
    IL_008f:  ldloc.0
    IL_0090:  ldc.i4.s   16
    IL_0092:  ldstr      "&"
    IL_0097:  stelem.ref
    IL_0098:  ldloc.0
    IL_0099:  ldc.i4.s   17
    IL_009b:  ldstr      "||"
    IL_00a0:  stelem.ref
    IL_00a1:  ldloc.0
    IL_00a2:  ldc.i4.s   18
    IL_00a4:  ldstr      "|"
    IL_00a9:  stelem.ref
    IL_00aa:  ldloc.0
    IL_00ab:  ldc.i4.s   19
    IL_00ad:  ldstr      "!"
    IL_00b2:  stelem.ref
    IL_00b3:  ldloc.0
    IL_00b4:  ldc.i4.s   20
    IL_00b6:  ldstr      "~"
    IL_00bb:  stelem.ref
    IL_00bc:  ldloc.0
    IL_00bd:  ldc.i4.s   21
    IL_00bf:  ldstr      "^"
    IL_00c4:  stelem.ref
    IL_00c5:  ldloc.0
    IL_00c6:  ldc.i4.s   22
    IL_00c8:  ldstr      "+="
    IL_00cd:  stelem.ref
    IL_00ce:  ldloc.0
    IL_00cf:  ldc.i4.s   23
    IL_00d1:  ldstr      "-="
    IL_00d6:  stelem.ref
    IL_00d7:  ldloc.0
    IL_00d8:  ldc.i4.s   24
    IL_00da:  ldstr      "*="
    IL_00df:  stelem.ref
    IL_00e0:  ldloc.0
    IL_00e1:  ldc.i4.s   25
    IL_00e3:  ldstr      "/="
    IL_00e8:  stelem.ref
    IL_00e9:  ldloc.0
    IL_00ea:  ldc.i4.s   26
    IL_00ec:  ldstr      "<<"
    IL_00f1:  stelem.ref
    IL_00f2:  ldloc.0
    IL_00f3:  ldc.i4.s   27
    IL_00f5:  ldstr      ">>"
    IL_00fa:  stelem.ref
    IL_00fb:  ldloc.0
    IL_00fc:  ldc.i4.s   28
    IL_00fe:  ldstr      "%="
    IL_0103:  stelem.ref
    IL_0104:  ldloc.0
    IL_0105:  ldc.i4.s   29
    IL_0107:  ldstr      "&="
    IL_010c:  stelem.ref
    IL_010d:  ldloc.0
    IL_010e:  ldc.i4.s   30
    IL_0110:  ldstr      "|="
    IL_0115:  stelem.ref
    IL_0116:  ldloc.0
    IL_0117:  ldc.i4.s   31
    IL_0119:  ldstr      "^="
    IL_011e:  stelem.ref
    IL_011f:  ldloc.0
    IL_0120:  ldc.i4.s   32
    IL_0122:  ldstr      "<<="
    IL_0127:  stelem.ref
    IL_0128:  ldloc.0
    IL_0129:  ldc.i4.s   33
    IL_012b:  ldstr      ">>="
    IL_0130:  stelem.ref
    IL_0131:  ldloc.0
    IL_0132:  ldc.i4.s   34
    IL_0134:  ldstr      "\?:"
    IL_0139:  stelem.ref
    IL_013a:  ldloc.0
    IL_013b:  ldc.i4.s   35
    IL_013d:  ldstr      "."
    IL_0142:  stelem.ref
    IL_0143:  ldloc.0
    IL_0144:  ldc.i4.s   36
    IL_0146:  ldstr      ","
    IL_014b:  stelem.ref
    IL_014c:  ldloc.0
    IL_014d:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0152:  stsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Program::operators
    .line 12,12 : 9,290 ''
    IL_0157:  ldc.i4.s   21
    IL_0159:  newarr     [mscorlib]System.String
    IL_015e:  stloc.1
    IL_015f:  ldloc.1
    IL_0160:  ldc.i4.0
    IL_0161:  ldstr      "public"
    IL_0166:  stelem.ref
    IL_0167:  ldloc.1
    IL_0168:  ldc.i4.1
    IL_0169:  ldstr      "protected"
    IL_016e:  stelem.ref
    IL_016f:  ldloc.1
    IL_0170:  ldc.i4.2
    IL_0171:  ldstr      "private"
    IL_0176:  stelem.ref
    IL_0177:  ldloc.1
    IL_0178:  ldc.i4.3
    IL_0179:  ldstr      "const"
    IL_017e:  stelem.ref
    IL_017f:  ldloc.1
    IL_0180:  ldc.i4.4
    IL_0181:  ldstr      "volatile"
    IL_0186:  stelem.ref
    IL_0187:  ldloc.1
    IL_0188:  ldc.i4.5
    IL_0189:  ldstr      "unsigned"
    IL_018e:  stelem.ref
    IL_018f:  ldloc.1
    IL_0190:  ldc.i4.6
    IL_0191:  ldstr      "unsafe"
    IL_0196:  stelem.ref
    IL_0197:  ldloc.1
    IL_0198:  ldc.i4.7
    IL_0199:  ldstr      "new"
    IL_019e:  stelem.ref
    IL_019f:  ldloc.1
    IL_01a0:  ldc.i4.8
    IL_01a1:  ldstr      "continue"
    IL_01a6:  stelem.ref
    IL_01a7:  ldloc.1
    IL_01a8:  ldc.i4.s   9
    IL_01aa:  ldstr      "break"
    IL_01af:  stelem.ref
    IL_01b0:  ldloc.1
    IL_01b1:  ldc.i4.s   10
    IL_01b3:  ldstr      "for"
    IL_01b8:  stelem.ref
    IL_01b9:  ldloc.1
    IL_01ba:  ldc.i4.s   11
    IL_01bc:  ldstr      "if"
    IL_01c1:  stelem.ref
    IL_01c2:  ldloc.1
    IL_01c3:  ldc.i4.s   12
    IL_01c5:  ldstr      "else"
    IL_01ca:  stelem.ref
    IL_01cb:  ldloc.1
    IL_01cc:  ldc.i4.s   13
    IL_01ce:  ldstr      "else if"
    IL_01d3:  stelem.ref
    IL_01d4:  ldloc.1
    IL_01d5:  ldc.i4.s   14
    IL_01d7:  ldstr      "while"
    IL_01dc:  stelem.ref
    IL_01dd:  ldloc.1
    IL_01de:  ldc.i4.s   15
    IL_01e0:  ldstr      "do"
    IL_01e5:  stelem.ref
    IL_01e6:  ldloc.1
    IL_01e7:  ldc.i4.s   16
    IL_01e9:  ldstr      "class"
    IL_01ee:  stelem.ref
    IL_01ef:  ldloc.1
    IL_01f0:  ldc.i4.s   17
    IL_01f2:  ldstr      "enum"
    IL_01f7:  stelem.ref
    IL_01f8:  ldloc.1
    IL_01f9:  ldc.i4.s   18
    IL_01fb:  ldstr      "interface"
    IL_0200:  stelem.ref
    IL_0201:  ldloc.1
    IL_0202:  ldc.i4.s   19
    IL_0204:  ldstr      "private static"
    IL_0209:  stelem.ref
    IL_020a:  ldloc.1
    IL_020b:  ldc.i4.s   20
    IL_020d:  ldstr      "void"
    IL_0212:  stelem.ref
    IL_0213:  ldloc.1
    IL_0214:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0219:  stsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Program::keywords
    .line 13,13 : 9,195 ''
    IL_021e:  ldc.i4.s   13
    IL_0220:  newarr     [mscorlib]System.String
    IL_0225:  stloc.2
    IL_0226:  ldloc.2
    IL_0227:  ldc.i4.0
    IL_0228:  ldstr      "int"
    IL_022d:  stelem.ref
    IL_022e:  ldloc.2
    IL_022f:  ldc.i4.1
    IL_0230:  ldstr      "string"
    IL_0235:  stelem.ref
    IL_0236:  ldloc.2
    IL_0237:  ldc.i4.2
    IL_0238:  ldstr      "bool"
    IL_023d:  stelem.ref
    IL_023e:  ldloc.2
    IL_023f:  ldc.i4.3
    IL_0240:  ldstr      "double"
    IL_0245:  stelem.ref
    IL_0246:  ldloc.2
    IL_0247:  ldc.i4.4
    IL_0248:  ldstr      "float"
    IL_024d:  stelem.ref
    IL_024e:  ldloc.2
    IL_024f:  ldc.i4.5
    IL_0250:  ldstr      "long"
    IL_0255:  stelem.ref
    IL_0256:  ldloc.2
    IL_0257:  ldc.i4.6
    IL_0258:  ldstr      "short"
    IL_025d:  stelem.ref
    IL_025e:  ldloc.2
    IL_025f:  ldc.i4.7
    IL_0260:  ldstr      "byte"
    IL_0265:  stelem.ref
    IL_0266:  ldloc.2
    IL_0267:  ldc.i4.8
    IL_0268:  ldstr      "char"
    IL_026d:  stelem.ref
    IL_026e:  ldloc.2
    IL_026f:  ldc.i4.s   9
    IL_0271:  ldstr      "decimal"
    IL_0276:  stelem.ref
    IL_0277:  ldloc.2
    IL_0278:  ldc.i4.s   10
    IL_027a:  ldstr      "date"
    IL_027f:  stelem.ref
    IL_0280:  ldloc.2
    IL_0281:  ldc.i4.s   11
    IL_0283:  ldstr      "single"
    IL_0288:  stelem.ref
    IL_0289:  ldloc.2
    IL_028a:  ldc.i4.s   12
    IL_028c:  ldstr      "object"
    IL_0291:  stelem.ref
    IL_0292:  ldloc.2
    IL_0293:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0298:  stsfld     class [mscorlib]System.Collections.Generic.List`1<string> CSharpToNative.Program::types
    .line 16,16 : 9,86 ''
    IL_029d:  call       string [mscorlib]System.Environment::get_CurrentDirectory()
    IL_02a2:  ldstr      "/"
    IL_02a7:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02ac:  stsfld     string CSharpToNative.Program::currentdir
    .line 16707566,16707566 : 0,0 ''
    IL_02b1:  ret
  } // end of method Program::.cctor

} // end of class CSharpToNative.Program

.class private auto ansi serializable beforefieldinit CSharpToNative.TypeMismatchException
       extends [mscorlib]System.Exception
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 12,12 : 9,39 'c:\\Users\\Tom\\Documents\\GitHub\\Stuffimake\\CSharpToNative\\CSharpToNative\\TypeMismatchException.cs'
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Exception::.ctor()
    .line 15,15 : 9,10 ''
    IL_0006:  ret
  } // end of method TypeMismatchException::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 16,16 : 9,53 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Exception::.ctor()
    .line 19,19 : 9,10 ''
    IL_0006:  ret
  } // end of method TypeMismatchException::.ctor

  .method public hidebysig specialname virtual 
          instance string  get_Message() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    .line 24,24 : 17,53 ''
    IL_0000:  ldstr      "Type Operands Do not matvh"
    IL_0005:  ret
  } // end of method TypeMismatchException::get_Message

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    .line 29,29 : 13,50 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [mscorlib]System.Type [mscorlib]System.Exception::GetType()
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance string [mscorlib]System.Exception::get_Message()
    IL_000c:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0011:  ret
  } // end of method TypeMismatchException::ToString

  .property instance string Message()
  {
    .get instance string CSharpToNative.TypeMismatchException::get_Message()
  } // end of property TypeMismatchException::Message
} // end of class CSharpToNative.TypeMismatchException

.class private auto ansi '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=6'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 6
  } // end of class '__StaticArrayInitTypeSize=6'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=28'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 28
  } // end of class '__StaticArrayInitTypeSize=28'

  .field static assembly valuetype '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'/'__StaticArrayInitTypeSize=6' '$$method0x6000020-1' at I_00002FD0
  .field static assembly valuetype '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'/'__StaticArrayInitTypeSize=6' '$$method0x6000021-1' at I_00003390
  .field static assembly valuetype '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'/'__StaticArrayInitTypeSize=28' '$$method0x6000028-1' at I_000038B0
} // end of class '<PrivateImplementationDetails>{DAC53833-EE23-4C79-8F36-21D47F5B88DD}'


// =============================================================

.data cil I_00002FD0 = bytearray (
                 28 00 29 00 20 00)                               // (.). .
.data cil I_00002FD6 = int8[10]
.data cil I_00003390 = bytearray (
                 28 00 29 00 20 00)                               // (.). .
.data cil I_00003396 = int8[10]
.data cil I_000038B0 = bytearray (
                 00 00 00 00 03 00 00 00 04 00 00 00 05 00 00 00
                 06 00 00 00 09 00 00 00 0B 00 00 00) 
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file C:\Users\Tom\Documents\GitHub\Stuffimake\CSharpToNative\CSharpToNative\dump.res
