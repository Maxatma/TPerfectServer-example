

struct TestAPIObject {
1: optional string id;

2: optional i64 optionalIntSixtyFour;
3: i64 nonOptionalIntSixtyFour;

4: optional i32 optionalIntThirtyTwo;
5: i32 nonOptionalThirtyTwo;

6: optional bool optionalBool;
7: bool nonOptionalBool;

8: optional string optionalString;
9: string nonOptionalString;


10: optional TestAPIObject nestedType;
11: optional list<TestAPIObject> nestedTypesList;
}

service TestService {

/** get test service name */
string getName();

/** get test api objects */
list<TestAPIObject> getTestAPIObjects(1: i64 quantity);

}
