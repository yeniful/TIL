# Array
### Intro
- 순서가 있는 collection을 저장하기 위한 Generic Container
- ‘,’로 구분된 Value들의 리스트, 즉 array literal을 통해 만들 수 있음
    
    ```swift
    let fruits = ["Apple", "Banana", "Strawberry"]
    ```
    
- Swift는 Array를 프로토콜을 사용해서 정의
    - [Sequence Protocol](https://developer.apple.com/documentation/swift/sequence)
        - 최소 한 번 반복 가능
    - [Collection Protocol](https://developer.apple.com/documentation/swift/collection)
        - array를 수정하지 않고 여러번 순회 가능
        - Subscript Operator를 통해 접근 가능
    - [RandomAccessCollection Protocol](https://developer.apple.com/documentation/swift/randomaccesscollection)
        - 효율성 보장
### Order
- 명시적으로 순서가 있음 (explicitly ordered)
- 모든 원소들은 인덱스와 대응

### Random-Access
- Random-access란 자료구조가 상수 시간 안에 원소를 검색할 수 있는지에 대한 특성 (cf) Bidirection)
- Array는 상수 시간 복잡도(O(1))
- cf) Linked List나 Trees는 상수가 아님

### Insertion location
- 최선의 경우 : 맨 뒤에 삽입, O(1)
- 최악의 경우 : 맨 앞에 삽입, O(n)
- 앞 쪽에 넣을 수록 공간을 만들기 위해 뒤에있는 원소들을 더 많이 옮겨줘야함.
- Array는 크기가 정해져있고 바꿀 수 없기 때문에 더 큰 Array를 만들어 옮겨줘야 함. 이 경우 모든 element들을 방문하고 복사해줘야 함.
    - 즉, 원소들을 복사할 때마다 O(n)
    - STL은 복사 시간을 줄이기 위해서 Array가 꽉 찰 때마다 2배로 늘린다. (Array Doubling : 꽉찰 때마다 상수만큼 늘리는 것이 아니라, 꽉차면 한 번에 두 배로 늘림)

# Dictionary
- Key-Value 쌍
- 이 때 Key는 Hashable 해야한다. (Hashable Protocol)
- 순서를 보장하지 않음
- 그래서 원하는 index에 삽입이 불가능
- Collection Protocol
- Collection이 변하지 않는다면, 모든 Key-Value를 순회하는 것이 가능
- Array와 비교했을 때 좋아보이지 않지만 단점만 있는 것은 아님
    - Array와 달리 Shifting Arround(원소 삽입시 공간을 만들기 위해 다른 원소들을 뒤로 옮기는 것)을 고려할 필요 없음. Dictionary의 Insertion 시간 복잡도는 항상 O(1)
    - LookUp 연산자도 빠름. Array는 시작 지점에서 Insertion Point를 차근차근 찾아가야 하지만, Dictionary의 Lookup 시간 복잡도는 O(1)

# Set
- 중복을 허용하지 않음 (Enforcing Uniqueness)
- Dictionary와 비슷하게 순서의 개념이 없음.


# Key Points
- 모든 자료구조는 장단점을 갖고있기 때문에 필요에 맞게 써야함
- 예를 들어 insert 함수를 사용해야하는 경우, 무작정 Array에서 사용하게 되면 효율이 안좋을 수 있음. 이 경우 Linked List나 다른 자료 구조를 쓰는 것이 효과적일 수도 있음.
- Dictionary는 원소의 순서가 없지만 삽입과 검색에서 빠름
- Set은 Value들의 중복 없음을 보장함. 원소의 순서가 없지만 속도가 빠름.
