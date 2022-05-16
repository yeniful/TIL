Intro
---

이제 첫번째 베이퍼 앱을 만들고, 빌드하고, 실행했으니 베이퍼의 폴더 구조에 익숙해질 시간을 가져봅시다.

밑에있는 섹션에셔 폴더 구조의 각 부분을 자세히 설명하겠습니다.


Public
---

이 폴더는 `FileMiddleware`가 작동할 경우 앱이 제공할 모든 public 파일들을 포함하고 있습니다. 이는 주로 이미지, 스타일 시트 그리고 브라우저 스크립트입니다. 예를 들어 [`localhost:8080/favicon.ico`](http://localhost:8080/favicon.ico) 에 대한 요청은 `Public/favicon.ico` 가 존재하는지 알기 위해 확인하고 이를 반환할 것입니다.

베이퍼가 public 파일들을 제공하기 전에 configure.swift 파일에 있는 FileMiddleWare를 활성화해야 합니다.

Source
---
이 폴더는 프로젝트를 위한 모든 스위프트 소스 파일을 포함합니다. 가장 바깥 쪽에 있는 폴더인 `App`과 `Run`은 SPM(Swift Package Manager) manifest에서 선언된대로 패키지의 모듈들을 반영합니다. (SPM에 대해서는 나중에 설명하겠습니다.)

App
---
모든 애플리케이션 로직이 작동하는 곳입니다.

- **Controllers**
    Controllers는 애플리케이션 로직을 그룹화하는 좋은 방법입니다. 대부분의 Controllers에는 요청을 받아들이고 응답을 리턴하는 많은 함수들이 있습니다.

- **Migrations**
    Migrationds 폴더는 Fluent를 사용하는 경우 데이터베이스 마이그레이션을 수행하는 곳입니다.

- **Models**
    Models 폴더는 `Content` 구조들과 Fluent `Model`들을 저장하는 좋은 곳입니다.

- **configure.swift**
    configure.swift 파일은  `configure(_:)` 함수를 포함하고 있습니다. 이 메서드는 새로 만들어진 `Application`을 configure하기 위해 `main.swift`에서 호출됩니다.
