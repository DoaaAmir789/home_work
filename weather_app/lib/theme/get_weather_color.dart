import 'package:flutter/material.dart';

MaterialColor getWeatherColor(String? condition) {
  if (condition == null) return Colors.blue;

  switch (condition.toLowerCase()) {
    // ☀️ Clear / Sunny
    case "sunny":
    case "clear":
      return Colors.amber;

    // 🌤 Partly Cloudy
    case "partly cloudy":
      return Colors.orange;

    // ☁️ Cloudy / Overcast
    case "cloudy":
    case "overcast":
      return Colors.grey;

    // 🌫 Mist / Fog
    case "mist":
    case "fog":
    case "freezing fog":
      return Colors.blueGrey;

    // 🌧 Rain & Drizzle
    case "patchy rain possible":
    case "patchy light drizzle":
    case "light drizzle":
    case "freezing drizzle":
    case "heavy freezing drizzle":
    case "patchy light rain":
    case "light rain":
    case "moderate rain at times":
    case "moderate rain":
    case "heavy rain at times":
    case "heavy rain":
    case "light rain shower":
    case "moderate or heavy rain shower":
    case "torrential rain shower":
    case "patchy light rain with thunder":
    case "moderate or heavy rain with thunder":
    case "light freezing rain":
    case "moderate or heavy freezing rain":
      return Colors.blue;

    // ❄️ Snow / Ice
    case "patchy snow possible":
    case "patchy sleet possible":
    case "patchy freezing drizzle possible":
    case "light sleet":
    case "moderate or heavy sleet":
    case "patchy light snow":
    case "light snow":
    case "patchy moderate snow":
    case "moderate snow":
    case "patchy heavy snow":
    case "heavy snow":
    case "ice pellets":
    case "light showers of ice pellets":
    case "moderate or heavy showers of ice pellets":
    case "light sleet showers":
    case "moderate or heavy sleet showers":
    case "light snow showers":
    case "moderate or heavy snow showers":
      return Colors.lightBlue;

    // ⛈ Thunder
    case "thundery outbreaks possible":
      return Colors.deepPurple;

    // 🌬 Snow Storm
    case "blowing snow":
    case "blizzard":
      return Colors.indigo;

    // ✅ Default
    default:
      return Colors.blue;
  }
}
