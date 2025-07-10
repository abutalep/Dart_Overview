// This file explain
// Exception Handling in dart : An exception is an error that occurs inside the program.
// Built-in exceptions in dart : (deferred load exception - format exception - integer divison by zero exception - io exception - isolate spawn exception - timeout ) and others... 
// Every built-in exception in dart comes under a pre-defined class named Excpetion . to prevent the program from exception ,we make use of try/on/catch blocks in dart.

//creating custom exceptions 
class Age implements Exception{
    String toString()=>"Your Age is less than 18 .";
}
void main(){

    String name="AbuTalep";
    // show the format exception using (on)
    try{
        int result = int.parse(name); 
    }
    on FormatException{
        // A specific exception (format exception)
        print("Error! format exception : can\'t act as input is not an integer .");
    }
    on Exception catch(e){
        // Anything else that is an exception 
        print("Unknown exception : $e");
    }
    catch(e){
        // no specified type , handles all
        print ("somthing really unknown : $e");
    }

    // show the IntegerDivisionByZeroException when doesn't specify a type of exception using (on catch)  and we can use (catch)only.
    try{
        int result = 10~/0; 
    }
    on FormatException{
        // A specific exception (format exception)
        print("Error! format exception : can\'t act as input is not an integer .");
    }
    on Exception catch(e){
        // Anything else that is an exception 
        print("Unknown exception : $e");
    }
    catch(e){
        // no specified type , handles all
        print ("somthing really unknown : $e");
    }

    // show custom exception using (on catch) and we can use (catch)only.
    int age1=17;

    try{
        if(age1<18){
            throw Age();
        }
    }
    on FormatException{
        // A specific exception (format exception)
        print("Error! format exception : can\'t act as input is not an integer .");
    }
    on Exception catch(e){
        // Anything else that is an exception 
        print("Unknown exception : $e");
    }
    catch(e){
        // no specified type , handles all
        print ("somthing really unknown : $e");
    }

    // Final block : Used to include specific code that must be executed irrespective of error in the code.
     try{
        if(age1<18){
            throw Age();
        }
    }
    on FormatException{
        // A specific exception (format exception)
        print("Error! format exception : can\'t act as input is not an integer .");
    }
    catch(e){
        // no specified type , handles all
        print ("somthing really unknown : $e");
    }
    finally{
        print("Finally, The code must be executed after try and catch block .");
    }
} 