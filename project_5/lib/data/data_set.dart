List<Map<String, String>> whatsNewData = [
  {
    "title": "Discover the world of Saudia",
    "supTitle":
        "Be first to know about deals, intersteing travel information and much more",
    "imagePath": "assets/emails.jpeg",
    "link":
        "https://www.saudia.com/Subscribe?utm_source=saudia_app&utm_medium=app_card&utm_campaign=svdc_sva_newsletter_subscription_card"
  },
  {
    "title": "One Journey, No Stop",
    "supTitle": "Skip the queues with FastTrack",
    "imagePath": "assets/fast.jpeg",
    "link":
        "https://www.saudia.com/Subscribe?utm_source=saudia_app&utm_medium=app_card&utm_campaign=svdc_sva_newsletter_subscription_card"
  },
  {
    "title": "Enjoy a premium experience",
    "supTitle": "Enjoy a unique travel experience with AlTanfeethi",
    "imagePath": "assets/premium.jpeg",
    "link":
        "https://www.saudia.com/Subscribe?utm_source=saudia_app&utm_medium=app_card&utm_campaign=svdc_sva_newsletter_subscription_card"
  },
  {
    "title": "Travel Safely",
    "supTitle": "Travel Safely with Saudia's travel insurance",
    "imagePath": "assets/saife.jpeg",
    "link":
        "https://www.saudia.com/Subscribe?utm_source=saudia_app&utm_medium=app_card&utm_campaign=svdc_sva_newsletter_subscription_card"
  },
  {
    "title": "Earn 100% more Miles",
    "supTitle": "and 15% off hotel booking with \"Booking.com\" ",
    "imagePath": "assets/pexels-photo-1154619.jpeg",
    "link":
        "https://www.saudia.com/Subscribe?utm_source=saudia_app&utm_medium=app_card&utm_campaign=svdc_sva_newsletter_subscription_card"
  },
  {
    "title": "100% more Reward Miles",
    "supTitle": "15% Off, and more with Jumeirah!",
    "imagePath": "assets/zurich.jpeg",
    "link":
        "https://www.saudia.com/Subscribe?utm_source=saudia_app&utm_medium=app_card&utm_campaign=svdc_sva_newsletter_subscription_card"
  },
  {
    "title": "Explore AlFursan",
    "supTitle": "Learn more about our loyalty program benefits",
    "imagePath": "assets/fursan.jpeg",
    "link":
        "https://www.saudia.com/Subscribe?utm_source=saudia_app&utm_medium=app_card&utm_campaign=svdc_sva_newsletter_subscription_card"
  },
  {
    "title": "Welcome to our future",
    "supTitle": "Introducing a Brand New Saudia",
    "imagePath": "assets/future.jpeg",
    "link":
        "https://www.saudia.com/Subscribe?utm_source=saudia_app&utm_medium=app_card&utm_campaign=svdc_sva_newsletter_subscription_card"
  },
];

List<Map<String, dynamic>> cityData = [
  {
    "cityName": "Jeddah",
    "cityCut": "JED",
    "airport": "King Abdulaziz International Airport",
    "traveler": [
      {
        "cityName": "Dammam",
        "cityCut": "DMM",
        "price": 1199.0,
        "image": "assets/dammam.jpeg",
        "airport": "King Fahd International Airport",
      },
      {
        "cityName": "Madinah",
        "cityCut": "Med",
        "price": 790.0,
        "image": "assets/almadena.jpeg",
        "airport": "Prince Mohammad Bin Abdulaziz International Airport"
      },
      {
        "cityName": "Riyadh",
        "cityCut": "RUH",
        "price": 999.0,
        "image": "assets/riyadhh.jpeg",
        "airport": "King Khalid International Airport"
      }
    ],
  },
  {
    "cityName": "Dammam",
    "cityCut": "DMM",
    "airport": "King Fahd International Airport",
    "traveler": [
      {
        "cityName": "Jeddah",
        "cityCut": "JED",
        "price": 1299.0,
        "image": "assets/jeddah.jpeg",
        "airport": "King Abdulaziz International Airport"
      },
      {
        "cityName": "Madinah",
        "cityCut": "Med",
        "price": 1368.0,
        "image": "assets/almadena.jpeg",
        "airport": "Prince Mohammad Bin Abdulaziz International Airport"
      },
      {
        "cityName": "Riyadh",
        "cityCut": "RUH",
        "price": 843.0,
        "image": "assets/riyadhh.jpeg",
        "airport": "King Khalid International Airport"
      }
    ],
  },
  {
    "cityName": "Madinah",
    "cityCut": "Med",
    "airport": "Prince Mohammad Bin Abdulaziz International Airport",
    "traveler": [
      {
        "cityName": "Dammam",
        "cityCut": "DMM",
        "price": 1167.0,
        "image": "assets/dammam.jpeg",
        "airport": "King Fahd International Airport"
      },
      {
        "cityName": "Jeddah",
        "cityCut": "JED",
        "price": 750.0,
        "image": "assets/jeddah.jpeg",
        "airport": "King Abdulaziz International Airport"
      },
      {
        "cityName": "Riyadh",
        "cityCut": "RUH",
        "price": 1290.0,
        "image": "assets/riyadhh.jpeg",
        "airport": "King Khalid International Airport"
      }
    ]
  },
  {
    "cityName": "Riyadh",
    "cityCut": "RUH",
    "airport": "King Khalid International Airport",
    "traveler": [
      {
        "cityName": "Dammam",
        "cityCut": "DMM",
        "price": 990.0,
        "image": "assets/dammam.jpeg",
        "airport": "King Fahd International Airport"
      },
      {
        "cityName": "Madinah",
        "cityCut": "Med",
        "price": 744.0,
        "image": "assets/almadena.jpeg",
        "airport": "Prince Mohammad Bin Abdulaziz International Airport"
      },
      {
        "cityName": "Jeddah",
        "cityCut": "JED",
        "price": 1067.0,
        "image": "assets/jeddah.jpeg",
        "airport": "King Abdulaziz International Airport"
      }
    ]
  },
];

List<Map<String, dynamic>> plain = [
  {
    "flight_number": "SV101",
    "plainName": "Airbus A320",
    "departure_airport": "JED",
    "arrival_airport": "DMM",
    "departure_time": "10:30",
    "arrival_time": "13:35",
    "duration": "2 hours",
    "economy_class": {"seat_availability": 4, "ticket_price": 759.3},
    "business_class": {"seat_availability": 2, "ticket_price": 1280.34}
  },
  {
    "flight_number": "SV102",
    "plainName": "Airbus A320",
    "departure_airport": "JED",
    "arrival_airport": "DMM",
    "departure_time": "03:00",
    "arrival_time": "05:05",
    "duration": "2 hours 5 m",
    "economy_class": {"seat_availability": 40, "ticket_price": 824.14},
    "business_class": {"seat_availability": 30, "ticket_price": 1320.44}
  }
];
