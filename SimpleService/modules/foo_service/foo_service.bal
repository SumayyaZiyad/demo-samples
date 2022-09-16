import ballerina/http;
import SimpleService.potato_service;
import ballerina/io;

type sample record {};

@display {
    label: "",
    id: "5678"
}
service /foo on new http:Listener(8080) {
    resource function get baz() returns string | error {
        @display {
            label: "",
            id: "1234"
        }
        http:Client potatoClientEndpoint = check new("http://localhost:7070");
        string resp = check potatoClientEndpoint->get("/colorado");
        io:println("foo/baz was called by " + resp);
        return "From foo/baz";
    }

    resource function get bar() returns sample | error? {
        @display {
            label: "",
            id: "1234"
        }
        http:Client potatoClientEndpoint = check new("http://localhost:7070");
        potato_service:Response response = check potatoClientEndpoint->post("/idaho", "foo/bar");
        io:println(response.message);
        sample sam = {};
        return sam;
    }
}
