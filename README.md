![Golden Compass: An Elegant Full-Stack Project](https://raw.githubusercontent.com/yinanfang/GoldenCompass/master/materials/images/logo_github.png)

An elegant full-stack project with Node.js backend, HTML5 website and iOS app

## About
This is was originally a full stack project for my personal blog site. However, I added DBD Capital as a subtask into this project because my parents are "in need of" a reporting system for pushing status of the stock accounts that they are trading for their clients. This is basically a fancy iPad version of Excel with a login system. The system is well sucured because the iOS app has only read ability and authentication is secured by JSON Web Token(JWT). I am trying to apply all the skills that I have ever learned in this project. Also, I'm building a highly re-usable iOS [libraries](https://github.com/yinanfang/GoldenCompass#to-dos) that I can easily use for future project.

## Progress
- [ ] iOS app
- [ ] Node backend
- [ ] HTML5 website

## Requirements
- iOS 8.0+
- Xcode 6.3+
- Node 0.11.2+

## Quick Installation

    git clone https://github.com/yinanfang/GoldenCompass; cd GoldenCompass
    cd node; sudo npm install -g gulp bower && npm install && bower install; cd ..
    cd iOS; cocoapod install; cd ..

    Create $HOME/node/config/config.js and fill in info like $HOME/Others/configTemplate.js

## Product Features

## Architecture Features

## UI/UX Design Features

## iOS Features:
- [ ] Strong Mudularity
  - [ ] Modular and Reusable code
- [ ] Multi-Threaded Programming
  - [ ] Only update UI from the main thread. Do other work in the secondary thread
- [ ] Dependencies Injection with NSNotification+Factory Methods
- [ ] Localization of English, Chinese

#### Use of Popular Third-Party Libraries
- Core for all
  - ReactiveCocoa
  - CocoaLumberjack
  - libextobjc
- Animation
  - pop
- Model
  - Mantle
- Networking
  - AFNetworking
- Routing
  - JLRoutes?
- Debug
  - chisel

#### Architecture Decision
- [VIPER](http://www.objc.io/issues/13-architecture/viper/)
  - After Comparing the [difference](http://khanlou.com/2014/03/model-view-whatever/) between MVC, MVVM, and VIPER, I chose to use VIPER because of its scalability.
  - Retain problem: https://github.com/mutualmobile/VIPER-TODO/issues/2

#### TO-DOs:
- [ ] Explicitly Sign the Code in the Build Settings!!!
- Code Style
  - https://github.com/NYTimes/objective-c-style-guide
  - https://github.com/futurice/ios-good-practices
    - Description about Certificate and Provisioning Files:
      - https://github.com/futurice/ios-good-practices#signing
      - http://escoz.com/blog/demystifying-ios-certificates-and-provisioning-files/
      - Certificate needs to be downloaded manually from Developer Center. Provisioning file can be auto downloaded in the Xcode. Just go to the account and click details. And click on the Refresh button on the lower left.
- [ ] App
  - [ ] Welcome, Login, Register, Visitor - UIView-Shake
  - [ ] Show list of accounts
  - [ ] Account overview - Chart
    - [ ] Account detailed view
- [ ] Images.xcassets
  - [x] Use Images.xcassets to avoid different naming suffix for image files
  - [ ] Add build phase with objc-codegenutils and generate class methods
- [ ] LocalizedStrings
- [ ] Use [chisel](https://github.com/facebook/chisel) for lldb debug
- [ ] Queue
  - [ ] Default Main Queue
  - [ ] Default Background Queue
  - [ ] Data Layer Queue
- [ ] Mandatory update?
- [ ] GCAppKit -
  - [ ] GCUIKit - Provide Factory Method/Class Method for creating UI component fast
    - [ ] GCButton - [FlatUIKit](https://github.com/Grouper/FlatUIKit)
    - [ ] GCGestureRecognizer
    - [ ] GCShimmer
    - [ ] GCColor - Use Class Method
    - [ ] GCView
      - [ ] UIView+GCFoundation - [UIView-Shake](https://github.com/andreamazz/UIView-Shake),
    - [ ] GCTextField
      - [ ] UITextField+GCFoundation - [UITextField-Shake](https://github.com/andreamazz/UITextField-Shake), [JVFloatLabeledTextField](https://github.com/jverdi/JVFloatLabeledTextField)
    - [ ] GCAttributedString
      - [ ] NSAttributedString+GCFoundation
  - [ ] GCUtility
    - [ ] GCAccountManager
    - [ ] GCNetworkManager
    - [ ] GCSettingManager
    - [X] GCConstant - Prefix all constants
    - [X] GCMacro - Prefix all macro
    - [X] GCConfiguration - Prefix all config
    - [ ] GCPList
      - [Link01](http://stackoverflow.com/questions/21119922/how-to-read-a-plist-and-create-different-arrays-from-its-content-in-xcode), [Link02](https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/PropertyLists/ReadWritePlistData/ReadWritePlistData.html)
    - [ ] GCBundle
    - [ ] GCAppCategory
      - [ ] GCLog - Pretty hex dump
    - [ ] GCFormatter - [FormatterKit](https://github.com/mattt/FormatterKit)
      - [ ] NSDate+GCFoundation
      - [ ] GCDateFormatter - [DateTools](https://github.com/MatthewYork/DateTools)
      - [ ] GCTimeFormatter
      - [ ] GCDataDetector - http://nshipster.com/nsdatadetector/
    - [ ] GCComposer
    - [ ] GCFriendList
    - [ ] GCShare
      - [ ] GCSharingSheet
      - [ ] GCShareAction
    - [ ] GCPrivacyControl
    - [ ] GCLike
    - [ ] GCComment
    - [ ] GCModuleManager - minimizes dependencies between products
    - [ ] GCURLSegue


## Node.js

#### Architecture

1. Authentication
  - [x] Choose [Json Web Token over Session](https://auth0.com/blog/2014/01/27/ten-things-you-should-know-about-tokens-and-cookies/) with [Bcrypt](dcodeIO/bcrypt.js) Encryption
2. [JWT Advantage](https://scotch.io/tutorials/the-anatomy-of-a-json-web-token#what-are-json-web-tokens?)
  - JSON Web Tokens (JWT), pronounced “jot”, are a standard since the information they carry is transmitted via JSON. We can read more about the draft, but that explanation isn’t the most pretty to look at.
  - JSON Web Tokens work across different programming languages: JWTs work in .NET, Python, Node.js, Java, PHP, Ruby, Go, JavaScript, and Haskell. So you can see that these can be used in many different scenarios.
  - JWTs are self-contained: They will carry all the information necessary within itself. This means that a JWT will be able to transmit basic information about itself, a payload (usually user information), and a signature.
  - JWTs can be passed around easily: Since JWTs are self-contained, they are perfectly used inside an HTTP header when authenticating an API. You can also pass it through the URL.
3. Relative Path Problem
  - Node.js require() [searching algorithm](http://www.bennadel.com/blog/2169-where-does-node-js-and-require-look-for-modules.htm)
  - Solution: https://gist.github.com/branneman/8048520

#### Structure

  - GoldenCompass
    - app.js
    - app
      - api
      - model
      - db
      - view
    node_modules
      - GCAppKit



#### TO-DOs:

- [x] User Icon
  - [x] Random Icon from selected Image
  - [x] [Identicon](https://github.com/dmester/jdenticon)
- [ ] WebAPI
  - [x] Server - express
  - [ ] CORS - expressjs/cors
  - [x] jwt - hokaccha/node-jwt-simple
  - [ ] CSV to MySQL parsing - PapaParse
- [ ] npm
  - [x] Auto Refresh
    - [x] nodemon for development
    - [ ] pm2 for production. Monitor and profile for production
  - [x] Promise - Async
  - [ ] Build System - Gulp
  - [ ] Advanced logging - Bunyan
  - [ ] Advanced debug
    - [ ] [debug](https://github.com/visionmedia/debug)
    - [ ] node-inspector
  - [ ] Use gulp-eslint with gulp-notify
  - [ ] Test coverage ??
  - [ ] Static analysis tools??
    - [ ] ESLint,
  - [ ] Statistics?? - [statsd](https://github.com/etsy/statsd)
- [ ] Blog Website
  - [ ] AngularJS
  - [ ] ejs
- [x] [Airbnb Javascript Syntax](https://github.com/airbnb/javascript)

#### Website Architecture
- [ ] Folder structure follow "polymer-starter-kit".
  - Same from Yeoman maybe. Add .htaccess at the root level "app": https://www.youtube.com/watch?v=gKiaLSJW5xI
- [ ] UI Front-end Libraries
  - [ ] Bootstrap, AngularJS, Modernizr
- [ ] Build with Facebook [Flux](https://www.youtube.com/watch?list=PLb0IAmt7-GS188xDYE-u1ShQmFFGbrk0v&t=602&v=nYkdrAPrdcw) & React
  - MVC doesn't scale
    - MVC is pretty good for small application. Everything has its particular roll to play. The problem is that it doesn't make room for the new features
    - Increase predictability
    - MVC allows bi-direction data flow, but Flux allows only one direction data flow
    - When data changes, React re-renders the component
    - Referentially transparent functions
      - Describe UI at any point in time
      - Trivial to predict for a given input
      - Easy to test
    - React builds a new virtual DOM subtree
      - diffs it with the old one
      - computes the minimal set of DOM mutations and puts them in a queue
      - and batch executes all updates
    - Might worries about the performance if only a small changes occurs in a huge DOM tree. There're a lot of useless diffs

## Database
#### MySQL vs MongoDB
- Compare
  - Chose MySQL because DBDCapital is more like a book keeping system
  - Might use MongoDB for blog website

#### TO-DOs:
- [ ] Daily backup for the entire DB
  - [ ] Backup after a successful update of DB. Use it to restore if something goes wrong next time
- [ ] Recreate Certificate and provisioning file. Store private key and certificate carefully
- [ ] GC. Module. Separate GC. GoldenCompass-node, GoldenCompass-iOS. GCAppKit, auth.js token, app.js base dir, separate route.js. SublimeLinter, gulp-notify. Define __base for log?
- [ ] Vim. Set mouse to A. Take out unused code in zshrc
- [ ] GoldenCompass. Use namespace for api. node-jsonwebtoken. Don't use user email as id, use userID. DB table prefix. dotenv. brosersync proxy port, get from env|config


## Summarize Great Article from
- [ ] Make them a feature of this project.
  - [ ] [VIPER modularity ](http://www.objc.io/issues/13-architecture/viper/) - Get great links in this article
  - [ ] 10 key points: https://www.airpair.com/node.js/posts/top-10-mistakes-node-developers-make
  - [ ] This too: https://medium.com/@faisalabid/7-tips-for-a-node-js-padawan-e7c0b0e5ce3c
  - [ ] https://auth0.com/blog/2014/01/27/ten-things-you-should-know-about-tokens-and-cookies/
- [ ] Use the Image from the screen shot or the article to make README colorful

## To learn
- Difference between JWT and OAuth2, OAuth1
- Flux and React. How to improve this kind of performance hit

## Utility
- Icon
  - [Iconfinder](https://www.iconfinder.com)
- Github badges
  - [shields](https://github.com/badges/shields)
- Markdown Editor
  - [stackedit](https://stackedit.io/editor)



