import ballerina/http;
import ballerina/io;
import sumayya/weatherForecaster as weather;

listener http:Listener httpListener = new(8080);

@display {
    label: "",
    id: "001"
}
service /forecast on httpListener {
    resource function get dailyForecast() returns error? {
        @display {
            label: "",
            id: "100"
        }
        http:Client weatherClient = check new ("http://localhost:5050/weather/");
        weather:WeatherStatus weatherResp = check weatherClient->get("forecast");

        @display {
            label: "",
            id: "002"
        }
        http:Client timeClient = check new ("http://localhost:7070/time");
        TimeForecast timeResp = check timeClient->get("/forecast");

        Forecast forecast = {
            weather: weatherResp,
            time: timeResp,
            accuracy: 78
        };

        io:println(forecast);
    }

    resource function post update() {}

    resource function put broadcast() {}

    resource function delete history() {}
}

@display {
    label: "",
    id: "002"
}
service /time on new http:Listener(7070) {
    resource function get forecast() returns TimeForecast {
        TimeForecast forecast = {
            hour: 12,
            minute: 34,
            second: 56,
            accuracy: 60
        };

        return forecast;
    }
}
