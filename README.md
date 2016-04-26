![Golden Compass: An Elegant Full-Stack Project](https://raw.githubusercontent.com/yinanfang/GoldenCompass/master/materials/images/logo_github.png)

An elegant full-stack project with Node.js backend, HTML5 website and iOS app

## About
This is was originally a full stack project for my personal blog site. However, I added DBD Capital as a subtask into this project because my parents are "in need of" a reporting system for pushing status of the stock accounts that they are trading for their clients. This is basically a fancy iPad version of Excel with a login system. The system is well sucured because the iOS app has only read ability and authentication is secured by JSON Web Token(JWT). I am trying to apply all the skills that I have ever learned in this project. Also, I'm building a highly re-usable iOS [libraries](https://github.com/yinanfang/GoldenCompass#to-dos) that I can easily use for future project.

## Product Content
- [ ] Backend with Node.js, Express
- [ ] Personal website with React, Redux, Gulp, ES6
- [ ] DBDCapital iOS app with Swift, Carthage, VIPER
- [ ] [Continuous Integration](https://en.wikipedia.org/wiki/Continuous_integration) with Travis CI

## Demo with Appetize.io

## Architecture Features

## UI/UX Design Features
  - Logo Design. Adobe AI with CodeClimate logo reversed

## Requirements
- iOS 8.0+
- Xcode 6.3+
- Node 0.11.2+

## Utility
- Icon
  - [Iconfinder](https://www.iconfinder.com)
- Github badges
  - [shields](https://github.com/badges/shields)
- Markdown Editor
  - [stackedit](https://stackedit.io/editor)
- Tutorial
  - https://egghead.io/

## Quick Installation
```shell
    $ git clone https://github.com/yinanfang/GoldenCompass; cd GoldenCompass
    $cd node; sudo npm install -g gulp bower && npm install && bower install; cd ..
    $ cd iOS; cocoapod install; cd ..
```
## Setup
Add submodules:
```shell
    $ git submodule add https://github.com/yinanfang/GoldenCompass-node.
    $ git submodule add https://github.com/yinanfang/DBDCapital ./iOS/DBDCapital
```
