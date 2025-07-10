// This file explain about Future, async, and await
/// Future represents a value that will be available later,Think of it as a promise that something will complete in the future.
/// like after a delay or an asynchronous operation (e.g., API call, file read).
/// You can handle the result using ( .then() ) or Using ( async and await ) A cleaner and more readable way.

//function will return value after 2 seconds (in future ) this return type must be future<return type>
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data Loaded');
}
void main(){
  // You can handle the result using  .then() 
  String? result ; 
  fetchData().then((value){result=value;}); //the function is inside the .then() callback, and it runs after the future completes.
  print(result); // so her will print null  print(result) runs immediately, before the future finishes. So result is still null at that point.
  // result =await fetchData().then((value){return value;}); //we must make function main is async
  fetchData().then((value){print("after the fetchData() completes by then() \n$value");}); // will print 'Data Loaded' because the print inside the fuction is inside .then() and it runs after the future completes.
  // You can handle the result using   Using ( async and await ) A cleaner and more readable way
  void loadData() async {
    print("Loading...");
    result = await fetchData(); // the function loadData() will stop her  and continue runs after the fetchData() completes.
    print("after the fetchData() completes by await");
    print(result);
  }
  print("before load data called ");
  loadData();
  print("after load data called ");
}
