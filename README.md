# Thrift Perfect Server Example

Trying Thrift Perfect Server possibilities 

Example using TPerfectServer library to create swift Thrift Perfect Server:

https://github.com/apocolipse/TPerfectHTTPServer


What we do: 

- create simple Thrift test object, named TestAPIObject
- create simple service, named TestService 
(you can find it in test.thrift)

- we generate files using thrift compiler : thrift --gen swift <path_to_test.thrift>
- create project using Package.swift file and generate xcodeproj file
- create our server side Service and resolve needed methods
- create tests client using generated files




