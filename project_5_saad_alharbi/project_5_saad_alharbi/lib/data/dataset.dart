//this dataset for the news in the home page
List<Map<String, dynamic>> news = [
  {
    "title": "اكتشف عالم السعودية",
    "description":
        "كن أول من يحصل على معلومات حصريه عن وجهات السفر الجديدة وعروض ممزة على الرحلات",
    "imagePath": "assets/images/handphone.jpg",
  },
  {
    "title": "انطلاقتك ما توقف",
    "description": "سافر بدون انتظار مع خدمة المسار السريع",
    "imagePath": "assets/images/suadi-ss.jpg",
  },
  {
    "title": "استمتع بالفخامة",
    "description": "استمتع بتجربة سفر فريدة عبر التنفيذي",
    "imagePath": "assets/images/suadi-gg.jpg",
  },
  {
    "title": "سافر بأمان",
    "description": "سافر بأمان مع تأمين السفر من السعوديه",
    "imagePath": "assets/images/TravelSafely.jpg",
  },
  {
    "title": "اكتسب 100% أميال مكافات أكثر",
    "description": "وخصم 15% عند التخطيط لعطلتك مع Booking.com",
    "imagePath": "assets/images/suadi-food.jpg",
  },
];

List<Map<String, dynamic>> cityData = [
  {
    "cityName": "جدة",
    "code": "JED",
    "travelToList": [
      {
        "cityName": "الدمام",
        "code": "DMM",
        "price": 1199.0,
        "image": "assets/images/dammam.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      },
      {
        "cityName": "المدنية",
        "code": "MED",
        "price": 790.0,
        "image": "assets/images/madinah.jpg",
        "ticketList": [
          {
            "startTime": "20:20",
            "endTime": "22:30",
            "totalTime": "2h 10min",
            "price": 790.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "15:30",
            "totalTime": "2h 10min",
            "price": 999.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      },
      {
        "cityName": "الرياض",
        "code": "RUH",
        "price": 999.0,
        "image": "assets/images/riyadh.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "24:30",
            "totalTime": "2h 10min",
            "price": 855.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "2h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      }
    ]
  },
  {
    "cityName": "الدمام",
    "code": "DMM",
    "travelToList": [
      {
        "cityName": "جدة",
        "code": "JED",
        "price": 1299.0,
        "image": "assets/images/jeddah.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      },
      {
        "cityName": "المدينة",
        "code": "MED",
        "price": 1368.0,
        "image": "assets/images/madinah.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      },
      {
        "cityName": "الرياض",
        "code": "RUH",
        "price": 843.0,
        "image": "assets/images/riyadh.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      }
    ]
  },
  {
    "cityName": "المدينة",
    "code": "MED",
    "travelToList": [
      {
        "cityName": "الدمام",
        "code": "DMM",
        "price": 1167.0,
        "image": "assets/images/dammam.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      },
      {
        "cityName": "جدة",
        "code": "JED",
        "price": 750.0,
        "image": "assets/images/jeddah.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      },
      {
        "cityName": "الرياض",
        "code": "RUH",
        "price": 1290.0,
        "image": "assets/images/riyadh.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      }
    ]
  },
  {
    "cityName": "الرياض",
    "code": "RUH",
    "travelToList": [
      {
        "cityName": "الدمام",
        "code": "DMM",
        "price": 990.0,
        "image": "assets/images/dammam.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      },
      {
        "cityName": "المدينة",
        "code": "MED",
        "price": 744.0,
        "image": "assets/images/madinah.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      },
      {
        "cityName": "جدة",
        "code": "JED",
        "price": 1067.0,
        "image": "assets/images/jeddah.jpg",
        "ticketList": [
          {
            "startTime": "22:20",
            "endTime": "23:30",
            "totalTime": "1h 10min",
            "price": 800.0,
            "stop": "رحلة بدون توقف"
          },
          {
            "startTime": "13:20",
            "endTime": "14:30",
            "totalTime": "1h 10min",
            "price": 1000.0,
            "stop": "رحلة بدون توقف"
          },
        ]
      }
    ]
  },
];
