import ballerina/http;
import ballerina/io;

@display {
    label: "",
    id: "9010"
}
service /a on new http:Listener(2020) {
    resource function get name(string name) returns error? {
        @display {
            label: "",
            id: "1234"
        }
        http:Client potatoClientEndpoint = check new("http://localhost:7070");
        string resp = check potatoClientEndpoint->post("/idaho", "a/name");
        io:println(resp);
    }

    resource function put location() {
        
    }
}
