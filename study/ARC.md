> ## ARC(Automatic Reference Counting)

###  Strong  <br>
```
- Swift 에서 Strong은 어떠한 설정도 없을 때의 기본값.
- 별도의 지시자를 기술하지 않았을 때의 디폴트 값
- 해당 레퍼런스에 대해 강한 참조(strong reference)를 유지 하겠다는 뜻
- 해당 키워드는 레퍼런스 카운트를 증가시킴
- 그런데 강한 순환 참조는 클로저 캡처링이나 객체간 서로 참조 등등의 경우 RC가 0이 되지 않는 상황이 있을 수 있고, 이럴 때 메모리 누수 (Memory Leak)가 발생할 수 있음
```

###  Weak  <br>
```
- Weak는 대상 객체에 대해 레퍼런스 카운트를 변화시키지 않는다. ==> “레퍼런스 카운트를 증가시키지 않는다.”
- Weak는 해당 객체가 nil (NULL)일 수 있다.
- weak는 객체가 Optional이라서 해당 객체가 해제 되어 버린 상태에서 참조하게 되면, Application이 강제 종료되는 상황을 맞이한다.
- 대신, weak는 언래핑 하는 과정을 통해 안전하게 사용할 수 있다.
- weak는 반드시 Optional. 객체 참조형 변수에 nil(Null)이 할당 될 수 있어야 한다.
```

###  Unowned  <br>
```
- Unowned는 대상 객체에 대해 레퍼런스 카운트를 변화시키지 않는다. ==> “레퍼런스 카운트를 증가시키지 않는다.”
- unowned는 해당 객체는 절대 nil(Null) 일 수 없다. “Optional 객체가 아니다” 
- 매우 위험한 방법. 보통의 경우에는 사용할 일이 없다. weak 를 사용하시면 된다.
```

<br><br>
> ## ARC vs GC
```
Compile, Linking, Runtime (linking) 3단계를 거쳐 Application 이 빌드되고 만들어져서 실행된다.

ARC(Automatic Reference Counting)는 컴파일 타임(compile time)에 기존 MRC때 개발자가 직접 코드를 작성해야 되던 부분을 
자동으로 구문을 분석해서 적절하게 레퍼런스 감소 코드삽입해 주어, 실행 중에 별도의 메모리 관리가 이루어지지 않는다.

GC(Garbage Collection)은 프로그램 실행 중(Runtime)에 동적으로 감시하고 있다가, 더 이상 사용할 필요가 없다고 여겨지는 것을 소멸(해제) 시켜버린다.
```
