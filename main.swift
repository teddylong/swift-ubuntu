// 开始学Swift
// p=/home/teddy/swift/usr/bin
// e=MySwiftProject

// 开场
var intro = "Hello,World";
print (intro);

// 普通的类
class Dog{
  var name = "";
  func bark(){
    print ("barking from " + self.name);
  }
}

let candy = Dog();
candy.name = "Candy!";
candy.bark();



// 没懂，这个private在这里有啥用
class Cat {
    var name = ""
    private var whatACatSays = "woof"
    func bark() {
        print (self.whatACatSays);
    }
}

let cat = Cat();
cat.whatACatSays = "woofAGAIN";
print (cat.whatACatSays);
cat.bark();

// 带参数和返回值的方法
func sum (x:Int, y:Int)
    -> Int{
        return x + y;
    }
print ("Sum Number: " + String(sum(123456, y: 7890)));

// 无返回值的默认写法
let s = "noReturn";
func NoReturnFunc1(s:String) -> Void { print(s); }
func NoReturnFunc2(s:String) -> () { print(s); }
func NoReturnFunc3(s:String) { print(s); }

NoReturnFunc1(s);
NoReturnFunc2(s);
NoReturnFunc3(s);


// 参数中带默认值
class Mouse {
    func say(s:String, times:Int = 1){
        var res = "";
        for _ in 1...times{
            res += s;
        }
        print (res);
    }
}

let mouse = Mouse();
mouse.say("Hello,Mouse! ", times: 3);
mouse.say("HOHO!");

// 不定量的参数
func sayArrayString (arrayOfString:String...){
    for s in arrayOfString{
        print (s);
    }
}

sayArrayString("Hello", "World");

func sayArrayString2 (arrayofString:String..., times: Int){
    for _ in 1...times{
        for s in arrayofString{
            print (s);
        }
    }
}

sayArrayString2("Weibo", "WeChat", times: 2);


//带可修改参数的方法，下面这个错误的

//func saySomthing (s:String, times:Int, loudly: Bool){
//    loudly = true;
//}

func saySomthing (s:String, times:Int, var loudly: Bool){
    loudly = true;
}
