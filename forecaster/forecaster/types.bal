import sumayya/weatherForecaster as weather;

type Forecast record {
    weather:WeatherStatus weather;
    TimeForecast time;
    string warnings?;
    decimal accuracy;
};

type TimeForecast record {
    int hour;
    int minute;
    int second;
    decimal accuracy;
};
