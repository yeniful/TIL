## Array
#### Intro
- 순서가 있는 collection을 저장하기 위한 Generic Container
- ‘,’로 구분된 Value들의 리스트, 즉 array literal을 통해 만들 수 있다.
    
    ```swift
    let fruits = ["Apple", "Banana", "Strawberry"]
    ```
    
- Swift는 Array를 프로토콜을 사용해서 정의
    - Sequence Protocol
        - 최소 한 번 반복 가능
    - Collection Protocol
        - array를 수정하지 않고 여러번 순회 가능
        - Subscript Operator를 통해 접근 가능
    - RandomAccessCollection Protocol
        - 효율성 보장
#### Order
- 명시적으로 순서가 있음 (explicitly ordered)
- 모든 원소들은 인덱스와 대응

#### Random-Access
- Random-access란 자료구조가 상수 시간 안에 원소를 검색할 수 있는지에 대한 특성 (cf) Bidirection)
- Array는 상수(O(1))
- cf) Linked List나 Trees는 상수가 아님
