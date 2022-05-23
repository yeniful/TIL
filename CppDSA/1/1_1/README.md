### 1.1 기본적인 C++ 프그래밍 요소

클래스란? (p.2)
- 사용자 정의 타입(user-defined type)으로서 보장된 초기화, 묵시적 타입 변환, 메모리 관리의 제어, 연산자 오버로딩, 다형성 등과 같은 중요한 기능을 내포.
- 또한 하부 데이터를 감추는 능력. → 사용자들에게 클래스 구현을 위한 세부사항을 은폐하고 잘 정의된 인터페이스만으로 클래스를 개념화할 수 있도록 허용.
- 클래스는 프로그래머들이 응용프로그램을 작고 관리하기 좋은 조작, 즉 객체(object)로 세분할 수 있도록 하는데 이렇게 만들어진 프로그램은 이해와 유지보수가 쉽다.
    
    **1.1.1 간단한 C++ 프로그램**
    
    - 더보기
        - 소스파일 생성 후 **컴파일러(Compiler)**라는 프로그램을 실행해서 프로그램을 기계어로 변환.
        - **링커(Linker)**라는 프로그램은(보통 컴파일러에 의해 자동 실행) 필요한 라이브러리 함수들을 포함시켜 최종적인 기계 실행가능 파일을 만듦.
        - 헤더파일이란? 특별한 선언(declaration)과 정의(definition)을 위해 사용됨.
            - `<cstdlib>` : 표준 시스템 정의 제공, <iostream> : 입출력에 필요한 정의
            - `<cstdlib>`에서 EXIT_CODE는 0으로 정의되어 있음.
        - C++의 주요한 I/O 스트림
            - `std::cout` : 출력이 **표준 출력 스트림**(standard output stream)으로 보내진다는 것을 의미.
            - `std::cin` : **표준 입력(standard input**)으로부터 입력이 읽히고
            - `std::cerr` : **표준 에러(standard error)**로는 보통 오류 메시지 출력.
            - `std::`는 이러한 객체들이 표준 라이브러리에 정의되어 있다는 의미.
            - `using namespace std;` : using 문장을 사용하여 표준 라이브러리 객체를 사용하고자 함을 컴파일러에게 알려줘서 `std::`를 생략해서 사용할 수 있음.
        - `std::endl` : end of line 문자를 생성하는 객체 == `\n`
    
    **1.1.2 기본 타입**
    
    - 더보기
        - C++의 기본 타입
            - bool : 부울 값, 참 또는 거짓
            - char : 문자
            - short : 짧은 정수, int : 정수, long : 긴 정수
            - float : 단일 정밀도 부동소수점 수, double : 두배 정밀도 부동소수점
            
            ---
            
            - 열거형(enumeration, enum) : 이산값(discrete values)들을 표현
            - void : 특수타입. 어떤 타입도 아님을 명시적으로 나타냄
        - 문자(Character)
            - 문자 하나를 저장
            - 보통 8비트지만 구현 방법에 따라 달라질 수 있음
            - 리터럴(literal) : 프로그램에 나타나는 상수값. 문자 리터럴들은 ‘a’, ‘Q’, 그리고 ‘+’에서와 같이 단일 따옴표로 둘러싸인다. 역슬래시(\)는 아래 예에서 보는 바와 같이 특수 문자 리터럴을 정의하는데 사용된다,
                - ‘\n’ : newline,  ‘\t’ : tab, ‘’, ‘\b’ : backspace, ‘\0’ : null, ‘\’’ : single quote, ‘\”’ : double quote, ‘\\’ : back slash
                - 널문자(’\0’)는 가끔 문자 스트링의 끝을 가리키기 위해 사용된다.
                - 모든 문자는 정수 코드값을 가지고 있다.
                - 함수 int(ch)는 문자 변수 ch가 가지는 정수값을 반환한다.
        - 정수(Inteager)
            - 하나의 정수 값을 저장
            - short (int)은 16비트, int는 4비트, long (int)은 최소 32비트
            - 숫자 끝에 “I” 또는 “L”을 붙여서 long 정수를 나타낸다.
            - 8진수(Octal) 상수는 숫자 앞에 “0”을 붙이고, 16진수(hexadecimal) 상수는 숫자 앞에"0X”를 붙임
            - 즉, 256, 0400, 0X100은 모두 10진수의 정수 값 256을 나타냄
            - 언더스코어(_)로 변수 이름을 시작하는 것이 적합할지라도, 몇몇 C++ 컴파일러가 이러한 표현을 자신의 내부 식별자를 정의할 때 사용하기 때문에 이러한 표현을 지양해야함.
            - sizeof(T)는 char 사이즈의 배수로 표현되는 T의 사이즈를 반환
        - 열거형
            - 이산값(discrete value)들의 집합의 임의 원소를 가질 수 있는 **사용자 정의 타입**.
            - 열거형이 정의되면 하나의 정수 타입 처럼 동작.
            - **관련된 값들의 집합에 의미있는 이름을 제공하기 위해 사용**
            - 열거형의 각 요소는 정수값을 가지고 있는데, 기본적으로 0부터 시작. 하지만 명시적인 상수값 지정 가능.
        - 부동소수점
            - float는 단일 정밀도(single-precision) 부동 소수점을 저장
            - double은 두 배 정밀도(double-precision) 부동 소수점을 저장
            - “e”와 “E”를 이용하여 가수(mantissa)와 지수(exponenet) 구분
            - 실수를 타입 float로 만들기 위해서 “f”와 “F”를 뒤에 붙인다.
    
    **1.1.3 포인터, 배열, 구조체 (✏️)**
    
    - 더보기
        - 포인터