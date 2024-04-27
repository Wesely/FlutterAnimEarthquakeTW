import 'dart:convert';

class EventData {
  final double magnitude;
  final double latitude;
  final double longitude;
  final String time;

  EventData({
    required this.magnitude,
    required this.latitude,
    required this.longitude,
    required this.time,
  });

  factory EventData.fromJson(Map<String, dynamic> json) {
    return EventData(
      magnitude: json['Magnitude'],
      latitude: json['Latitude'],
      longitude: json['Longitude'],
      time: json['Time'],
    );
  }

  static List<EventData> parsedSourceData = (jsonDecode(sourceData) as List)
      .map((data) => EventData.fromJson(data))
      .toList();

  static String sourceData = """
[
    {
        "Time": "04-27 13:31",
        "Magnitude": 3.5,
        "Longitude": 121.579,
        "Latitude": 23.7548
    },
    {
        "Time": "04-27 12:09",
        "Magnitude": 3.9,
        "Longitude": 121.827,
        "Latitude": 24.2625
    },
    {
        "Time": "04-27 10:35",
        "Magnitude": 3.3,
        "Longitude": 121.577,
        "Latitude": 23.8523
    },
    {
        "Time": "04-27 09:38",
        "Magnitude": 3.6,
        "Longitude": 121.81,
        "Latitude": 24.1557
    },
    {
        "Time": "04-27 09:06",
        "Magnitude": 4.6,
        "Longitude": 121.698,
        "Latitude": 24.2152
    },
    {
        "Time": "04-27 07:37",
        "Magnitude": 3.6,
        "Longitude": 121.642,
        "Latitude": 24.226
    },
    {
        "Time": "04-27 05:52",
        "Magnitude": 4.0,
        "Longitude": 121.781,
        "Latitude": 23.9503
    },
    {
        "Time": "04-27 04:08",
        "Magnitude": 4.5,
        "Longitude": 122.001,
        "Latitude": 24.1225
    },
    {
        "Time": "04-27 03:50",
        "Magnitude": 3.5,
        "Longitude": 121.644,
        "Latitude": 24.1855
    },
    {
        "Time": "04-27 03:13",
        "Magnitude": 5.0,
        "Longitude": 121.664,
        "Latitude": 24.2087
    },
    {
        "Time": "04-27 02:56",
        "Magnitude": 4.5,
        "Longitude": 121.684,
        "Latitude": 24.2527
    },
    {
        "Time": "04-27 02:50",
        "Magnitude": 4.3,
        "Longitude": 121.694,
        "Latitude": 24.262
    },
    {
        "Time": "04-27 02:49",
        "Magnitude": 5.8,
        "Longitude": 121.689,
        "Latitude": 24.254
    },
    {
        "Time": "04-27 02:45",
        "Magnitude": 4.7,
        "Longitude": 121.648,
        "Latitude": 24.2007
    },
    {
        "Time": "04-27 02:32",
        "Magnitude": 4.0,
        "Longitude": 121.676,
        "Latitude": 24.1878
    },
    {
        "Time": "04-27 02:21",
        "Magnitude": 6.1,
        "Longitude": 121.684,
        "Latitude": 24.1902
    },
    {
        "Time": "04-27 02:11",
        "Magnitude": 3.1,
        "Longitude": 121.739,
        "Latitude": 24.2285
    },
    {
        "Time": "04-27 01:05",
        "Magnitude": 3.1,
        "Longitude": 121.737,
        "Latitude": 24.2242
    },
    {
        "Time": "04-27 00:24",
        "Magnitude": 3.4,
        "Longitude": 121.571,
        "Latitude": 23.8388
    },
    {
        "Time": "04-26 20:29",
        "Magnitude": 3.6,
        "Longitude": 121.545,
        "Latitude": 23.8065
    },
    {
        "Time": "04-26 20:29",
        "Magnitude": 4.1,
        "Longitude": 121.543,
        "Latitude": 23.8032
    },
    {
        "Time": "04-26 20:28",
        "Magnitude": 3.7,
        "Longitude": 121.55,
        "Latitude": 23.8012
    },
    {
        "Time": "04-26 20:28",
        "Magnitude": 4.9,
        "Longitude": 121.54,
        "Latitude": 23.8102
    },
    {
        "Time": "04-26 14:06",
        "Magnitude": 3.5,
        "Longitude": 121.508,
        "Latitude": 23.6975
    },
    {
        "Time": "04-26 13:52",
        "Magnitude": 3.2,
        "Longitude": 121.691,
        "Latitude": 24.1775
    },
    {
        "Time": "04-26 12:49",
        "Magnitude": 3.7,
        "Longitude": 121.424,
        "Latitude": 23.211
    },
    {
        "Time": "04-26 12:43",
        "Magnitude": 4.0,
        "Longitude": 121.621,
        "Latitude": 23.91
    },
    {
        "Time": "04-26 05:24",
        "Magnitude": 3.6,
        "Longitude": 121.575,
        "Latitude": 23.831
    },
    {
        "Time": "04-26 03:52",
        "Magnitude": 3.7,
        "Longitude": 121.611,
        "Latitude": 23.7142
    },
    {
        "Time": "04-26 00:42",
        "Magnitude": 3.5,
        "Longitude": 121.796,
        "Latitude": 24.1953
    },
    {
        "Time": "04-26 00:20",
        "Magnitude": 4.2,
        "Longitude": 121.632,
        "Latitude": 24.1848
    },
    {
        "Time": "04-26 00:20",
        "Magnitude": 4.1,
        "Longitude": 121.671,
        "Latitude": 24.216
    },
    {
        "Time": "04-25 23:28",
        "Magnitude": 3.3,
        "Longitude": 121.682,
        "Latitude": 24.2177
    },
    {
        "Time": "04-25 22:18",
        "Magnitude": 3.0,
        "Longitude": 121.714,
        "Latitude": 24.2077
    },
    {
        "Time": "04-25 22:17",
        "Magnitude": 4.2,
        "Longitude": 121.706,
        "Latitude": 24.207
    },
    {
        "Time": "04-25 21:44",
        "Magnitude": 4.1,
        "Longitude": 121.655,
        "Latitude": 24.2153
    },
    {
        "Time": "04-25 21:17",
        "Magnitude": 3.7,
        "Longitude": 121.638,
        "Latitude": 24.0678
    },
    {
        "Time": "04-25 20:55",
        "Magnitude": 3.8,
        "Longitude": 121.576,
        "Latitude": 23.757
    },
    {
        "Time": "04-25 18:30",
        "Magnitude": 3.6,
        "Longitude": 121.568,
        "Latitude": 23.9185
    },
    {
        "Time": "04-25 17:06",
        "Magnitude": 3.5,
        "Longitude": 121.577,
        "Latitude": 23.8395
    },
    {
        "Time": "04-25 17:03",
        "Magnitude": 4.3,
        "Longitude": 121.724,
        "Latitude": 23.9523
    },
    {
        "Time": "04-25 14:54",
        "Magnitude": 4.0,
        "Longitude": 121.686,
        "Latitude": 23.8462
    },
    {
        "Time": "04-25 14:49",
        "Magnitude": 3.9,
        "Longitude": 121.584,
        "Latitude": 23.7515
    },
    {
        "Time": "04-25 14:12",
        "Magnitude": 3.2,
        "Longitude": 121.544,
        "Latitude": 23.8418
    },
    {
        "Time": "04-25 13:30",
        "Magnitude": 3.9,
        "Longitude": 121.548,
        "Latitude": 23.8052
    },
    {
        "Time": "04-25 11:31",
        "Magnitude": 3.1,
        "Longitude": 121.516,
        "Latitude": 23.7548
    },
    {
        "Time": "04-25 09:43",
        "Magnitude": 4.0,
        "Longitude": 121.586,
        "Latitude": 23.6918
    },
    {
        "Time": "04-25 09:29",
        "Magnitude": 3.6,
        "Longitude": 121.583,
        "Latitude": 23.6987
    },
    {
        "Time": "04-25 09:23",
        "Magnitude": 4.7,
        "Longitude": 121.589,
        "Latitude": 23.8367
    },
    {
        "Time": "04-25 08:48",
        "Magnitude": 3.9,
        "Longitude": 121.592,
        "Latitude": 23.7097
    },
    {
        "Time": "04-25 08:42",
        "Magnitude": 3.4,
        "Longitude": 121.592,
        "Latitude": 23.7143
    },
    {
        "Time": "04-25 08:22",
        "Magnitude": 3.4,
        "Longitude": 121.578,
        "Latitude": 23.701
    },
    {
        "Time": "04-25 08:19",
        "Magnitude": 4.6,
        "Longitude": 121.576,
        "Latitude": 23.692
    },
    {
        "Time": "04-25 08:11",
        "Magnitude": 4.0,
        "Longitude": 121.584,
        "Latitude": 23.7025
    },
    {
        "Time": "04-25 07:53",
        "Magnitude": 4.4,
        "Longitude": 121.613,
        "Latitude": 23.9213
    },
    {
        "Time": "04-25 06:11",
        "Magnitude": 3.5,
        "Longitude": 121.57,
        "Latitude": 23.8232
    },
    {
        "Time": "04-25 02:49",
        "Magnitude": 3.9,
        "Longitude": 121.45,
        "Latitude": 23.779
    },
    {
        "Time": "04-25 02:15",
        "Magnitude": 3.8,
        "Longitude": 121.566,
        "Latitude": 23.9367
    },
    {
        "Time": "04-25 02:12",
        "Magnitude": 5.5,
        "Longitude": 122.362,
        "Latitude": 24.0335
    },
    {
        "Time": "04-25 02:11",
        "Magnitude": 5.6,
        "Longitude": 122.338,
        "Latitude": 23.9128
    },
    {
        "Time": "04-25 02:11",
        "Magnitude": 3.6,
        "Longitude": 121.549,
        "Latitude": 23.766
    },
    {
        "Time": "04-25 01:48",
        "Magnitude": 3.4,
        "Longitude": 121.558,
        "Latitude": 23.8212
    },
    {
        "Time": "04-25 01:44",
        "Magnitude": 3.9,
        "Longitude": 121.803,
        "Latitude": 24.0722
    },
    {
        "Time": "04-25 00:59",
        "Magnitude": 4.9,
        "Longitude": 122.273,
        "Latitude": 24.02
    },
    {
        "Time": "04-25 00:57",
        "Magnitude": 3.5,
        "Longitude": 121.571,
        "Latitude": 23.8052
    },
    {
        "Time": "04-24 23:32",
        "Magnitude": 3.8,
        "Longitude": 121.56,
        "Latitude": 23.6803
    },
    {
        "Time": "04-24 21:37",
        "Magnitude": 4.0,
        "Longitude": 121.571,
        "Latitude": 23.7912
    },
    {
        "Time": "04-24 20:46",
        "Magnitude": 3.9,
        "Longitude": 121.679,
        "Latitude": 24.1983
    },
    {
        "Time": "04-24 20:32",
        "Magnitude": 3.3,
        "Longitude": 121.559,
        "Latitude": 23.7892
    },
    {
        "Time": "04-24 20:04",
        "Magnitude": 3.5,
        "Longitude": 121.58,
        "Latitude": 23.855
    },
    {
        "Time": "04-24 19:22",
        "Magnitude": 3.6,
        "Longitude": 121.431,
        "Latitude": 23.779
    },
    {
        "Time": "04-24 18:24",
        "Magnitude": 3.2,
        "Longitude": 121.573,
        "Latitude": 23.8818
    },
    {
        "Time": "04-24 18:13",
        "Magnitude": 3.7,
        "Longitude": 121.756,
        "Latitude": 24.1733
    },
    {
        "Time": "04-24 17:38",
        "Magnitude": 3.1,
        "Longitude": 121.598,
        "Latitude": 23.938
    },
    {
        "Time": "04-24 17:32",
        "Magnitude": 3.5,
        "Longitude": 121.683,
        "Latitude": 23.9215
    },
    {
        "Time": "04-24 17:23",
        "Magnitude": 4.3,
        "Longitude": 121.603,
        "Latitude": 23.9202
    },
    {
        "Time": "04-24 16:31",
        "Magnitude": 4.0,
        "Longitude": 121.86,
        "Latitude": 24.2627
    },
    {
        "Time": "04-24 15:51",
        "Magnitude": 4.3,
        "Longitude": 121.58,
        "Latitude": 23.8115
    },
    {
        "Time": "04-24 15:44",
        "Magnitude": 3.5,
        "Longitude": 121.568,
        "Latitude": 23.8062
    },
    {
        "Time": "04-24 15:30",
        "Magnitude": 4.9,
        "Longitude": 121.579,
        "Latitude": 23.8107
    },
    {
        "Time": "04-24 14:41",
        "Magnitude": 3.6,
        "Longitude": 121.877,
        "Latitude": 24.2613
    },
    {
        "Time": "04-24 13:54",
        "Magnitude": 3.2,
        "Longitude": 121.569,
        "Latitude": 23.9057
    },
    {
        "Time": "04-24 13:10",
        "Magnitude": 3.7,
        "Longitude": 121.58,
        "Latitude": 23.8447
    },
    {
        "Time": "04-24 13:01",
        "Magnitude": 4.7,
        "Longitude": 121.884,
        "Latitude": 24.2698
    },
    {
        "Time": "04-24 11:28",
        "Magnitude": 4.5,
        "Longitude": 121.611,
        "Latitude": 23.7305
    },
    {
        "Time": "04-24 11:06",
        "Magnitude": 3.4,
        "Longitude": 121.592,
        "Latitude": 23.7452
    },
    {
        "Time": "04-24 10:57",
        "Magnitude": 3.7,
        "Longitude": 121.598,
        "Latitude": 23.7405
    },
    {
        "Time": "04-24 09:53",
        "Magnitude": 4.5,
        "Longitude": 121.668,
        "Latitude": 23.9603
    },
    {
        "Time": "04-24 09:46",
        "Magnitude": 4.2,
        "Longitude": 121.629,
        "Latitude": 23.945
    },
    {
        "Time": "04-24 07:00",
        "Magnitude": 3.5,
        "Longitude": 121.518,
        "Latitude": 23.729
    },
    {
        "Time": "04-24 06:44",
        "Magnitude": 3.3,
        "Longitude": 121.579,
        "Latitude": 24.5057
    },
    {
        "Time": "04-24 06:31",
        "Magnitude": 4.2,
        "Longitude": 121.65,
        "Latitude": 23.8327
    },
    {
        "Time": "04-24 05:55",
        "Magnitude": 4.0,
        "Longitude": 121.727,
        "Latitude": 23.9083
    },
    {
        "Time": "04-24 05:14",
        "Magnitude": 3.3,
        "Longitude": 121.599,
        "Latitude": 23.9197
    },
    {
        "Time": "04-24 04:58",
        "Magnitude": 3.3,
        "Longitude": 121.572,
        "Latitude": 23.9045
    },
    {
        "Time": "04-24 04:17",
        "Magnitude": 3.7,
        "Longitude": 121.525,
        "Latitude": 23.7125
    },
    {
        "Time": "04-24 04:06",
        "Magnitude": 3.8,
        "Longitude": 121.595,
        "Latitude": 23.8188
    },
    {
        "Time": "04-24 03:04",
        "Magnitude": 3.6,
        "Longitude": 121.585,
        "Latitude": 23.7668
    },
    {
        "Time": "04-24 02:49",
        "Magnitude": 3.9,
        "Longitude": 121.605,
        "Latitude": 23.9032
    },
    {
        "Time": "04-24 02:38",
        "Magnitude": 3.6,
        "Longitude": 121.511,
        "Latitude": 23.7213
    },
    {
        "Time": "04-24 02:17",
        "Magnitude": 3.7,
        "Longitude": 121.683,
        "Latitude": 24.1065
    },
    {
        "Time": "04-24 01:17",
        "Magnitude": 3.4,
        "Longitude": 121.547,
        "Latitude": 23.7643
    },
    {
        "Time": "04-24 01:12",
        "Magnitude": 4.4,
        "Longitude": 121.548,
        "Latitude": 23.7598
    },
    {
        "Time": "04-24 00:09",
        "Magnitude": 3.0,
        "Longitude": 121.58,
        "Latitude": 23.9307
    },
    {
        "Time": "04-24 00:02",
        "Magnitude": 4.6,
        "Longitude": 121.679,
        "Latitude": 24.1023
    },
    {
        "Time": "04-23 23:26",
        "Magnitude": 3.1,
        "Longitude": 121.582,
        "Latitude": 23.9328
    },
    {
        "Time": "04-23 23:07",
        "Magnitude": 3.3,
        "Longitude": 121.586,
        "Latitude": 23.9225
    },
    {
        "Time": "04-23 22:54",
        "Magnitude": 3.7,
        "Longitude": 121.543,
        "Latitude": 23.802
    },
    {
        "Time": "04-23 22:50",
        "Magnitude": 3.6,
        "Longitude": 121.589,
        "Latitude": 23.8538
    },
    {
        "Time": "04-23 21:29",
        "Magnitude": 4.1,
        "Longitude": 121.61,
        "Latitude": 23.926
    },
    {
        "Time": "04-23 20:40",
        "Magnitude": 4.7,
        "Longitude": 121.58,
        "Latitude": 23.7838
    },
    {
        "Time": "04-23 20:34",
        "Magnitude": 3.8,
        "Longitude": 121.605,
        "Latitude": 23.8475
    },
    {
        "Time": "04-23 19:43",
        "Magnitude": 3.8,
        "Longitude": 121.572,
        "Latitude": 23.937
    },
    {
        "Time": "04-23 19:13",
        "Magnitude": 4.6,
        "Longitude": 121.599,
        "Latitude": 23.9127
    },
    {
        "Time": "04-23 19:08",
        "Magnitude": 3.6,
        "Longitude": 121.472,
        "Latitude": 23.7392
    },
    {
        "Time": "04-23 18:48",
        "Magnitude": 3.5,
        "Longitude": 121.57,
        "Latitude": 23.9292
    },
    {
        "Time": "04-23 18:36",
        "Magnitude": 3.3,
        "Longitude": 121.547,
        "Latitude": 23.9478
    },
    {
        "Time": "04-23 18:31",
        "Magnitude": 4.0,
        "Longitude": 121.582,
        "Latitude": 23.902
    },
    {
        "Time": "04-23 18:23",
        "Magnitude": 3.8,
        "Longitude": 121.554,
        "Latitude": 23.9467
    },
    {
        "Time": "04-23 18:22",
        "Magnitude": 4.1,
        "Longitude": 121.578,
        "Latitude": 23.9307
    },
    {
        "Time": "04-23 18:01",
        "Magnitude": 3.4,
        "Longitude": 121.58,
        "Latitude": 23.9343
    },
    {
        "Time": "04-23 16:47",
        "Magnitude": 3.2,
        "Longitude": 121.586,
        "Latitude": 23.9312
    },
    {
        "Time": "04-23 16:32",
        "Magnitude": 3.1,
        "Longitude": 121.551,
        "Latitude": 23.7423
    },
    {
        "Time": "04-23 15:33",
        "Magnitude": 3.2,
        "Longitude": 121.577,
        "Latitude": 23.801
    },
    {
        "Time": "04-23 15:27",
        "Magnitude": 3.8,
        "Longitude": 121.586,
        "Latitude": 23.7383
    },
    {
        "Time": "04-23 14:22",
        "Magnitude": 3.9,
        "Longitude": 121.572,
        "Latitude": 23.9277
    },
    {
        "Time": "04-23 14:08",
        "Magnitude": 3.5,
        "Longitude": 121.578,
        "Latitude": 23.7935
    },
    {
        "Time": "04-23 13:40",
        "Magnitude": 3.8,
        "Longitude": 121.571,
        "Latitude": 23.7597
    },
    {
        "Time": "04-23 13:24",
        "Magnitude": 4.0,
        "Longitude": 121.561,
        "Latitude": 23.8587
    },
    {
        "Time": "04-23 13:08",
        "Magnitude": 4.5,
        "Longitude": 121.515,
        "Latitude": 23.789
    },
    {
        "Time": "04-23 12:58",
        "Magnitude": 3.3,
        "Longitude": 121.522,
        "Latitude": 23.7577
    },
    {
        "Time": "04-23 12:56",
        "Magnitude": 3.8,
        "Longitude": 121.637,
        "Latitude": 23.835
    },
    {
        "Time": "04-23 12:38",
        "Magnitude": 3.2,
        "Longitude": 121.587,
        "Latitude": 23.9272
    },
    {
        "Time": "04-23 12:25",
        "Magnitude": 3.5,
        "Longitude": 121.594,
        "Latitude": 23.8975
    },
    {
        "Time": "04-23 12:15",
        "Magnitude": 3.8,
        "Longitude": 121.602,
        "Latitude": 23.9132
    },
    {
        "Time": "04-23 11:44",
        "Magnitude": 4.0,
        "Longitude": 121.572,
        "Latitude": 23.8105
    },
    {
        "Time": "04-23 11:31",
        "Magnitude": 3.6,
        "Longitude": 121.578,
        "Latitude": 23.8715
    },
    {
        "Time": "04-23 11:31",
        "Magnitude": 3.6,
        "Longitude": 121.574,
        "Latitude": 23.8692
    },
    {
        "Time": "04-23 11:15",
        "Magnitude": 3.1,
        "Longitude": 121.566,
        "Latitude": 23.9125
    },
    {
        "Time": "04-23 11:15",
        "Magnitude": 3.2,
        "Longitude": 121.562,
        "Latitude": 23.9132
    },
    {
        "Time": "04-23 10:57",
        "Magnitude": 3.2,
        "Longitude": 121.518,
        "Latitude": 23.7625
    },
    {
        "Time": "04-23 10:54",
        "Magnitude": 3.2,
        "Longitude": 121.562,
        "Latitude": 23.898
    },
    {
        "Time": "04-23 10:38",
        "Magnitude": 3.5,
        "Longitude": 121.562,
        "Latitude": 23.8168
    },
    {
        "Time": "04-23 10:34",
        "Magnitude": 3.2,
        "Longitude": 121.556,
        "Latitude": 23.9138
    },
    {
        "Time": "04-23 10:27",
        "Magnitude": 4.4,
        "Longitude": 121.549,
        "Latitude": 23.8603
    },
    {
        "Time": "04-23 10:25",
        "Magnitude": 3.4,
        "Longitude": 121.578,
        "Latitude": 23.8628
    },
    {
        "Time": "04-23 10:23",
        "Magnitude": 4.7,
        "Longitude": 121.602,
        "Latitude": 23.8895
    },
    {
        "Time": "04-23 10:22",
        "Magnitude": 3.9,
        "Longitude": 121.546,
        "Latitude": 23.8572
    },
    {
        "Time": "04-23 10:21",
        "Magnitude": 5.4,
        "Longitude": 121.548,
        "Latitude": 23.8543
    },
    {
        "Time": "04-23 10:18",
        "Magnitude": 3.7,
        "Longitude": 121.593,
        "Latitude": 23.9153
    },
    {
        "Time": "04-23 10:08",
        "Magnitude": 3.3,
        "Longitude": 121.574,
        "Latitude": 23.9455
    },
    {
        "Time": "04-23 10:07",
        "Magnitude": 3.8,
        "Longitude": 121.558,
        "Latitude": 23.8228
    },
    {
        "Time": "04-23 10:05",
        "Magnitude": 3.9,
        "Longitude": 121.566,
        "Latitude": 23.8157
    },
    {
        "Time": "04-23 10:01",
        "Magnitude": 3.6,
        "Longitude": 121.598,
        "Latitude": 23.896
    },
    {
        "Time": "04-23 09:48",
        "Magnitude": 3.5,
        "Longitude": 121.57,
        "Latitude": 23.7928
    },
    {
        "Time": "04-23 09:46",
        "Magnitude": 4.1,
        "Longitude": 121.617,
        "Latitude": 23.8503
    },
    {
        "Time": "04-23 09:45",
        "Magnitude": 5.4,
        "Longitude": 121.565,
        "Latitude": 23.8118
    },
    {
        "Time": "04-23 09:37",
        "Magnitude": 3.5,
        "Longitude": 121.576,
        "Latitude": 23.8483
    },
    {
        "Time": "04-23 09:28",
        "Magnitude": 3.6,
        "Longitude": 121.552,
        "Latitude": 23.8388
    },
    {
        "Time": "04-23 09:22",
        "Magnitude": 4.7,
        "Longitude": 121.526,
        "Latitude": 23.8535
    },
    {
        "Time": "04-23 09:22",
        "Magnitude": 4.0,
        "Longitude": 121.516,
        "Latitude": 23.7318
    },
    {
        "Time": "04-23 09:21",
        "Magnitude": 3.6,
        "Longitude": 121.583,
        "Latitude": 23.8438
    },
    {
        "Time": "04-23 09:19",
        "Magnitude": 4.7,
        "Longitude": 121.533,
        "Latitude": 23.8922
    },
    {
        "Time": "04-23 09:15",
        "Magnitude": 3.7,
        "Longitude": 121.577,
        "Latitude": 23.7122
    },
    {
        "Time": "04-23 09:13",
        "Magnitude": 3.8,
        "Longitude": 121.516,
        "Latitude": 23.7362
    },
    {
        "Time": "04-23 09:10",
        "Magnitude": 4.2,
        "Longitude": 121.6,
        "Latitude": 23.7202
    },
    {
        "Time": "04-23 09:08",
        "Magnitude": 3.4,
        "Longitude": 121.592,
        "Latitude": 23.9038
    },
    {
        "Time": "04-23 09:02",
        "Magnitude": 3.5,
        "Longitude": 121.569,
        "Latitude": 23.7645
    },
    {
        "Time": "04-23 08:57",
        "Magnitude": 3.4,
        "Longitude": 121.62,
        "Latitude": 23.9188
    },
    {
        "Time": "04-23 08:55",
        "Magnitude": 4.4,
        "Longitude": 121.531,
        "Latitude": 23.859
    },
    {
        "Time": "04-23 08:52",
        "Magnitude": 3.1,
        "Longitude": 121.574,
        "Latitude": 23.8947
    },
    {
        "Time": "04-23 08:50",
        "Magnitude": 3.6,
        "Longitude": 121.629,
        "Latitude": 23.8393
    },
    {
        "Time": "04-23 08:48",
        "Magnitude": 3.1,
        "Longitude": 121.571,
        "Latitude": 23.8932
    },
    {
        "Time": "04-23 08:47",
        "Magnitude": 3.2,
        "Longitude": 121.576,
        "Latitude": 23.8093
    },
    {
        "Time": "04-23 08:46",
        "Magnitude": 3.7,
        "Longitude": 121.596,
        "Latitude": 23.8953
    },
    {
        "Time": "04-23 08:44",
        "Magnitude": 3.6,
        "Longitude": 121.577,
        "Latitude": 23.8017
    },
    {
        "Time": "04-23 08:42",
        "Magnitude": 3.2,
        "Longitude": 121.607,
        "Latitude": 23.8687
    },
    {
        "Time": "04-23 08:35",
        "Magnitude": 3.4,
        "Longitude": 121.542,
        "Latitude": 23.8722
    },
    {
        "Time": "04-23 08:32",
        "Magnitude": 3.9,
        "Longitude": 121.546,
        "Latitude": 23.8297
    },
    {
        "Time": "04-23 08:28",
        "Magnitude": 3.0,
        "Longitude": 121.508,
        "Latitude": 23.8697
    },
    {
        "Time": "04-23 08:27",
        "Magnitude": 3.4,
        "Longitude": 121.518,
        "Latitude": 23.8668
    },
    {
        "Time": "04-23 08:25",
        "Magnitude": 3.4,
        "Longitude": 121.564,
        "Latitude": 23.8513
    },
    {
        "Time": "04-23 08:24",
        "Magnitude": 3.3,
        "Longitude": 121.567,
        "Latitude": 23.8462
    },
    {
        "Time": "04-23 08:21",
        "Magnitude": 3.8,
        "Longitude": 121.539,
        "Latitude": 23.8673
    },
    {
        "Time": "04-23 08:20",
        "Magnitude": 3.4,
        "Longitude": 121.58,
        "Latitude": 23.924
    },
    {
        "Time": "04-23 08:19",
        "Magnitude": 3.3,
        "Longitude": 121.624,
        "Latitude": 23.848
    },
    {
        "Time": "04-23 08:16",
        "Magnitude": 4.8,
        "Longitude": 121.56,
        "Latitude": 23.8508
    },
    {
        "Time": "04-23 08:15",
        "Magnitude": 4.5,
        "Longitude": 121.584,
        "Latitude": 23.89
    },
    {
        "Time": "04-23 08:13",
        "Magnitude": 3.5,
        "Longitude": 121.637,
        "Latitude": 23.8587
    },
    {
        "Time": "04-23 08:12",
        "Magnitude": 4.0,
        "Longitude": 121.549,
        "Latitude": 23.7442
    },
    {
        "Time": "04-23 08:11",
        "Magnitude": 5.1,
        "Longitude": 121.605,
        "Latitude": 23.907
    },
    {
        "Time": "04-23 08:10",
        "Magnitude": 3.6,
        "Longitude": 121.559,
        "Latitude": 23.8765
    },
    {
        "Time": "04-23 08:10",
        "Magnitude": 4.4,
        "Longitude": 121.528,
        "Latitude": 23.8703
    },
    {
        "Time": "04-23 08:08",
        "Magnitude": 3.4,
        "Longitude": 121.484,
        "Latitude": 23.7387
    },
    {
        "Time": "04-23 08:06",
        "Magnitude": 4.3,
        "Longitude": 121.546,
        "Latitude": 23.8003
    },
    {
        "Time": "04-23 08:06",
        "Magnitude": 4.6,
        "Longitude": 121.534,
        "Latitude": 23.8048
    },
    {
        "Time": "04-23 08:04",
        "Magnitude": 5.8,
        "Longitude": 121.599,
        "Latitude": 23.8207
    },
    {
        "Time": "04-23 07:54",
        "Magnitude": 3.4,
        "Longitude": 121.577,
        "Latitude": 23.8583
    },
    {
        "Time": "04-23 07:45",
        "Magnitude": 3.2,
        "Longitude": 121.565,
        "Latitude": 23.9268
    },
    {
        "Time": "04-23 07:38",
        "Magnitude": 4.3,
        "Longitude": 121.561,
        "Latitude": 23.9077
    },
    {
        "Time": "04-23 07:36",
        "Magnitude": 3.6,
        "Longitude": 121.54,
        "Latitude": 23.8302
    },
    {
        "Time": "04-23 07:35",
        "Magnitude": 4.6,
        "Longitude": 121.575,
        "Latitude": 23.8387
    },
    {
        "Time": "04-23 07:31",
        "Magnitude": 3.5,
        "Longitude": 121.553,
        "Latitude": 23.7425
    },
    {
        "Time": "04-23 07:21",
        "Magnitude": 3.3,
        "Longitude": 121.486,
        "Latitude": 23.7562
    },
    {
        "Time": "04-23 07:17",
        "Magnitude": 4.1,
        "Longitude": 121.59,
        "Latitude": 23.9182
    },
    {
        "Time": "04-23 07:16",
        "Magnitude": 4.1,
        "Longitude": 121.58,
        "Latitude": 23.7362
    },
    {
        "Time": "04-23 07:03",
        "Magnitude": 3.8,
        "Longitude": 121.62,
        "Latitude": 23.837
    },
    {
        "Time": "04-23 07:02",
        "Magnitude": 4.6,
        "Longitude": 121.501,
        "Latitude": 23.7342
    },
    {
        "Time": "04-23 07:01",
        "Magnitude": 3.8,
        "Longitude": 121.565,
        "Latitude": 23.8828
    },
    {
        "Time": "04-23 06:26",
        "Magnitude": 4.6,
        "Longitude": 121.455,
        "Latitude": 23.7873
    },
    {
        "Time": "04-23 06:21",
        "Magnitude": 3.4,
        "Longitude": 121.513,
        "Latitude": 23.7288
    },
    {
        "Time": "04-23 06:10",
        "Magnitude": 3.1,
        "Longitude": 121.545,
        "Latitude": 23.799
    },
    {
        "Time": "04-23 06:05",
        "Magnitude": 3.6,
        "Longitude": 121.54,
        "Latitude": 23.7748
    },
    {
        "Time": "04-23 06:04",
        "Magnitude": 3.9,
        "Longitude": 121.51,
        "Latitude": 23.8078
    },
    {
        "Time": "04-23 05:58",
        "Magnitude": 3.5,
        "Longitude": 121.557,
        "Latitude": 23.762
    },
    {
        "Time": "04-23 05:57",
        "Magnitude": 3.1,
        "Longitude": 121.562,
        "Latitude": 23.811
    },
    {
        "Time": "04-23 05:50",
        "Magnitude": 3.2,
        "Longitude": 121.517,
        "Latitude": 23.9188
    },
    {
        "Time": "04-23 05:46",
        "Magnitude": 4.2,
        "Longitude": 121.567,
        "Latitude": 23.8193
    },
    {
        "Time": "04-23 05:45",
        "Magnitude": 3.4,
        "Longitude": 121.519,
        "Latitude": 23.7423
    },
    {
        "Time": "04-23 05:43",
        "Magnitude": 3.9,
        "Longitude": 121.599,
        "Latitude": 23.7788
    },
    {
        "Time": "04-23 05:36",
        "Magnitude": 3.2,
        "Longitude": 121.496,
        "Latitude": 23.765
    },
    {
        "Time": "04-23 05:31",
        "Magnitude": 5.7,
        "Longitude": 121.555,
        "Latitude": 23.8525
    },
    {
        "Time": "04-23 05:26",
        "Magnitude": 4.1,
        "Longitude": 121.527,
        "Latitude": 23.7422
    },
    {
        "Time": "04-23 05:26",
        "Magnitude": 4.5,
        "Longitude": 121.527,
        "Latitude": 23.7443
    },
    {
        "Time": "04-23 05:24",
        "Magnitude": 4.7,
        "Longitude": 121.518,
        "Latitude": 23.7453
    },
    {
        "Time": "04-23 05:24",
        "Magnitude": 5.2,
        "Longitude": 121.525,
        "Latitude": 23.7427
    },
    {
        "Time": "04-23 05:19",
        "Magnitude": 5.7,
        "Longitude": 121.541,
        "Latitude": 23.783
    },
    {
        "Time": "04-23 05:16",
        "Magnitude": 3.9,
        "Longitude": 121.547,
        "Latitude": 23.7683
    },
    {
        "Time": "04-23 05:14",
        "Magnitude": 5.0,
        "Longitude": 121.536,
        "Latitude": 23.7573
    },
    {
        "Time": "04-23 05:13",
        "Magnitude": 4.1,
        "Longitude": 121.526,
        "Latitude": 23.745
    },
    {
        "Time": "04-23 05:10",
        "Magnitude": 4.9,
        "Longitude": 121.551,
        "Latitude": 23.7487
    },
    {
        "Time": "04-23 05:08",
        "Magnitude": 4.2,
        "Longitude": 121.512,
        "Latitude": 23.72
    },
    {
        "Time": "04-23 05:07",
        "Magnitude": 3.9,
        "Longitude": 121.579,
        "Latitude": 23.8817
    },
    {
        "Time": "04-23 05:06",
        "Magnitude": 4.6,
        "Longitude": 121.568,
        "Latitude": 23.7425
    },
    {
        "Time": "04-23 05:04",
        "Magnitude": 5.5,
        "Longitude": 121.512,
        "Latitude": 23.707
    },
    {
        "Time": "04-23 05:01",
        "Magnitude": 4.2,
        "Longitude": 121.534,
        "Latitude": 23.7268
    },
    {
        "Time": "04-23 04:53",
        "Magnitude": 4.9,
        "Longitude": 121.527,
        "Latitude": 23.7655
    },
    {
        "Time": "04-23 04:52",
        "Magnitude": 5.3,
        "Longitude": 121.516,
        "Latitude": 23.802
    },
    {
        "Time": "04-23 04:49",
        "Magnitude": 5.9,
        "Longitude": 121.579,
        "Latitude": 23.723
    },
    {
        "Time": "04-23 04:42",
        "Magnitude": 3.7,
        "Longitude": 121.572,
        "Latitude": 23.758
    },
    {
        "Time": "04-23 04:40",
        "Magnitude": 3.2,
        "Longitude": 121.573,
        "Latitude": 23.8215
    },
    {
        "Time": "04-23 04:34",
        "Magnitude": 4.1,
        "Longitude": 121.552,
        "Latitude": 23.7148
    },
    {
        "Time": "04-23 04:30",
        "Magnitude": 3.7,
        "Longitude": 121.527,
        "Latitude": 23.7612
    },
    {
        "Time": "04-23 04:20",
        "Magnitude": 3.0,
        "Longitude": 121.577,
        "Latitude": 23.918
    },
    {
        "Time": "04-23 04:12",
        "Magnitude": 4.2,
        "Longitude": 121.608,
        "Latitude": 23.8143
    },
    {
        "Time": "04-23 04:11",
        "Magnitude": 4.2,
        "Longitude": 121.542,
        "Latitude": 23.7893
    },
    {
        "Time": "04-23 04:10",
        "Magnitude": 4.0,
        "Longitude": 121.539,
        "Latitude": 23.7487
    },
    {
        "Time": "04-23 04:07",
        "Magnitude": 4.4,
        "Longitude": 121.528,
        "Latitude": 23.8942
    },
    {
        "Time": "04-23 04:05",
        "Magnitude": 3.8,
        "Longitude": 121.539,
        "Latitude": 23.8137
    },
    {
        "Time": "04-23 04:04",
        "Magnitude": 3.7,
        "Longitude": 121.564,
        "Latitude": 23.8685
    },
    {
        "Time": "04-23 04:03",
        "Magnitude": 5.0,
        "Longitude": 121.605,
        "Latitude": 23.8228
    },
    {
        "Time": "04-23 04:01",
        "Magnitude": 3.9,
        "Longitude": 121.556,
        "Latitude": 23.8842
    },
    {
        "Time": "04-23 03:57",
        "Magnitude": 4.3,
        "Longitude": 121.61,
        "Latitude": 23.8377
    },
    {
        "Time": "04-23 03:50",
        "Magnitude": 3.8,
        "Longitude": 121.55,
        "Latitude": 23.8368
    },
    {
        "Time": "04-23 03:48",
        "Magnitude": 3.5,
        "Longitude": 121.601,
        "Latitude": 23.8597
    },
    {
        "Time": "04-23 03:39",
        "Magnitude": 3.7,
        "Longitude": 121.631,
        "Latitude": 23.8123
    },
    {
        "Time": "04-23 03:34",
        "Magnitude": 4.9,
        "Longitude": 121.538,
        "Latitude": 23.8223
    },
    {
        "Time": "04-23 03:28",
        "Magnitude": 5.0,
        "Longitude": 121.568,
        "Latitude": 23.7625
    },
    {
        "Time": "04-23 03:24",
        "Magnitude": 4.2,
        "Longitude": 121.556,
        "Latitude": 23.9005
    },
    {
        "Time": "04-23 03:20",
        "Magnitude": 4.9,
        "Longitude": 121.556,
        "Latitude": 23.873
    },
    {
        "Time": "04-23 03:19",
        "Magnitude": 5.1,
        "Longitude": 121.57,
        "Latitude": 23.8728
    },
    {
        "Time": "04-23 03:18",
        "Magnitude": 3.8,
        "Longitude": 121.56,
        "Latitude": 23.8908
    },
    {
        "Time": "04-23 03:17",
        "Magnitude": 4.1,
        "Longitude": 121.567,
        "Latitude": 23.7373
    },
    {
        "Time": "04-23 03:16",
        "Magnitude": 3.4,
        "Longitude": 121.586,
        "Latitude": 23.7782
    },
    {
        "Time": "04-23 03:13",
        "Magnitude": 4.8,
        "Longitude": 121.548,
        "Latitude": 23.865
    },
    {
        "Time": "04-23 03:07",
        "Magnitude": 3.9,
        "Longitude": 121.538,
        "Latitude": 23.8233
    },
    {
        "Time": "04-23 03:06",
        "Magnitude": 3.6,
        "Longitude": 121.594,
        "Latitude": 23.798
    },
    {
        "Time": "04-23 03:00",
        "Magnitude": 4.2,
        "Longitude": 121.577,
        "Latitude": 23.8443
    },
    {
        "Time": "04-23 02:59",
        "Magnitude": 3.4,
        "Longitude": 121.648,
        "Latitude": 23.8017
    },
    {
        "Time": "04-23 02:56",
        "Magnitude": 4.1,
        "Longitude": 121.546,
        "Latitude": 23.8185
    },
    {
        "Time": "04-23 02:56",
        "Magnitude": 3.6,
        "Longitude": 121.559,
        "Latitude": 23.9093
    },
    {
        "Time": "04-23 02:52",
        "Magnitude": 3.4,
        "Longitude": 121.59,
        "Latitude": 23.843
    },
    {
        "Time": "04-23 02:47",
        "Magnitude": 3.8,
        "Longitude": 121.613,
        "Latitude": 23.827
    },
    {
        "Time": "04-23 02:44",
        "Magnitude": 4.6,
        "Longitude": 121.542,
        "Latitude": 23.8595
    },
    {
        "Time": "04-23 02:39",
        "Magnitude": 4.8,
        "Longitude": 121.576,
        "Latitude": 23.8063
    },
    {
        "Time": "04-23 02:35",
        "Magnitude": 4.6,
        "Longitude": 121.574,
        "Latitude": 23.8967
    },
    {
        "Time": "04-23 02:32",
        "Magnitude": 6.3,
        "Longitude": 121.543,
        "Latitude": 23.8525
    },
    {
        "Time": "04-23 02:26",
        "Magnitude": 6.0,
        "Longitude": 121.663,
        "Latitude": 23.7242
    },
    {
        "Time": "04-23 02:12",
        "Magnitude": 4.0,
        "Longitude": 121.536,
        "Latitude": 23.7862
    },
    {
        "Time": "04-23 02:07",
        "Magnitude": 3.7,
        "Longitude": 121.567,
        "Latitude": 23.7448
    },
    {
        "Time": "04-23 01:52",
        "Magnitude": 3.7,
        "Longitude": 121.573,
        "Latitude": 23.7557
    },
    {
        "Time": "04-23 01:48",
        "Magnitude": 3.4,
        "Longitude": 121.554,
        "Latitude": 23.7405
    },
    {
        "Time": "04-23 01:42",
        "Magnitude": 3.7,
        "Longitude": 121.549,
        "Latitude": 23.7575
    },
    {
        "Time": "04-23 01:40",
        "Magnitude": 4.3,
        "Longitude": 121.556,
        "Latitude": 23.7415
    },
    {
        "Time": "04-23 01:39",
        "Magnitude": 3.5,
        "Longitude": 121.511,
        "Latitude": 23.748
    },
    {
        "Time": "04-23 01:39",
        "Magnitude": 3.0,
        "Longitude": 121.486,
        "Latitude": 23.736
    },
    {
        "Time": "04-23 01:33",
        "Magnitude": 3.2,
        "Longitude": 121.553,
        "Latitude": 23.7382
    },
    {
        "Time": "04-23 01:32",
        "Magnitude": 3.8,
        "Longitude": 121.582,
        "Latitude": 23.773
    },
    {
        "Time": "04-23 01:14",
        "Magnitude": 3.5,
        "Longitude": 121.492,
        "Latitude": 23.7075
    },
    {
        "Time": "04-23 00:53",
        "Magnitude": 3.5,
        "Longitude": 121.523,
        "Latitude": 23.7648
    },
    {
        "Time": "04-23 00:49",
        "Magnitude": 4.0,
        "Longitude": 121.429,
        "Latitude": 23.7662
    },
    {
        "Time": "04-23 00:48",
        "Magnitude": 4.3,
        "Longitude": 121.585,
        "Latitude": 24.1975
    },
    {
        "Time": "04-23 00:45",
        "Magnitude": 4.4,
        "Longitude": 121.584,
        "Latitude": 23.7855
    },
    {
        "Time": "04-23 00:33",
        "Magnitude": 4.7,
        "Longitude": 121.625,
        "Latitude": 23.818
    },
    {
        "Time": "04-23 00:30",
        "Magnitude": 3.3,
        "Longitude": 121.533,
        "Latitude": 23.7762
    },
    {
        "Time": "04-23 00:11",
        "Magnitude": 3.2,
        "Longitude": 121.516,
        "Latitude": 23.7623
    },
    {
        "Time": "04-23 00:06",
        "Magnitude": 4.3,
        "Longitude": 121.55,
        "Latitude": 23.732
    },
    {
        "Time": "04-23 00:01",
        "Magnitude": 4.6,
        "Longitude": 121.507,
        "Latitude": 23.767
    },
    {
        "Time": "04-23 00:01",
        "Magnitude": 4.4,
        "Longitude": 121.526,
        "Latitude": 23.7863
    },
    {
        "Time": "04-22 23:59",
        "Magnitude": 3.5,
        "Longitude": 121.534,
        "Latitude": 23.7398
    },
    {
        "Time": "04-22 23:57",
        "Magnitude": 4.1,
        "Longitude": 121.523,
        "Latitude": 23.7707
    },
    {
        "Time": "04-22 23:56",
        "Magnitude": 4.7,
        "Longitude": 121.53,
        "Latitude": 23.7607
    },
    {
        "Time": "04-22 23:45",
        "Magnitude": 4.3,
        "Longitude": 121.599,
        "Latitude": 24.1993
    },
    {
        "Time": "04-22 23:37",
        "Magnitude": 3.1,
        "Longitude": 121.525,
        "Latitude": 23.8467
    },
    {
        "Time": "04-22 23:27",
        "Magnitude": 3.2,
        "Longitude": 121.531,
        "Latitude": 23.8148
    },
    {
        "Time": "04-22 23:23",
        "Magnitude": 3.3,
        "Longitude": 121.567,
        "Latitude": 23.7648
    },
    {
        "Time": "04-22 23:18",
        "Magnitude": 3.1,
        "Longitude": 121.555,
        "Latitude": 23.8323
    },
    {
        "Time": "04-22 23:14",
        "Magnitude": 4.2,
        "Longitude": 121.552,
        "Latitude": 23.8378
    },
    {
        "Time": "04-22 22:57",
        "Magnitude": 3.1,
        "Longitude": 121.575,
        "Latitude": 23.7713
    },
    {
        "Time": "04-22 22:53",
        "Magnitude": 3.2,
        "Longitude": 121.584,
        "Latitude": 23.7968
    },
    {
        "Time": "04-22 22:44",
        "Magnitude": 3.6,
        "Longitude": 121.577,
        "Latitude": 23.7948
    },
    {
        "Time": "04-22 22:27",
        "Magnitude": 4.2,
        "Longitude": 121.501,
        "Latitude": 23.7545
    },
    {
        "Time": "04-22 22:27",
        "Magnitude": 4.0,
        "Longitude": 121.566,
        "Latitude": 23.7527
    },
    {
        "Time": "04-22 22:20",
        "Magnitude": 4.8,
        "Longitude": 121.587,
        "Latitude": 23.7302
    },
    {
        "Time": "04-22 22:16",
        "Magnitude": 3.9,
        "Longitude": 121.507,
        "Latitude": 23.7422
    },
    {
        "Time": "04-22 22:16",
        "Magnitude": 3.6,
        "Longitude": 121.506,
        "Latitude": 23.8553
    },
    {
        "Time": "04-22 22:16",
        "Magnitude": 3.8,
        "Longitude": 121.496,
        "Latitude": 23.729
    },
    {
        "Time": "04-22 22:13",
        "Magnitude": 4.3,
        "Longitude": 121.525,
        "Latitude": 23.7615
    },
    {
        "Time": "04-22 22:13",
        "Magnitude": 4.2,
        "Longitude": 121.494,
        "Latitude": 23.7242
    },
    {
        "Time": "04-22 22:12",
        "Magnitude": 4.3,
        "Longitude": 121.501,
        "Latitude": 23.7405
    },
    {
        "Time": "04-22 22:12",
        "Magnitude": 4.5,
        "Longitude": 121.517,
        "Latitude": 23.7527
    },
    {
        "Time": "04-22 22:11",
        "Magnitude": 5.9,
        "Longitude": 121.52,
        "Latitude": 23.7703
    },
    {
        "Time": "04-22 22:06",
        "Magnitude": 3.8,
        "Longitude": 121.532,
        "Latitude": 23.861
    },
    {
        "Time": "04-22 21:42",
        "Magnitude": 4.8,
        "Longitude": 121.585,
        "Latitude": 23.8073
    },
    {
        "Time": "04-22 21:24",
        "Magnitude": 3.9,
        "Longitude": 121.538,
        "Latitude": 23.6992
    },
    {
        "Time": "04-22 21:19",
        "Magnitude": 3.5,
        "Longitude": 121.568,
        "Latitude": 23.7825
    },
    {
        "Time": "04-22 21:14",
        "Magnitude": 3.7,
        "Longitude": 121.508,
        "Latitude": 23.734
    },
    {
        "Time": "04-22 21:13",
        "Magnitude": 5.3,
        "Longitude": 121.529,
        "Latitude": 23.7055
    },
    {
        "Time": "04-22 21:02",
        "Magnitude": 4.4,
        "Longitude": 121.527,
        "Latitude": 23.7645
    },
    {
        "Time": "04-22 21:00",
        "Magnitude": 4.7,
        "Longitude": 121.52,
        "Latitude": 23.7382
    },
    {
        "Time": "04-22 20:58",
        "Magnitude": 3.6,
        "Longitude": 121.542,
        "Latitude": 23.7838
    },
    {
        "Time": "04-22 20:46",
        "Magnitude": 3.6,
        "Longitude": 121.521,
        "Latitude": 23.752
    },
    {
        "Time": "04-22 20:23",
        "Magnitude": 4.5,
        "Longitude": 121.537,
        "Latitude": 23.8117
    },
    {
        "Time": "04-22 20:20",
        "Magnitude": 3.6,
        "Longitude": 121.458,
        "Latitude": 23.7665
    },
    {
        "Time": "04-22 20:15",
        "Magnitude": 3.3,
        "Longitude": 121.552,
        "Latitude": 23.783
    },
    {
        "Time": "04-22 20:13",
        "Magnitude": 4.1,
        "Longitude": 121.506,
        "Latitude": 23.731
    },
    {
        "Time": "04-22 20:01",
        "Magnitude": 3.5,
        "Longitude": 121.525,
        "Latitude": 23.7362
    },
    {
        "Time": "04-22 19:57",
        "Magnitude": 3.6,
        "Longitude": 121.476,
        "Latitude": 23.858
    },
    {
        "Time": "04-22 19:56",
        "Magnitude": 3.7,
        "Longitude": 121.542,
        "Latitude": 23.7713
    },
    {
        "Time": "04-22 19:48",
        "Magnitude": 3.8,
        "Longitude": 121.533,
        "Latitude": 23.7023
    },
    {
        "Time": "04-22 19:47",
        "Magnitude": 4.3,
        "Longitude": 121.538,
        "Latitude": 23.7567
    },
    {
        "Time": "04-22 19:45",
        "Magnitude": 5.0,
        "Longitude": 121.537,
        "Latitude": 23.7178
    },
    {
        "Time": "04-22 19:44",
        "Magnitude": 4.8,
        "Longitude": 121.567,
        "Latitude": 23.7678
    },
    {
        "Time": "04-22 19:37",
        "Magnitude": 3.9,
        "Longitude": 121.53,
        "Latitude": 23.786
    },
    {
        "Time": "04-22 19:36",
        "Magnitude": 3.8,
        "Longitude": 121.525,
        "Latitude": 23.7902
    },
    {
        "Time": "04-22 19:36",
        "Magnitude": 4.2,
        "Longitude": 121.511,
        "Latitude": 23.7355
    },
    {
        "Time": "04-22 19:34",
        "Magnitude": 4.9,
        "Longitude": 121.515,
        "Latitude": 23.7882
    },
    {
        "Time": "04-22 19:25",
        "Magnitude": 5.0,
        "Longitude": 121.508,
        "Latitude": 23.7187
    },
    {
        "Time": "04-22 19:25",
        "Magnitude": 4.7,
        "Longitude": 121.506,
        "Latitude": 23.7193
    },
    {
        "Time": "04-22 19:22",
        "Magnitude": 4.3,
        "Longitude": 121.531,
        "Latitude": 23.7413
    },
    {
        "Time": "04-22 19:22",
        "Magnitude": 4.9,
        "Longitude": 121.496,
        "Latitude": 23.7777
    },
    {
        "Time": "04-22 19:20",
        "Magnitude": 3.6,
        "Longitude": 121.527,
        "Latitude": 23.7598
    },
    {
        "Time": "04-22 19:16",
        "Magnitude": 3.6,
        "Longitude": 121.53,
        "Latitude": 23.7633
    },
    {
        "Time": "04-22 19:13",
        "Magnitude": 4.6,
        "Longitude": 121.579,
        "Latitude": 23.7762
    },
    {
        "Time": "04-22 19:13",
        "Magnitude": 5.4,
        "Longitude": 121.545,
        "Latitude": 23.8328
    },
    {
        "Time": "04-22 19:10",
        "Magnitude": 4.2,
        "Longitude": 121.535,
        "Latitude": 23.7408
    },
    {
        "Time": "04-22 19:10",
        "Magnitude": 4.7,
        "Longitude": 121.523,
        "Latitude": 23.7565
    },
    {
        "Time": "04-22 19:06",
        "Magnitude": 3.6,
        "Longitude": 121.565,
        "Latitude": 23.7982
    },
    {
        "Time": "04-22 19:05",
        "Magnitude": 3.9,
        "Longitude": 121.51,
        "Latitude": 23.7417
    },
    {
        "Time": "04-22 18:56",
        "Magnitude": 3.5,
        "Longitude": 121.479,
        "Latitude": 23.7743
    },
    {
        "Time": "04-22 18:55",
        "Magnitude": 4.4,
        "Longitude": 121.51,
        "Latitude": 23.7627
    },
    {
        "Time": "04-22 18:53",
        "Magnitude": 4.2,
        "Longitude": 121.523,
        "Latitude": 23.7193
    },
    {
        "Time": "04-22 18:52",
        "Magnitude": 4.0,
        "Longitude": 121.541,
        "Latitude": 23.735
    },
    {
        "Time": "04-22 18:50",
        "Magnitude": 5.7,
        "Longitude": 121.514,
        "Latitude": 23.7518
    },
    {
        "Time": "04-22 18:49",
        "Magnitude": 5.3,
        "Longitude": 121.535,
        "Latitude": 23.7572
    },
    {
        "Time": "04-22 18:46",
        "Magnitude": 5.4,
        "Longitude": 121.53,
        "Latitude": 23.765
    },
    {
        "Time": "04-22 18:46",
        "Magnitude": 4.8,
        "Longitude": 121.53,
        "Latitude": 23.7435
    },
    {
        "Time": "04-22 18:42",
        "Magnitude": 3.3,
        "Longitude": 121.55,
        "Latitude": 23.7653
    },
    {
        "Time": "04-22 18:39",
        "Magnitude": 3.5,
        "Longitude": 121.552,
        "Latitude": 23.799
    },
    {
        "Time": "04-22 18:24",
        "Magnitude": 3.2,
        "Longitude": 121.53,
        "Latitude": 23.7637
    },
    {
        "Time": "04-22 18:11",
        "Magnitude": 3.4,
        "Longitude": 121.516,
        "Latitude": 23.756
    },
    {
        "Time": "04-22 18:08",
        "Magnitude": 4.3,
        "Longitude": 121.538,
        "Latitude": 23.768
    },
    {
        "Time": "04-22 17:53",
        "Magnitude": 4.4,
        "Longitude": 121.574,
        "Latitude": 23.7873
    },
    {
        "Time": "04-22 17:52",
        "Magnitude": 5.1,
        "Longitude": 121.587,
        "Latitude": 23.7907
    },
    {
        "Time": "04-22 17:51",
        "Magnitude": 3.7,
        "Longitude": 121.519,
        "Latitude": 23.757
    },
    {
        "Time": "04-22 17:44",
        "Magnitude": 3.3,
        "Longitude": 121.536,
        "Latitude": 23.7748
    },
    {
        "Time": "04-22 17:36",
        "Magnitude": 3.5,
        "Longitude": 121.552,
        "Latitude": 23.7653
    },
    {
        "Time": "04-22 17:19",
        "Magnitude": 3.2,
        "Longitude": 121.528,
        "Latitude": 23.7805
    },
    {
        "Time": "04-22 17:17",
        "Magnitude": 4.9,
        "Longitude": 121.516,
        "Latitude": 23.7948
    },
    {
        "Time": "04-22 17:15",
        "Magnitude": 4.9,
        "Longitude": 121.528,
        "Latitude": 23.7847
    },
    {
        "Time": "04-22 17:12",
        "Magnitude": 5.3,
        "Longitude": 121.553,
        "Latitude": 23.7933
    },
    {
        "Time": "04-22 17:09",
        "Magnitude": 4.4,
        "Longitude": 121.529,
        "Latitude": 23.7558
    },
    {
        "Time": "04-22 17:08",
        "Magnitude": 5.5,
        "Longitude": 121.546,
        "Latitude": 23.7588
    },
    {
        "Time": "04-22 08:03",
        "Magnitude": 4.3,
        "Longitude": 121.829,
        "Latitude": 24.291
    },
    {
        "Time": "04-22 08:01",
        "Magnitude": 4.1,
        "Longitude": 121.828,
        "Latitude": 24.291
    },
    {
        "Time": "04-22 02:53",
        "Magnitude": 4.8,
        "Longitude": 121.618,
        "Latitude": 23.9417
    },
    {
        "Time": "04-22 00:35",
        "Magnitude": 5.3,
        "Longitude": 121.674,
        "Latitude": 24.2032
    },
    {
        "Time": "04-21 23:36",
        "Magnitude": 3.0,
        "Longitude": 121.865,
        "Latitude": 24.4782
    },
    {
        "Time": "04-21 17:54",
        "Magnitude": 4.3,
        "Longitude": 121.742,
        "Latitude": 24.013
    },
    {
        "Time": "04-21 17:14",
        "Magnitude": 3.8,
        "Longitude": 121.869,
        "Latitude": 24.1777
    },
    {
        "Time": "04-21 15:51",
        "Magnitude": 3.1,
        "Longitude": 121.752,
        "Latitude": 24.2583
    },
    {
        "Time": "04-21 12:13",
        "Magnitude": 3.8,
        "Longitude": 121.625,
        "Latitude": 23.9407
    },
    {
        "Time": "04-21 11:07",
        "Magnitude": 4.6,
        "Longitude": 121.679,
        "Latitude": 24.1942
    },
    {
        "Time": "04-21 10:40",
        "Magnitude": 5.6,
        "Longitude": 121.675,
        "Latitude": 23.4888
    },
    {
        "Time": "04-21 06:04",
        "Magnitude": 3.3,
        "Longitude": 121.742,
        "Latitude": 24.3388
    },
    {
        "Time": "04-20 20:01",
        "Magnitude": 3.4,
        "Longitude": 121.757,
        "Latitude": 24.243
    },
    {
        "Time": "04-20 14:03",
        "Magnitude": 3.2,
        "Longitude": 121.516,
        "Latitude": 23.7548
    },
    {
        "Time": "04-20 09:04",
        "Magnitude": 4.2,
        "Longitude": 121.687,
        "Latitude": 24.2322
    },
    {
        "Time": "04-20 08:35",
        "Magnitude": 4.5,
        "Longitude": 121.869,
        "Latitude": 24.2082
    },
    {
        "Time": "04-19 22:25",
        "Magnitude": 4.6,
        "Longitude": 121.769,
        "Latitude": 24.3383
    },
    {
        "Time": "04-19 17:51",
        "Magnitude": 3.8,
        "Longitude": 121.759,
        "Latitude": 24.0647
    },
    {
        "Time": "04-19 12:36",
        "Magnitude": 3.3,
        "Longitude": 121.711,
        "Latitude": 24.2368
    },
    {
        "Time": "04-19 10:43",
        "Magnitude": 4.0,
        "Longitude": 121.655,
        "Latitude": 23.9698
    },
    {
        "Time": "04-19 10:21",
        "Magnitude": 3.2,
        "Longitude": 121.719,
        "Latitude": 24.231
    },
    {
        "Time": "04-19 06:18",
        "Magnitude": 3.7,
        "Longitude": 121.667,
        "Latitude": 24.1802
    },
    {
        "Time": "04-18 17:11",
        "Magnitude": 4.6,
        "Longitude": 121.752,
        "Latitude": 23.759
    },
    {
        "Time": "04-18 16:18",
        "Magnitude": 3.9,
        "Longitude": 121.67,
        "Latitude": 24.1673
    },
    {
        "Time": "04-18 14:09",
        "Magnitude": 3.7,
        "Longitude": 121.669,
        "Latitude": 24.0842
    },
    {
        "Time": "04-18 05:36",
        "Magnitude": 3.7,
        "Longitude": 120.202,
        "Latitude": 23.356
    },
    {
        "Time": "04-17 17:17",
        "Magnitude": 5.2,
        "Longitude": 121.692,
        "Latitude": 23.9135
    },
    {
        "Time": "04-17 10:12",
        "Magnitude": 3.3,
        "Longitude": 121.591,
        "Latitude": 23.9593
    },
    {
        "Time": "04-17 03:01",
        "Magnitude": 4.1,
        "Longitude": 120.198,
        "Latitude": 23.3472
    },
    {
        "Time": "04-17 02:59",
        "Magnitude": 5.0,
        "Longitude": 121.763,
        "Latitude": 24.1145
    },
    {
        "Time": "04-16 23:57",
        "Magnitude": 3.7,
        "Longitude": 120.208,
        "Latitude": 23.3497
    },
    {
        "Time": "04-16 22:16",
        "Magnitude": 3.6,
        "Longitude": 121.081,
        "Latitude": 21.9495
    },
    {
        "Time": "04-16 21:36",
        "Magnitude": 3.5,
        "Longitude": 120.207,
        "Latitude": 23.3515
    },
    {
        "Time": "04-16 19:30",
        "Magnitude": 3.2,
        "Longitude": 121.536,
        "Latitude": 23.7075
    },
    {
        "Time": "04-16 12:07",
        "Magnitude": 3.5,
        "Longitude": 120.166,
        "Latitude": 23.35
    },
    {
        "Time": "04-16 09:13",
        "Magnitude": 3.8,
        "Longitude": 121.732,
        "Latitude": 23.9748
    },
    {
        "Time": "04-16 08:52",
        "Magnitude": 3.1,
        "Longitude": 121.751,
        "Latitude": 24.2505
    },
    {
        "Time": "04-16 08:44",
        "Magnitude": 4.2,
        "Longitude": 121.789,
        "Latitude": 24.239
    },
    {
        "Time": "04-16 08:37",
        "Magnitude": 4.3,
        "Longitude": 121.759,
        "Latitude": 24.2562
    },
    {
        "Time": "04-16 08:23",
        "Magnitude": 4.2,
        "Longitude": 121.791,
        "Latitude": 24.244
    },
    {
        "Time": "04-16 07:14",
        "Magnitude": 3.6,
        "Longitude": 121.462,
        "Latitude": 23.9192
    },
    {
        "Time": "04-16 07:06",
        "Magnitude": 3.7,
        "Longitude": 120.174,
        "Latitude": 23.3462
    },
    {
        "Time": "04-16 02:47",
        "Magnitude": 4.5,
        "Longitude": 121.728,
        "Latitude": 24.0695
    },
    {
        "Time": "04-15 19:52",
        "Magnitude": 3.5,
        "Longitude": 120.191,
        "Latitude": 23.3525
    },
    {
        "Time": "04-15 16:17",
        "Magnitude": 3.5,
        "Longitude": 121.54,
        "Latitude": 23.8565
    },
    {
        "Time": "04-15 12:18",
        "Magnitude": 3.2,
        "Longitude": 121.741,
        "Latitude": 24.206
    },
    {
        "Time": "04-15 07:10",
        "Magnitude": 4.0,
        "Longitude": 121.751,
        "Latitude": 24.2562
    },
    {
        "Time": "04-15 05:38",
        "Magnitude": 3.0,
        "Longitude": 121.726,
        "Latitude": 24.2755
    },
    {
        "Time": "04-15 03:01",
        "Magnitude": 3.3,
        "Longitude": 121.56,
        "Latitude": 23.9377
    },
    {
        "Time": "04-15 01:47",
        "Magnitude": 4.1,
        "Longitude": 121.71,
        "Latitude": 23.9377
    },
    {
        "Time": "04-15 00:15",
        "Magnitude": 4.2,
        "Longitude": 121.663,
        "Latitude": 24.2137
    },
    {
        "Time": "04-14 22:37",
        "Magnitude": 4.1,
        "Longitude": 121.983,
        "Latitude": 24.3047
    },
    {
        "Time": "04-14 21:38",
        "Magnitude": 3.1,
        "Longitude": 121.718,
        "Latitude": 24.2067
    },
    {
        "Time": "04-14 19:49",
        "Magnitude": 3.4,
        "Longitude": 121.526,
        "Latitude": 23.7547
    },
    {
        "Time": "04-14 12:59",
        "Magnitude": 3.6,
        "Longitude": 121.614,
        "Latitude": 23.9688
    },
    {
        "Time": "04-14 12:30",
        "Magnitude": 3.3,
        "Longitude": 120.581,
        "Latitude": 23.3428
    },
    {
        "Time": "04-14 11:39",
        "Magnitude": 3.7,
        "Longitude": 121.474,
        "Latitude": 23.7222
    },
    {
        "Time": "04-14 11:08",
        "Magnitude": 3.3,
        "Longitude": 121.799,
        "Latitude": 24.2232
    },
    {
        "Time": "04-14 09:05",
        "Magnitude": 3.6,
        "Longitude": 121.956,
        "Latitude": 24.2962
    },
    {
        "Time": "04-14 07:36",
        "Magnitude": 3.7,
        "Longitude": 121.846,
        "Latitude": 24.1908
    },
    {
        "Time": "04-14 07:35",
        "Magnitude": 3.7,
        "Longitude": 121.866,
        "Latitude": 24.1893
    },
    {
        "Time": "04-14 07:23",
        "Magnitude": 4.0,
        "Longitude": 121.867,
        "Latitude": 24.2567
    },
    {
        "Time": "04-14 07:11",
        "Magnitude": 3.8,
        "Longitude": 121.658,
        "Latitude": 24.0642
    },
    {
        "Time": "04-14 06:09",
        "Magnitude": 3.4,
        "Longitude": 120.202,
        "Latitude": 23.353
    },
    {
        "Time": "04-14 04:07",
        "Magnitude": 3.4,
        "Longitude": 121.699,
        "Latitude": 24.1282
    },
    {
        "Time": "04-14 04:04",
        "Magnitude": 3.7,
        "Longitude": 121.852,
        "Latitude": 24.254
    },
    {
        "Time": "04-14 03:29",
        "Magnitude": 3.5,
        "Longitude": 121.695,
        "Latitude": 24.1237
    },
    {
        "Time": "04-14 02:39",
        "Magnitude": 4.2,
        "Longitude": 120.196,
        "Latitude": 23.3642
    },
    {
        "Time": "04-14 02:39",
        "Magnitude": 3.7,
        "Longitude": 120.187,
        "Latitude": 23.3647
    },
    {
        "Time": "04-14 01:59",
        "Magnitude": 3.6,
        "Longitude": 121.587,
        "Latitude": 23.8165
    },
    {
        "Time": "04-14 00:35",
        "Magnitude": 3.5,
        "Longitude": 121.722,
        "Latitude": 23.9793
    },
    {
        "Time": "04-14 00:18",
        "Magnitude": 3.3,
        "Longitude": 120.202,
        "Latitude": 23.3577
    },
    {
        "Time": "04-13 22:26",
        "Magnitude": 4.9,
        "Longitude": 121.572,
        "Latitude": 24.0205
    },
    {
        "Time": "04-13 20:55",
        "Magnitude": 4.1,
        "Longitude": 121.995,
        "Latitude": 24.0835
    },
    {
        "Time": "04-13 20:38",
        "Magnitude": 4.4,
        "Longitude": 121.516,
        "Latitude": 23.7402
    },
    {
        "Time": "04-13 20:38",
        "Magnitude": 3.3,
        "Longitude": 121.515,
        "Latitude": 23.7522
    },
    {
        "Time": "04-13 15:53",
        "Magnitude": 3.2,
        "Longitude": 121.734,
        "Latitude": 24.1903
    },
    {
        "Time": "04-13 06:50",
        "Magnitude": 3.3,
        "Longitude": 120.215,
        "Latitude": 23.3635
    },
    {
        "Time": "04-13 05:30",
        "Magnitude": 3.5,
        "Longitude": 120.21,
        "Latitude": 23.3598
    },
    {
        "Time": "04-13 05:00",
        "Magnitude": 3.8,
        "Longitude": 121.656,
        "Latitude": 23.9622
    },
    {
        "Time": "04-13 04:59",
        "Magnitude": 3.5,
        "Longitude": 120.198,
        "Latitude": 23.3535
    },
    {
        "Time": "04-13 04:21",
        "Magnitude": 3.3,
        "Longitude": 120.187,
        "Latitude": 23.3707
    },
    {
        "Time": "04-13 04:00",
        "Magnitude": 4.0,
        "Longitude": 120.18,
        "Latitude": 23.3715
    },
    {
        "Time": "04-13 03:35",
        "Magnitude": 3.3,
        "Longitude": 120.201,
        "Latitude": 23.3552
    },
    {
        "Time": "04-13 03:10",
        "Magnitude": 3.2,
        "Longitude": 121.729,
        "Latitude": 24.2095
    },
    {
        "Time": "04-13 02:44",
        "Magnitude": 4.9,
        "Longitude": 120.184,
        "Latitude": 23.3758
    },
    {
        "Time": "04-12 23:43",
        "Magnitude": 3.4,
        "Longitude": 120.202,
        "Latitude": 23.364
    },
    {
        "Time": "04-12 22:20",
        "Magnitude": 4.7,
        "Longitude": 121.63,
        "Latitude": 22.3628
    },
    {
        "Time": "04-12 20:25",
        "Magnitude": 3.4,
        "Longitude": 121.871,
        "Latitude": 24.1977
    },
    {
        "Time": "04-12 20:12",
        "Magnitude": 3.8,
        "Longitude": 121.62,
        "Latitude": 23.966
    },
    {
        "Time": "04-12 19:33",
        "Magnitude": 3.3,
        "Longitude": 121.555,
        "Latitude": 23.7937
    },
    {
        "Time": "04-12 18:46",
        "Magnitude": 3.9,
        "Longitude": 121.665,
        "Latitude": 24.0243
    },
    {
        "Time": "04-12 14:51",
        "Magnitude": 3.8,
        "Longitude": 121.623,
        "Latitude": 24.4863
    },
    {
        "Time": "04-12 11:14",
        "Magnitude": 3.5,
        "Longitude": 121.724,
        "Latitude": 24.0445
    },
    {
        "Time": "04-12 10:53",
        "Magnitude": 3.7,
        "Longitude": 121.853,
        "Latitude": 24.2848
    },
    {
        "Time": "04-12 09:16",
        "Magnitude": 3.6,
        "Longitude": 121.726,
        "Latitude": 24.2543
    },
    {
        "Time": "04-12 08:54",
        "Magnitude": 4.3,
        "Longitude": 121.749,
        "Latitude": 23.9815
    },
    {
        "Time": "04-12 08:29",
        "Magnitude": 4.2,
        "Longitude": 121.699,
        "Latitude": 23.9977
    },
    {
        "Time": "04-12 05:32",
        "Magnitude": 3.8,
        "Longitude": 121.881,
        "Latitude": 24.1778
    },
    {
        "Time": "04-12 05:04",
        "Magnitude": 3.3,
        "Longitude": 121.825,
        "Latitude": 24.5007
    },
    {
        "Time": "04-12 04:55",
        "Magnitude": 3.0,
        "Longitude": 121.811,
        "Latitude": 24.5497
    },
    {
        "Time": "04-12 03:50",
        "Magnitude": 3.7,
        "Longitude": 121.633,
        "Latitude": 23.8502
    },
    {
        "Time": "04-12 02:52",
        "Magnitude": 3.9,
        "Longitude": 121.699,
        "Latitude": 24.1197
    },
    {
        "Time": "04-12 01:28",
        "Magnitude": 3.1,
        "Longitude": 121.707,
        "Latitude": 24.2525
    },
    {
        "Time": "04-12 00:04",
        "Magnitude": 3.3,
        "Longitude": 121.737,
        "Latitude": 24.2102
    },
    {
        "Time": "04-11 23:56",
        "Magnitude": 3.9,
        "Longitude": 121.723,
        "Latitude": 24.0322
    },
    {
        "Time": "04-11 22:09",
        "Magnitude": 4.0,
        "Longitude": 121.706,
        "Latitude": 24.1413
    },
    {
        "Time": "04-11 21:41",
        "Magnitude": 3.2,
        "Longitude": 121.284,
        "Latitude": 24.0108
    },
    {
        "Time": "04-11 21:23",
        "Magnitude": 3.8,
        "Longitude": 121.905,
        "Latitude": 24.225
    },
    {
        "Time": "04-11 20:44",
        "Magnitude": 3.3,
        "Longitude": 121.747,
        "Latitude": 24.2242
    },
    {
        "Time": "04-11 19:53",
        "Magnitude": 3.6,
        "Longitude": 121.719,
        "Latitude": 24.1652
    },
    {
        "Time": "04-11 19:08",
        "Magnitude": 3.4,
        "Longitude": 121.808,
        "Latitude": 24.2727
    },
    {
        "Time": "04-11 15:40",
        "Magnitude": 3.7,
        "Longitude": 121.814,
        "Latitude": 24.5475
    },
    {
        "Time": "04-11 14:31",
        "Magnitude": 3.4,
        "Longitude": 121.559,
        "Latitude": 24.0162
    },
    {
        "Time": "04-11 14:07",
        "Magnitude": 3.6,
        "Longitude": 121.736,
        "Latitude": 24.1047
    },
    {
        "Time": "04-11 12:02",
        "Magnitude": 4.1,
        "Longitude": 121.671,
        "Latitude": 24.1797
    },
    {
        "Time": "04-11 10:00",
        "Magnitude": 3.7,
        "Longitude": 121.361,
        "Latitude": 24.2157
    },
    {
        "Time": "04-11 09:20",
        "Magnitude": 3.7,
        "Longitude": 121.922,
        "Latitude": 24.217
    },
    {
        "Time": "04-11 08:53",
        "Magnitude": 4.1,
        "Longitude": 121.674,
        "Latitude": 24.1767
    },
    {
        "Time": "04-11 07:14",
        "Magnitude": 3.3,
        "Longitude": 121.795,
        "Latitude": 24.2703
    },
    {
        "Time": "04-11 06:02",
        "Magnitude": 4.2,
        "Longitude": 121.637,
        "Latitude": 24.0408
    },
    {
        "Time": "04-11 05:33",
        "Magnitude": 3.2,
        "Longitude": 121.745,
        "Latitude": 24.2423
    },
    {
        "Time": "04-11 05:02",
        "Magnitude": 3.1,
        "Longitude": 121.563,
        "Latitude": 23.8758
    },
    {
        "Time": "04-11 03:58",
        "Magnitude": 4.5,
        "Longitude": 121.942,
        "Latitude": 24.1292
    },
    {
        "Time": "04-11 03:13",
        "Magnitude": 3.5,
        "Longitude": 121.562,
        "Latitude": 23.787
    },
    {
        "Time": "04-11 02:05",
        "Magnitude": 3.3,
        "Longitude": 121.71,
        "Latitude": 24.2552
    },
    {
        "Time": "04-11 01:00",
        "Magnitude": 3.3,
        "Longitude": 121.776,
        "Latitude": 24.163
    },
    {
        "Time": "04-11 00:55",
        "Magnitude": 4.9,
        "Longitude": 121.77,
        "Latitude": 24.1852
    },
    {
        "Time": "04-11 00:27",
        "Magnitude": 4.3,
        "Longitude": 121.767,
        "Latitude": 24.2002
    },
    {
        "Time": "04-10 22:19",
        "Magnitude": 3.7,
        "Longitude": 121.873,
        "Latitude": 24.4577
    },
    {
        "Time": "04-10 21:34",
        "Magnitude": 3.6,
        "Longitude": 121.85,
        "Latitude": 24.2757
    },
    {
        "Time": "04-10 20:38",
        "Magnitude": 3.2,
        "Longitude": 121.558,
        "Latitude": 23.9962
    },
    {
        "Time": "04-10 20:13",
        "Magnitude": 3.6,
        "Longitude": 121.518,
        "Latitude": 23.7037
    },
    {
        "Time": "04-10 19:23",
        "Magnitude": 4.8,
        "Longitude": 121.756,
        "Latitude": 24.1043
    },
    {
        "Time": "04-10 18:07",
        "Magnitude": 3.5,
        "Longitude": 121.699,
        "Latitude": 24.2483
    },
    {
        "Time": "04-10 17:09",
        "Magnitude": 4.6,
        "Longitude": 121.612,
        "Latitude": 23.9027
    },
    {
        "Time": "04-10 15:46",
        "Magnitude": 3.6,
        "Longitude": 121.774,
        "Latitude": 24.2487
    },
    {
        "Time": "04-10 14:57",
        "Magnitude": 4.1,
        "Longitude": 121.716,
        "Latitude": 24.0675
    },
    {
        "Time": "04-10 12:22",
        "Magnitude": 3.7,
        "Longitude": 121.658,
        "Latitude": 24.1885
    },
    {
        "Time": "04-10 11:20",
        "Magnitude": 3.9,
        "Longitude": 121.789,
        "Latitude": 24.2653
    },
    {
        "Time": "04-10 11:17",
        "Magnitude": 4.0,
        "Longitude": 121.623,
        "Latitude": 23.9257
    },
    {
        "Time": "04-10 07:29",
        "Magnitude": 3.8,
        "Longitude": 121.705,
        "Latitude": 24.2465
    },
    {
        "Time": "04-10 06:08",
        "Magnitude": 3.5,
        "Longitude": 121.646,
        "Latitude": 23.932
    },
    {
        "Time": "04-10 05:36",
        "Magnitude": 4.1,
        "Longitude": 121.652,
        "Latitude": 24.0365
    },
    {
        "Time": "04-10 05:34",
        "Magnitude": 4.6,
        "Longitude": 121.702,
        "Latitude": 24.118
    },
    {
        "Time": "04-10 05:05",
        "Magnitude": 3.9,
        "Longitude": 121.9,
        "Latitude": 24.2412
    },
    {
        "Time": "04-10 01:59",
        "Magnitude": 3.9,
        "Longitude": 121.655,
        "Latitude": 23.9872
    },
    {
        "Time": "04-09 22:13",
        "Magnitude": 3.5,
        "Longitude": 121.617,
        "Latitude": 23.8758
    },
    {
        "Time": "04-09 21:22",
        "Magnitude": 4.0,
        "Longitude": 121.623,
        "Latitude": 23.9458
    },
    {
        "Time": "04-09 21:03",
        "Magnitude": 3.9,
        "Longitude": 121.665,
        "Latitude": 24.2083
    },
    {
        "Time": "04-09 21:00",
        "Magnitude": 3.0,
        "Longitude": 121.827,
        "Latitude": 24.2843
    },
    {
        "Time": "04-09 20:20",
        "Magnitude": 4.1,
        "Longitude": 121.729,
        "Latitude": 24.2358
    },
    {
        "Time": "04-09 20:01",
        "Magnitude": 4.2,
        "Longitude": 120.724,
        "Latitude": 23.1508
    },
    {
        "Time": "04-09 19:35",
        "Magnitude": 3.1,
        "Longitude": 121.697,
        "Latitude": 24.2415
    },
    {
        "Time": "04-09 18:42",
        "Magnitude": 3.2,
        "Longitude": 121.758,
        "Latitude": 24.2045
    },
    {
        "Time": "04-09 17:50",
        "Magnitude": 4.1,
        "Longitude": 121.654,
        "Latitude": 24.0352
    },
    {
        "Time": "04-09 16:01",
        "Magnitude": 3.3,
        "Longitude": 121.848,
        "Latitude": 24.3082
    },
    {
        "Time": "04-09 16:00",
        "Magnitude": 3.7,
        "Longitude": 121.624,
        "Latitude": 24.0308
    },
    {
        "Time": "04-09 15:58",
        "Magnitude": 3.6,
        "Longitude": 121.675,
        "Latitude": 24.079
    },
    {
        "Time": "04-09 15:49",
        "Magnitude": 3.5,
        "Longitude": 121.666,
        "Latitude": 24.1088
    },
    {
        "Time": "04-09 15:40",
        "Magnitude": 4.2,
        "Longitude": 121.539,
        "Latitude": 23.8352
    },
    {
        "Time": "04-09 14:47",
        "Magnitude": 3.8,
        "Longitude": 121.816,
        "Latitude": 24.1543
    },
    {
        "Time": "04-09 14:10",
        "Magnitude": 3.2,
        "Longitude": 121.508,
        "Latitude": 23.778
    },
    {
        "Time": "04-09 14:03",
        "Magnitude": 3.4,
        "Longitude": 121.629,
        "Latitude": 24.0547
    },
    {
        "Time": "04-09 13:45",
        "Magnitude": 3.8,
        "Longitude": 122.387,
        "Latitude": 24.6762
    },
    {
        "Time": "04-09 13:41",
        "Magnitude": 3.4,
        "Longitude": 121.986,
        "Latitude": 24.3
    },
    {
        "Time": "04-09 13:21",
        "Magnitude": 3.5,
        "Longitude": 121.74,
        "Latitude": 24.2365
    },
    {
        "Time": "04-09 12:47",
        "Magnitude": 3.5,
        "Longitude": 121.533,
        "Latitude": 23.8547
    },
    {
        "Time": "04-09 12:40",
        "Magnitude": 3.2,
        "Longitude": 121.578,
        "Latitude": 24.149
    },
    {
        "Time": "04-09 11:51",
        "Magnitude": 3.7,
        "Longitude": 121.84,
        "Latitude": 24.2368
    },
    {
        "Time": "04-09 10:17",
        "Magnitude": 4.1,
        "Longitude": 121.631,
        "Latitude": 24.0147
    },
    {
        "Time": "04-09 10:17",
        "Magnitude": 3.9,
        "Longitude": 121.764,
        "Latitude": 24.2227
    },
    {
        "Time": "04-09 10:15",
        "Magnitude": 3.2,
        "Longitude": 121.754,
        "Latitude": 24.2478
    },
    {
        "Time": "04-09 10:13",
        "Magnitude": 3.4,
        "Longitude": 121.533,
        "Latitude": 23.8542
    },
    {
        "Time": "04-09 10:08",
        "Magnitude": 3.5,
        "Longitude": 121.7,
        "Latitude": 24.2588
    },
    {
        "Time": "04-09 09:33",
        "Magnitude": 4.3,
        "Longitude": 121.549,
        "Latitude": 23.7742
    },
    {
        "Time": "04-09 07:26",
        "Magnitude": 4.5,
        "Longitude": 121.679,
        "Latitude": 24.1697
    },
    {
        "Time": "04-09 06:35",
        "Magnitude": 4.1,
        "Longitude": 121.669,
        "Latitude": 24.1017
    },
    {
        "Time": "04-09 06:14",
        "Magnitude": 4.9,
        "Longitude": 121.705,
        "Latitude": 23.9917
    },
    {
        "Time": "04-09 05:59",
        "Magnitude": 3.7,
        "Longitude": 121.846,
        "Latitude": 24.1325
    },
    {
        "Time": "04-09 04:54",
        "Magnitude": 3.7,
        "Longitude": 121.9,
        "Latitude": 24.255
    },
    {
        "Time": "04-09 03:42",
        "Magnitude": 3.6,
        "Longitude": 121.688,
        "Latitude": 24.1158
    },
    {
        "Time": "04-09 03:12",
        "Magnitude": 3.1,
        "Longitude": 121.821,
        "Latitude": 24.2743
    },
    {
        "Time": "04-09 02:19",
        "Magnitude": 3.4,
        "Longitude": 121.626,
        "Latitude": 23.8338
    },
    {
        "Time": "04-09 02:02",
        "Magnitude": 5.3,
        "Longitude": 121.682,
        "Latitude": 23.9438
    },
    {
        "Time": "04-09 02:01",
        "Magnitude": 3.2,
        "Longitude": 121.72,
        "Latitude": 24.2633
    },
    {
        "Time": "04-09 01:38",
        "Magnitude": 3.4,
        "Longitude": 121.985,
        "Latitude": 24.325
    },
    {
        "Time": "04-08 22:14",
        "Magnitude": 3.7,
        "Longitude": 121.606,
        "Latitude": 23.9568
    },
    {
        "Time": "04-08 21:46",
        "Magnitude": 3.3,
        "Longitude": 121.89,
        "Latitude": 24.4908
    },
    {
        "Time": "04-08 21:28",
        "Magnitude": 3.2,
        "Longitude": 121.808,
        "Latitude": 24.264
    },
    {
        "Time": "04-08 21:03",
        "Magnitude": 3.6,
        "Longitude": 121.656,
        "Latitude": 24.189
    },
    {
        "Time": "04-08 20:23",
        "Magnitude": 3.9,
        "Longitude": 121.566,
        "Latitude": 24.0157
    },
    {
        "Time": "04-08 20:22",
        "Magnitude": 3.4,
        "Longitude": 121.582,
        "Latitude": 23.7905
    },
    {
        "Time": "04-08 19:48",
        "Magnitude": 3.5,
        "Longitude": 121.838,
        "Latitude": 24.2903
    },
    {
        "Time": "04-08 19:33",
        "Magnitude": 3.1,
        "Longitude": 121.728,
        "Latitude": 24.2618
    },
    {
        "Time": "04-08 19:15",
        "Magnitude": 3.7,
        "Longitude": 120.635,
        "Latitude": 23.3293
    },
    {
        "Time": "04-08 18:20",
        "Magnitude": 3.3,
        "Longitude": 121.625,
        "Latitude": 24.0908
    },
    {
        "Time": "04-08 18:18",
        "Magnitude": 3.6,
        "Longitude": 121.599,
        "Latitude": 23.812
    },
    {
        "Time": "04-08 17:35",
        "Magnitude": 3.3,
        "Longitude": 121.563,
        "Latitude": 24.0137
    },
    {
        "Time": "04-08 17:24",
        "Magnitude": 3.3,
        "Longitude": 121.85,
        "Latitude": 24.3008
    },
    {
        "Time": "04-08 17:19",
        "Magnitude": 4.3,
        "Longitude": 121.669,
        "Latitude": 24.2262
    },
    {
        "Time": "04-08 16:52",
        "Magnitude": 3.5,
        "Longitude": 121.602,
        "Latitude": 23.9368
    },
    {
        "Time": "04-08 16:50",
        "Magnitude": 3.7,
        "Longitude": 121.744,
        "Latitude": 24.2602
    },
    {
        "Time": "04-08 16:45",
        "Magnitude": 4.5,
        "Longitude": 121.644,
        "Latitude": 23.9463
    },
    {
        "Time": "04-08 16:44",
        "Magnitude": 4.0,
        "Longitude": 121.64,
        "Latitude": 23.9538
    },
    {
        "Time": "04-08 16:14",
        "Magnitude": 3.9,
        "Longitude": 121.701,
        "Latitude": 24.1755
    },
    {
        "Time": "04-08 16:00",
        "Magnitude": 3.3,
        "Longitude": 121.689,
        "Latitude": 24.2517
    },
    {
        "Time": "04-08 15:12",
        "Magnitude": 3.3,
        "Longitude": 121.832,
        "Latitude": 24.2063
    },
    {
        "Time": "04-08 15:00",
        "Magnitude": 3.3,
        "Longitude": 121.757,
        "Latitude": 24.2178
    },
    {
        "Time": "04-08 14:11",
        "Magnitude": 3.3,
        "Longitude": 121.571,
        "Latitude": 24.0133
    },
    {
        "Time": "04-08 14:02",
        "Magnitude": 3.7,
        "Longitude": 121.534,
        "Latitude": 23.8223
    },
    {
        "Time": "04-08 13:23",
        "Magnitude": 3.6,
        "Longitude": 121.839,
        "Latitude": 24.2088
    },
    {
        "Time": "04-08 13:09",
        "Magnitude": 5.1,
        "Longitude": 121.829,
        "Latitude": 24.2088
    },
    {
        "Time": "04-08 12:49",
        "Magnitude": 3.3,
        "Longitude": 121.74,
        "Latitude": 24.3032
    },
    {
        "Time": "04-08 12:26",
        "Magnitude": 3.1,
        "Longitude": 121.687,
        "Latitude": 24.2472
    },
    {
        "Time": "04-08 12:23",
        "Magnitude": 3.3,
        "Longitude": 121.708,
        "Latitude": 24.2362
    },
    {
        "Time": "04-08 11:31",
        "Magnitude": 3.2,
        "Longitude": 121.705,
        "Latitude": 24.2353
    },
    {
        "Time": "04-08 11:28",
        "Magnitude": 3.3,
        "Longitude": 121.713,
        "Latitude": 24.2332
    },
    {
        "Time": "04-08 09:46",
        "Magnitude": 3.9,
        "Longitude": 121.841,
        "Latitude": 24.2543
    },
    {
        "Time": "04-08 09:31",
        "Magnitude": 3.3,
        "Longitude": 121.554,
        "Latitude": 24.0108
    },
    {
        "Time": "04-08 07:28",
        "Magnitude": 4.3,
        "Longitude": 121.847,
        "Latitude": 24.2467
    },
    {
        "Time": "04-08 07:03",
        "Magnitude": 3.5,
        "Longitude": 121.553,
        "Latitude": 24.0068
    },
    {
        "Time": "04-08 06:49",
        "Magnitude": 4.8,
        "Longitude": 121.824,
        "Latitude": 24.2422
    },
    {
        "Time": "04-08 06:48",
        "Magnitude": 3.2,
        "Longitude": 121.716,
        "Latitude": 24.2683
    },
    {
        "Time": "04-08 06:40",
        "Magnitude": 3.4,
        "Longitude": 121.75,
        "Latitude": 24.2568
    },
    {
        "Time": "04-08 06:30",
        "Magnitude": 3.1,
        "Longitude": 121.522,
        "Latitude": 23.8097
    },
    {
        "Time": "04-08 05:00",
        "Magnitude": 3.0,
        "Longitude": 121.715,
        "Latitude": 24.2555
    },
    {
        "Time": "04-08 04:22",
        "Magnitude": 3.5,
        "Longitude": 121.745,
        "Latitude": 24.2297
    },
    {
        "Time": "04-08 04:21",
        "Magnitude": 3.7,
        "Longitude": 121.599,
        "Latitude": 23.8995
    },
    {
        "Time": "04-08 03:58",
        "Magnitude": 4.6,
        "Longitude": 121.664,
        "Latitude": 23.9368
    },
    {
        "Time": "04-08 03:47",
        "Magnitude": 3.7,
        "Longitude": 121.712,
        "Latitude": 24.2568
    },
    {
        "Time": "04-08 02:12",
        "Magnitude": 4.3,
        "Longitude": 121.605,
        "Latitude": 24.022
    },
    {
        "Time": "04-08 02:12",
        "Magnitude": 4.4,
        "Longitude": 121.836,
        "Latitude": 24.2917
    },
    {
        "Time": "04-08 01:45",
        "Magnitude": 3.2,
        "Longitude": 121.843,
        "Latitude": 24.286
    },
    {
        "Time": "04-08 01:23",
        "Magnitude": 3.9,
        "Longitude": 120.208,
        "Latitude": 23.3628
    },
    {
        "Time": "04-08 01:03",
        "Magnitude": 3.7,
        "Longitude": 121.534,
        "Latitude": 23.78
    },
    {
        "Time": "04-08 00:14",
        "Magnitude": 3.6,
        "Longitude": 121.649,
        "Latitude": 24.0282
    },
    {
        "Time": "04-07 23:35",
        "Magnitude": 4.0,
        "Longitude": 121.851,
        "Latitude": 24.2858
    },
    {
        "Time": "04-07 23:17",
        "Magnitude": 3.3,
        "Longitude": 121.626,
        "Latitude": 24.076
    },
    {
        "Time": "04-07 22:30",
        "Magnitude": 3.7,
        "Longitude": 121.642,
        "Latitude": 24.0285
    },
    {
        "Time": "04-07 22:19",
        "Magnitude": 3.5,
        "Longitude": 121.656,
        "Latitude": 24.023
    },
    {
        "Time": "04-07 22:13",
        "Magnitude": 4.2,
        "Longitude": 121.958,
        "Latitude": 24.1573
    },
    {
        "Time": "04-07 21:46",
        "Magnitude": 3.7,
        "Longitude": 121.679,
        "Latitude": 24.1123
    },
    {
        "Time": "04-07 21:21",
        "Magnitude": 3.6,
        "Longitude": 121.626,
        "Latitude": 24.0398
    },
    {
        "Time": "04-07 20:47",
        "Magnitude": 3.5,
        "Longitude": 121.746,
        "Latitude": 24.2157
    },
    {
        "Time": "04-07 20:08",
        "Magnitude": 3.1,
        "Longitude": 121.742,
        "Latitude": 24.253
    },
    {
        "Time": "04-07 20:03",
        "Magnitude": 3.6,
        "Longitude": 121.528,
        "Latitude": 23.781
    },
    {
        "Time": "04-07 19:49",
        "Magnitude": 3.1,
        "Longitude": 121.758,
        "Latitude": 24.2408
    },
    {
        "Time": "04-07 19:33",
        "Magnitude": 4.3,
        "Longitude": 121.67,
        "Latitude": 24.0277
    },
    {
        "Time": "04-07 19:27",
        "Magnitude": 3.4,
        "Longitude": 121.704,
        "Latitude": 24.2463
    },
    {
        "Time": "04-07 19:24",
        "Magnitude": 3.4,
        "Longitude": 121.697,
        "Latitude": 23.8335
    },
    {
        "Time": "04-07 19:01",
        "Magnitude": 3.4,
        "Longitude": 121.573,
        "Latitude": 24.0043
    },
    {
        "Time": "04-07 18:52",
        "Magnitude": 3.8,
        "Longitude": 121.907,
        "Latitude": 24.1937
    },
    {
        "Time": "04-07 18:24",
        "Magnitude": 4.4,
        "Longitude": 121.685,
        "Latitude": 24.105
    },
    {
        "Time": "04-07 18:17",
        "Magnitude": 3.1,
        "Longitude": 121.729,
        "Latitude": 24.2658
    },
    {
        "Time": "04-07 18:15",
        "Magnitude": 3.5,
        "Longitude": 121.719,
        "Latitude": 24.2723
    },
    {
        "Time": "04-07 18:01",
        "Magnitude": 5.4,
        "Longitude": 121.965,
        "Latitude": 24.1698
    },
    {
        "Time": "04-07 17:49",
        "Magnitude": 3.9,
        "Longitude": 121.848,
        "Latitude": 24.216
    },
    {
        "Time": "04-07 16:05",
        "Magnitude": 3.3,
        "Longitude": 121.662,
        "Latitude": 24.1425
    },
    {
        "Time": "04-07 15:45",
        "Magnitude": 3.6,
        "Longitude": 121.716,
        "Latitude": 24.1215
    },
    {
        "Time": "04-07 15:43",
        "Magnitude": 3.9,
        "Longitude": 121.534,
        "Latitude": 23.8028
    },
    {
        "Time": "04-07 15:42",
        "Magnitude": 3.6,
        "Longitude": 121.697,
        "Latitude": 24.2493
    },
    {
        "Time": "04-07 14:10",
        "Magnitude": 3.6,
        "Longitude": 121.75,
        "Latitude": 24.1858
    },
    {
        "Time": "04-07 13:00",
        "Magnitude": 4.2,
        "Longitude": 121.715,
        "Latitude": 24.0577
    },
    {
        "Time": "04-07 12:48",
        "Magnitude": 4.2,
        "Longitude": 121.555,
        "Latitude": 23.838
    },
    {
        "Time": "04-07 12:43",
        "Magnitude": 4.5,
        "Longitude": 121.616,
        "Latitude": 23.9667
    },
    {
        "Time": "04-07 12:21",
        "Magnitude": 3.2,
        "Longitude": 121.769,
        "Latitude": 24.2582
    },
    {
        "Time": "04-07 12:21",
        "Magnitude": 3.6,
        "Longitude": 121.555,
        "Latitude": 23.8085
    },
    {
        "Time": "04-07 11:45",
        "Magnitude": 4.0,
        "Longitude": 121.545,
        "Latitude": 23.7845
    },
    {
        "Time": "04-07 11:31",
        "Magnitude": 3.2,
        "Longitude": 121.759,
        "Latitude": 24.2482
    },
    {
        "Time": "04-07 10:52",
        "Magnitude": 3.9,
        "Longitude": 121.736,
        "Latitude": 24.116
    },
    {
        "Time": "04-07 10:38",
        "Magnitude": 3.2,
        "Longitude": 121.715,
        "Latitude": 24.2437
    },
    {
        "Time": "04-07 10:06",
        "Magnitude": 4.5,
        "Longitude": 121.755,
        "Latitude": 24.2635
    },
    {
        "Time": "04-07 09:55",
        "Magnitude": 3.0,
        "Longitude": 121.555,
        "Latitude": 23.9445
    },
    {
        "Time": "04-07 09:55",
        "Magnitude": 3.1,
        "Longitude": 121.704,
        "Latitude": 24.2465
    },
    {
        "Time": "04-07 09:44",
        "Magnitude": 3.5,
        "Longitude": 121.57,
        "Latitude": 23.9343
    },
    {
        "Time": "04-07 08:45",
        "Magnitude": 3.6,
        "Longitude": 121.575,
        "Latitude": 23.8673
    },
    {
        "Time": "04-07 08:40",
        "Magnitude": 3.6,
        "Longitude": 121.696,
        "Latitude": 24.1322
    },
    {
        "Time": "04-07 08:36",
        "Magnitude": 3.8,
        "Longitude": 121.569,
        "Latitude": 23.9293
    },
    {
        "Time": "04-07 06:52",
        "Magnitude": 3.5,
        "Longitude": 121.841,
        "Latitude": 24.2
    },
    {
        "Time": "04-07 06:42",
        "Magnitude": 3.4,
        "Longitude": 121.583,
        "Latitude": 24.058
    },
    {
        "Time": "04-07 06:41",
        "Magnitude": 3.6,
        "Longitude": 121.772,
        "Latitude": 24.213
    },
    {
        "Time": "04-07 06:30",
        "Magnitude": 4.0,
        "Longitude": 121.587,
        "Latitude": 24.0573
    },
    {
        "Time": "04-07 06:02",
        "Magnitude": 3.4,
        "Longitude": 121.586,
        "Latitude": 24.0577
    },
    {
        "Time": "04-07 05:50",
        "Magnitude": 4.1,
        "Longitude": 121.699,
        "Latitude": 24.2503
    },
    {
        "Time": "04-07 05:45",
        "Magnitude": 3.4,
        "Longitude": 121.699,
        "Latitude": 24.2482
    },
    {
        "Time": "04-07 05:42",
        "Magnitude": 3.0,
        "Longitude": 121.633,
        "Latitude": 24.1083
    },
    {
        "Time": "04-07 05:25",
        "Magnitude": 3.6,
        "Longitude": 121.738,
        "Latitude": 24.2565
    },
    {
        "Time": "04-07 05:24",
        "Magnitude": 4.1,
        "Longitude": 121.757,
        "Latitude": 24.261
    },
    {
        "Time": "04-07 05:15",
        "Magnitude": 5.1,
        "Longitude": 121.714,
        "Latitude": 24.0403
    },
    {
        "Time": "04-07 04:28",
        "Magnitude": 3.3,
        "Longitude": 121.557,
        "Latitude": 23.8592
    },
    {
        "Time": "04-07 03:57",
        "Magnitude": 3.3,
        "Longitude": 121.702,
        "Latitude": 24.0258
    },
    {
        "Time": "04-07 03:46",
        "Magnitude": 3.6,
        "Longitude": 121.776,
        "Latitude": 24.1962
    },
    {
        "Time": "04-07 01:56",
        "Magnitude": 3.7,
        "Longitude": 121.749,
        "Latitude": 24.2678
    },
    {
        "Time": "04-07 01:49",
        "Magnitude": 3.6,
        "Longitude": 121.589,
        "Latitude": 23.9638
    },
    {
        "Time": "04-07 01:48",
        "Magnitude": 3.7,
        "Longitude": 121.759,
        "Latitude": 24.2772
    },
    {
        "Time": "04-07 01:48",
        "Magnitude": 3.2,
        "Longitude": 121.759,
        "Latitude": 24.261
    },
    {
        "Time": "04-07 01:37",
        "Magnitude": 3.5,
        "Longitude": 121.646,
        "Latitude": 24.2003
    },
    {
        "Time": "04-07 00:40",
        "Magnitude": 3.8,
        "Longitude": 121.769,
        "Latitude": 24.2765
    },
    {
        "Time": "04-07 00:19",
        "Magnitude": 3.4,
        "Longitude": 121.599,
        "Latitude": 24.0537
    },
    {
        "Time": "04-07 00:05",
        "Magnitude": 3.2,
        "Longitude": 121.739,
        "Latitude": 24.2408
    },
    {
        "Time": "04-07 00:03",
        "Magnitude": 4.1,
        "Longitude": 121.753,
        "Latitude": 24.2258
    },
    {
        "Time": "04-06 23:53",
        "Magnitude": 3.8,
        "Longitude": 121.738,
        "Latitude": 24.2695
    },
    {
        "Time": "04-06 23:53",
        "Magnitude": 4.7,
        "Longitude": 121.855,
        "Latitude": 24.1885
    },
    {
        "Time": "04-06 23:46",
        "Magnitude": 4.0,
        "Longitude": 121.751,
        "Latitude": 24.2627
    },
    {
        "Time": "04-06 23:45",
        "Magnitude": 3.9,
        "Longitude": 121.769,
        "Latitude": 24.263
    },
    {
        "Time": "04-06 23:43",
        "Magnitude": 3.4,
        "Longitude": 121.762,
        "Latitude": 24.2622
    },
    {
        "Time": "04-06 23:43",
        "Magnitude": 4.3,
        "Longitude": 121.754,
        "Latitude": 24.2735
    },
    {
        "Time": "04-06 23:11",
        "Magnitude": 3.1,
        "Longitude": 121.536,
        "Latitude": 23.8537
    },
    {
        "Time": "04-06 23:09",
        "Magnitude": 3.2,
        "Longitude": 121.676,
        "Latitude": 24.231
    },
    {
        "Time": "04-06 23:01",
        "Magnitude": 3.4,
        "Longitude": 121.825,
        "Latitude": 24.2633
    },
    {
        "Time": "04-06 22:55",
        "Magnitude": 3.2,
        "Longitude": 121.732,
        "Latitude": 24.2383
    },
    {
        "Time": "04-06 22:53",
        "Magnitude": 3.7,
        "Longitude": 121.821,
        "Latitude": 24.262
    },
    {
        "Time": "04-06 22:09",
        "Magnitude": 3.3,
        "Longitude": 121.533,
        "Latitude": 23.8547
    },
    {
        "Time": "04-06 22:02",
        "Magnitude": 3.7,
        "Longitude": 121.606,
        "Latitude": 23.9468
    },
    {
        "Time": "04-06 21:35",
        "Magnitude": 3.2,
        "Longitude": 121.739,
        "Latitude": 24.2293
    },
    {
        "Time": "04-06 21:31",
        "Magnitude": 3.6,
        "Longitude": 121.744,
        "Latitude": 24.2382
    },
    {
        "Time": "04-06 21:29",
        "Magnitude": 3.2,
        "Longitude": 121.78,
        "Latitude": 24.1693
    },
    {
        "Time": "04-06 21:22",
        "Magnitude": 3.8,
        "Longitude": 121.866,
        "Latitude": 24.209
    },
    {
        "Time": "04-06 21:19",
        "Magnitude": 4.0,
        "Longitude": 121.761,
        "Latitude": 24.2337
    },
    {
        "Time": "04-06 21:17",
        "Magnitude": 4.7,
        "Longitude": 121.742,
        "Latitude": 24.24
    },
    {
        "Time": "04-06 20:43",
        "Magnitude": 3.7,
        "Longitude": 121.639,
        "Latitude": 23.885
    },
    {
        "Time": "04-06 20:39",
        "Magnitude": 3.4,
        "Longitude": 121.75,
        "Latitude": 24.25
    },
    {
        "Time": "04-06 20:32",
        "Magnitude": 3.6,
        "Longitude": 121.763,
        "Latitude": 24.1163
    },
    {
        "Time": "04-06 19:53",
        "Magnitude": 3.9,
        "Longitude": 121.863,
        "Latitude": 24.2563
    },
    {
        "Time": "04-06 19:33",
        "Magnitude": 3.8,
        "Longitude": 121.504,
        "Latitude": 23.8625
    },
    {
        "Time": "04-06 19:29",
        "Magnitude": 3.7,
        "Longitude": 121.739,
        "Latitude": 24.2622
    },
    {
        "Time": "04-06 19:25",
        "Magnitude": 3.5,
        "Longitude": 121.76,
        "Latitude": 24.2495
    },
    {
        "Time": "04-06 19:15",
        "Magnitude": 3.1,
        "Longitude": 121.755,
        "Latitude": 24.2507
    },
    {
        "Time": "04-06 19:14",
        "Magnitude": 3.2,
        "Longitude": 121.742,
        "Latitude": 24.2515
    },
    {
        "Time": "04-06 18:50",
        "Magnitude": 3.1,
        "Longitude": 121.566,
        "Latitude": 23.8627
    },
    {
        "Time": "04-06 18:49",
        "Magnitude": 4.0,
        "Longitude": 121.535,
        "Latitude": 23.868
    },
    {
        "Time": "04-06 18:47",
        "Magnitude": 5.3,
        "Longitude": 121.713,
        "Latitude": 23.9185
    },
    {
        "Time": "04-06 18:41",
        "Magnitude": 3.7,
        "Longitude": 121.602,
        "Latitude": 24.0545
    },
    {
        "Time": "04-06 18:08",
        "Magnitude": 3.1,
        "Longitude": 121.758,
        "Latitude": 24.2357
    },
    {
        "Time": "04-06 17:33",
        "Magnitude": 3.6,
        "Longitude": 121.723,
        "Latitude": 24.1917
    },
    {
        "Time": "04-06 17:18",
        "Magnitude": 3.5,
        "Longitude": 121.735,
        "Latitude": 24.1865
    },
    {
        "Time": "04-06 17:14",
        "Magnitude": 3.8,
        "Longitude": 121.729,
        "Latitude": 24.2508
    },
    {
        "Time": "04-06 17:07",
        "Magnitude": 4.1,
        "Longitude": 121.738,
        "Latitude": 24.2492
    },
    {
        "Time": "04-06 16:17",
        "Magnitude": 3.4,
        "Longitude": 121.711,
        "Latitude": 24.1258
    },
    {
        "Time": "04-06 16:14",
        "Magnitude": 3.8,
        "Longitude": 121.554,
        "Latitude": 23.8523
    },
    {
        "Time": "04-06 16:10",
        "Magnitude": 4.6,
        "Longitude": 121.556,
        "Latitude": 23.8472
    },
    {
        "Time": "04-06 15:55",
        "Magnitude": 3.4,
        "Longitude": 121.705,
        "Latitude": 24.1198
    },
    {
        "Time": "04-06 15:53",
        "Magnitude": 4.1,
        "Longitude": 121.705,
        "Latitude": 24.123
    },
    {
        "Time": "04-06 14:52",
        "Magnitude": 4.5,
        "Longitude": 121.609,
        "Latitude": 23.8603
    },
    {
        "Time": "04-06 14:39",
        "Magnitude": 3.3,
        "Longitude": 121.711,
        "Latitude": 24.1095
    },
    {
        "Time": "04-06 14:02",
        "Magnitude": 4.6,
        "Longitude": 121.748,
        "Latitude": 23.9523
    },
    {
        "Time": "04-06 13:48",
        "Magnitude": 3.1,
        "Longitude": 121.516,
        "Latitude": 23.7613
    },
    {
        "Time": "04-06 13:25",
        "Magnitude": 4.2,
        "Longitude": 121.734,
        "Latitude": 24.1837
    },
    {
        "Time": "04-06 12:37",
        "Magnitude": 3.4,
        "Longitude": 121.818,
        "Latitude": 24.2623
    },
    {
        "Time": "04-06 12:30",
        "Magnitude": 3.3,
        "Longitude": 121.727,
        "Latitude": 24.2085
    },
    {
        "Time": "04-06 12:00",
        "Magnitude": 3.5,
        "Longitude": 121.725,
        "Latitude": 24.1813
    },
    {
        "Time": "04-06 11:52",
        "Magnitude": 5.2,
        "Longitude": 121.727,
        "Latitude": 24.1898
    },
    {
        "Time": "04-06 11:50",
        "Magnitude": 4.2,
        "Longitude": 121.671,
        "Latitude": 24.1672
    },
    {
        "Time": "04-06 11:33",
        "Magnitude": 3.5,
        "Longitude": 121.739,
        "Latitude": 24.2172
    },
    {
        "Time": "04-06 11:20",
        "Magnitude": 3.3,
        "Longitude": 121.693,
        "Latitude": 24.21
    },
    {
        "Time": "04-06 10:56",
        "Magnitude": 4.0,
        "Longitude": 121.62,
        "Latitude": 23.9583
    },
    {
        "Time": "04-06 10:07",
        "Magnitude": 3.8,
        "Longitude": 121.664,
        "Latitude": 23.9213
    },
    {
        "Time": "04-06 09:42",
        "Magnitude": 3.7,
        "Longitude": 121.983,
        "Latitude": 24.2703
    },
    {
        "Time": "04-06 09:37",
        "Magnitude": 4.8,
        "Longitude": 122.037,
        "Latitude": 23.6893
    },
    {
        "Time": "04-06 09:34",
        "Magnitude": 3.8,
        "Longitude": 121.682,
        "Latitude": 24.1257
    },
    {
        "Time": "04-06 09:33",
        "Magnitude": 3.9,
        "Longitude": 121.668,
        "Latitude": 24.1275
    },
    {
        "Time": "04-06 09:31",
        "Magnitude": 3.3,
        "Longitude": 121.769,
        "Latitude": 24.2522
    },
    {
        "Time": "04-06 09:26",
        "Magnitude": 3.3,
        "Longitude": 121.782,
        "Latitude": 24.2453
    },
    {
        "Time": "04-06 08:48",
        "Magnitude": 3.4,
        "Longitude": 121.825,
        "Latitude": 24.2442
    },
    {
        "Time": "04-06 08:46",
        "Magnitude": 3.4,
        "Longitude": 121.768,
        "Latitude": 24.2317
    },
    {
        "Time": "04-06 08:45",
        "Magnitude": 3.5,
        "Longitude": 121.776,
        "Latitude": 24.2288
    },
    {
        "Time": "04-06 08:37",
        "Magnitude": 3.5,
        "Longitude": 121.757,
        "Latitude": 24.2335
    },
    {
        "Time": "04-06 08:18",
        "Magnitude": 3.8,
        "Longitude": 121.747,
        "Latitude": 24.239
    },
    {
        "Time": "04-06 07:54",
        "Magnitude": 3.6,
        "Longitude": 121.696,
        "Latitude": 24.1178
    },
    {
        "Time": "04-06 07:42",
        "Magnitude": 3.5,
        "Longitude": 121.696,
        "Latitude": 24.12
    },
    {
        "Time": "04-06 06:53",
        "Magnitude": 4.1,
        "Longitude": 121.711,
        "Latitude": 24.1157
    },
    {
        "Time": "04-06 06:33",
        "Magnitude": 3.6,
        "Longitude": 121.724,
        "Latitude": 24.1837
    },
    {
        "Time": "04-06 05:58",
        "Magnitude": 3.9,
        "Longitude": 121.713,
        "Latitude": 24.2727
    },
    {
        "Time": "04-06 05:46",
        "Magnitude": 3.1,
        "Longitude": 121.73,
        "Latitude": 24.2653
    },
    {
        "Time": "04-06 05:38",
        "Magnitude": 3.5,
        "Longitude": 121.715,
        "Latitude": 24.1672
    },
    {
        "Time": "04-06 05:34",
        "Magnitude": 4.4,
        "Longitude": 121.647,
        "Latitude": 24.0337
    },
    {
        "Time": "04-06 05:33",
        "Magnitude": 3.1,
        "Longitude": 121.666,
        "Latitude": 23.9872
    },
    {
        "Time": "04-06 05:07",
        "Magnitude": 3.4,
        "Longitude": 121.667,
        "Latitude": 24.1732
    },
    {
        "Time": "04-06 05:03",
        "Magnitude": 3.1,
        "Longitude": 121.752,
        "Latitude": 24.2258
    },
    {
        "Time": "04-06 04:52",
        "Magnitude": 3.5,
        "Longitude": 121.665,
        "Latitude": 24.0517
    },
    {
        "Time": "04-06 04:36",
        "Magnitude": 3.9,
        "Longitude": 121.654,
        "Latitude": 23.9823
    },
    {
        "Time": "04-06 04:26",
        "Magnitude": 5.3,
        "Longitude": 121.746,
        "Latitude": 23.9472
    },
    {
        "Time": "04-06 04:12",
        "Magnitude": 4.4,
        "Longitude": 121.711,
        "Latitude": 24.1318
    },
    {
        "Time": "04-06 03:51",
        "Magnitude": 3.4,
        "Longitude": 121.737,
        "Latitude": 24.1603
    },
    {
        "Time": "04-06 03:48",
        "Magnitude": 4.2,
        "Longitude": 121.735,
        "Latitude": 24.1695
    },
    {
        "Time": "04-06 02:49",
        "Magnitude": 4.6,
        "Longitude": 121.922,
        "Latitude": 23.8912
    },
    {
        "Time": "04-06 02:39",
        "Magnitude": 3.5,
        "Longitude": 121.701,
        "Latitude": 24.1218
    },
    {
        "Time": "04-06 01:59",
        "Magnitude": 3.2,
        "Longitude": 121.734,
        "Latitude": 24.1867
    },
    {
        "Time": "04-06 01:46",
        "Magnitude": 3.9,
        "Longitude": 121.665,
        "Latitude": 24.1658
    },
    {
        "Time": "04-06 01:17",
        "Magnitude": 4.0,
        "Longitude": 121.639,
        "Latitude": 24.0465
    },
    {
        "Time": "04-06 00:55",
        "Magnitude": 3.0,
        "Longitude": 121.747,
        "Latitude": 24.2115
    },
    {
        "Time": "04-06 00:54",
        "Magnitude": 3.1,
        "Longitude": 121.725,
        "Latitude": 24.1982
    },
    {
        "Time": "04-06 00:40",
        "Magnitude": 3.6,
        "Longitude": 121.862,
        "Latitude": 24.2707
    },
    {
        "Time": "04-06 00:22",
        "Magnitude": 4.3,
        "Longitude": 121.787,
        "Latitude": 24.1662
    },
    {
        "Time": "04-06 00:19",
        "Magnitude": 4.2,
        "Longitude": 121.753,
        "Latitude": 24.2138
    },
    {
        "Time": "04-06 00:17",
        "Magnitude": 3.6,
        "Longitude": 121.763,
        "Latitude": 24.2455
    },
    {
        "Time": "04-06 00:14",
        "Magnitude": 4.2,
        "Longitude": 121.814,
        "Latitude": 24.0615
    },
    {
        "Time": "04-06 00:09",
        "Magnitude": 3.8,
        "Longitude": 121.705,
        "Latitude": 24.117
    },
    {
        "Time": "04-05 23:55",
        "Magnitude": 3.4,
        "Longitude": 121.732,
        "Latitude": 24.2195
    },
    {
        "Time": "04-05 23:46",
        "Magnitude": 3.7,
        "Longitude": 121.672,
        "Latitude": 24.1342
    },
    {
        "Time": "04-05 23:41",
        "Magnitude": 3.3,
        "Longitude": 121.742,
        "Latitude": 24.2193
    },
    {
        "Time": "04-05 23:23",
        "Magnitude": 3.9,
        "Longitude": 121.368,
        "Latitude": 23.23
    },
    {
        "Time": "04-05 23:20",
        "Magnitude": 3.7,
        "Longitude": 121.779,
        "Latitude": 24.2298
    },
    {
        "Time": "04-05 23:19",
        "Magnitude": 3.6,
        "Longitude": 121.766,
        "Latitude": 24.2352
    },
    {
        "Time": "04-05 23:14",
        "Magnitude": 3.3,
        "Longitude": 121.524,
        "Latitude": 23.8575
    },
    {
        "Time": "04-05 23:06",
        "Magnitude": 3.4,
        "Longitude": 121.732,
        "Latitude": 24.233
    },
    {
        "Time": "04-05 23:02",
        "Magnitude": 3.3,
        "Longitude": 121.758,
        "Latitude": 24.2342
    },
    {
        "Time": "04-05 23:00",
        "Magnitude": 4.7,
        "Longitude": 121.776,
        "Latitude": 24.206
    },
    {
        "Time": "04-05 23:00",
        "Magnitude": 3.7,
        "Longitude": 121.753,
        "Latitude": 24.2355
    },
    {
        "Time": "04-05 22:46",
        "Magnitude": 3.6,
        "Longitude": 121.744,
        "Latitude": 24.2372
    },
    {
        "Time": "04-05 22:35",
        "Magnitude": 3.5,
        "Longitude": 121.74,
        "Latitude": 24.2313
    },
    {
        "Time": "04-05 22:11",
        "Magnitude": 3.7,
        "Longitude": 121.629,
        "Latitude": 24.117
    },
    {
        "Time": "04-05 22:11",
        "Magnitude": 3.4,
        "Longitude": 121.78,
        "Latitude": 24.2535
    },
    {
        "Time": "04-05 21:44",
        "Magnitude": 3.5,
        "Longitude": 121.584,
        "Latitude": 23.962
    },
    {
        "Time": "04-05 21:39",
        "Magnitude": 3.2,
        "Longitude": 121.832,
        "Latitude": 24.2805
    },
    {
        "Time": "04-05 21:34",
        "Magnitude": 4.0,
        "Longitude": 121.718,
        "Latitude": 24.1218
    },
    {
        "Time": "04-05 21:26",
        "Magnitude": 3.8,
        "Longitude": 121.683,
        "Latitude": 24.1692
    },
    {
        "Time": "04-05 21:24",
        "Magnitude": 3.5,
        "Longitude": 121.73,
        "Latitude": 24.1943
    },
    {
        "Time": "04-05 21:04",
        "Magnitude": 3.3,
        "Longitude": 121.765,
        "Latitude": 24.2427
    },
    {
        "Time": "04-05 21:01",
        "Magnitude": 3.8,
        "Longitude": 121.767,
        "Latitude": 24.2355
    },
    {
        "Time": "04-05 20:59",
        "Magnitude": 4.4,
        "Longitude": 121.761,
        "Latitude": 24.2372
    },
    {
        "Time": "04-05 20:48",
        "Magnitude": 3.5,
        "Longitude": 121.807,
        "Latitude": 24.2298
    },
    {
        "Time": "04-05 20:16",
        "Magnitude": 3.7,
        "Longitude": 121.648,
        "Latitude": 23.8095
    },
    {
        "Time": "04-05 20:14",
        "Magnitude": 3.7,
        "Longitude": 121.699,
        "Latitude": 24.1233
    },
    {
        "Time": "04-05 20:14",
        "Magnitude": 3.5,
        "Longitude": 121.784,
        "Latitude": 24.1998
    },
    {
        "Time": "04-05 19:51",
        "Magnitude": 3.8,
        "Longitude": 121.698,
        "Latitude": 24.1393
    },
    {
        "Time": "04-05 19:51",
        "Magnitude": 3.5,
        "Longitude": 121.616,
        "Latitude": 24.0878
    },
    {
        "Time": "04-05 19:44",
        "Magnitude": 3.7,
        "Longitude": 121.575,
        "Latitude": 24.1795
    },
    {
        "Time": "04-05 19:44",
        "Magnitude": 3.7,
        "Longitude": 121.676,
        "Latitude": 24.1803
    },
    {
        "Time": "04-05 19:21",
        "Magnitude": 3.9,
        "Longitude": 121.668,
        "Latitude": 24.1388
    },
    {
        "Time": "04-05 18:47",
        "Magnitude": 3.2,
        "Longitude": 121.615,
        "Latitude": 24.0858
    },
    {
        "Time": "04-05 18:42",
        "Magnitude": 3.5,
        "Longitude": 121.746,
        "Latitude": 24.2165
    },
    {
        "Time": "04-05 18:25",
        "Magnitude": 3.9,
        "Longitude": 121.902,
        "Latitude": 24.2272
    },
    {
        "Time": "04-05 18:08",
        "Magnitude": 4.1,
        "Longitude": 121.68,
        "Latitude": 24.1277
    },
    {
        "Time": "04-05 17:53",
        "Magnitude": 4.1,
        "Longitude": 121.763,
        "Latitude": 24.2177
    },
    {
        "Time": "04-05 17:39",
        "Magnitude": 3.1,
        "Longitude": 121.744,
        "Latitude": 24.3117
    },
    {
        "Time": "04-05 17:16",
        "Magnitude": 4.1,
        "Longitude": 121.795,
        "Latitude": 24.0645
    },
    {
        "Time": "04-05 17:15",
        "Magnitude": 3.2,
        "Longitude": 121.569,
        "Latitude": 23.8037
    },
    {
        "Time": "04-05 17:04",
        "Magnitude": 4.5,
        "Longitude": 121.656,
        "Latitude": 24.026
    },
    {
        "Time": "04-05 15:58",
        "Magnitude": 3.6,
        "Longitude": 121.594,
        "Latitude": 24.0932
    },
    {
        "Time": "04-05 15:49",
        "Magnitude": 3.2,
        "Longitude": 121.76,
        "Latitude": 24.2578
    },
    {
        "Time": "04-05 15:30",
        "Magnitude": 3.9,
        "Longitude": 121.629,
        "Latitude": 24.0727
    },
    {
        "Time": "04-05 15:07",
        "Magnitude": 3.6,
        "Longitude": 121.678,
        "Latitude": 24.1045
    },
    {
        "Time": "04-05 14:50",
        "Magnitude": 3.6,
        "Longitude": 121.761,
        "Latitude": 24.2263
    },
    {
        "Time": "04-05 14:32",
        "Magnitude": 3.3,
        "Longitude": 121.696,
        "Latitude": 24.1022
    },
    {
        "Time": "04-05 14:16",
        "Magnitude": 4.5,
        "Longitude": 121.685,
        "Latitude": 24.1357
    },
    {
        "Time": "04-05 14:12",
        "Magnitude": 5.1,
        "Longitude": 121.591,
        "Latitude": 23.7993
    },
    {
        "Time": "04-05 13:53",
        "Magnitude": 3.3,
        "Longitude": 121.696,
        "Latitude": 24.0957
    },
    {
        "Time": "04-05 13:50",
        "Magnitude": 3.8,
        "Longitude": 121.867,
        "Latitude": 24.2017
    },
    {
        "Time": "04-05 13:40",
        "Magnitude": 3.3,
        "Longitude": 121.777,
        "Latitude": 24.1908
    },
    {
        "Time": "04-05 13:27",
        "Magnitude": 3.5,
        "Longitude": 121.71,
        "Latitude": 24.1163
    },
    {
        "Time": "04-05 13:18",
        "Magnitude": 3.6,
        "Longitude": 121.501,
        "Latitude": 23.7538
    },
    {
        "Time": "04-05 13:03",
        "Magnitude": 4.0,
        "Longitude": 121.71,
        "Latitude": 24.1148
    },
    {
        "Time": "04-05 13:02",
        "Magnitude": 4.1,
        "Longitude": 121.692,
        "Latitude": 24.1305
    },
    {
        "Time": "04-05 12:57",
        "Magnitude": 3.4,
        "Longitude": 121.689,
        "Latitude": 24.089
    },
    {
        "Time": "04-05 12:51",
        "Magnitude": 4.1,
        "Longitude": 121.688,
        "Latitude": 24.112
    },
    {
        "Time": "04-05 12:50",
        "Magnitude": 5.4,
        "Longitude": 121.682,
        "Latitude": 24.1305
    },
    {
        "Time": "04-05 12:43",
        "Magnitude": 3.5,
        "Longitude": 121.785,
        "Latitude": 24.1703
    },
    {
        "Time": "04-05 12:40",
        "Magnitude": 4.7,
        "Longitude": 121.756,
        "Latitude": 24.2055
    },
    {
        "Time": "04-05 12:36",
        "Magnitude": 4.0,
        "Longitude": 121.752,
        "Latitude": 24.2213
    },
    {
        "Time": "04-05 12:35",
        "Magnitude": 3.1,
        "Longitude": 121.532,
        "Latitude": 23.8982
    },
    {
        "Time": "04-05 12:08",
        "Magnitude": 3.4,
        "Longitude": 121.738,
        "Latitude": 24.2405
    },
    {
        "Time": "04-05 12:04",
        "Magnitude": 3.5,
        "Longitude": 121.732,
        "Latitude": 24.1325
    },
    {
        "Time": "04-05 11:47",
        "Magnitude": 4.0,
        "Longitude": 121.529,
        "Latitude": 23.7793
    },
    {
        "Time": "04-05 11:41",
        "Magnitude": 4.0,
        "Longitude": 121.672,
        "Latitude": 24.0428
    },
    {
        "Time": "04-05 11:39",
        "Magnitude": 3.7,
        "Longitude": 121.749,
        "Latitude": 24.2302
    },
    {
        "Time": "04-05 10:10",
        "Magnitude": 4.2,
        "Longitude": 121.587,
        "Latitude": 23.925
    },
    {
        "Time": "04-05 10:08",
        "Magnitude": 3.7,
        "Longitude": 121.705,
        "Latitude": 24.1275
    },
    {
        "Time": "04-05 10:01",
        "Magnitude": 3.2,
        "Longitude": 121.739,
        "Latitude": 24.2777
    },
    {
        "Time": "04-05 09:53",
        "Magnitude": 4.0,
        "Longitude": 121.802,
        "Latitude": 24.063
    },
    {
        "Time": "04-05 09:29",
        "Magnitude": 4.0,
        "Longitude": 121.67,
        "Latitude": 24.1632
    },
    {
        "Time": "04-05 09:24",
        "Magnitude": 3.7,
        "Longitude": 121.672,
        "Latitude": 24.1703
    },
    {
        "Time": "04-05 09:20",
        "Magnitude": 3.7,
        "Longitude": 121.758,
        "Latitude": 24.2543
    },
    {
        "Time": "04-05 09:17",
        "Magnitude": 4.1,
        "Longitude": 121.769,
        "Latitude": 24.2478
    },
    {
        "Time": "04-05 09:10",
        "Magnitude": 3.6,
        "Longitude": 121.64,
        "Latitude": 24.052
    },
    {
        "Time": "04-05 09:02",
        "Magnitude": 3.6,
        "Longitude": 121.825,
        "Latitude": 24.3303
    },
    {
        "Time": "04-05 08:42",
        "Magnitude": 3.9,
        "Longitude": 121.663,
        "Latitude": 24.1585
    },
    {
        "Time": "04-05 08:35",
        "Magnitude": 3.3,
        "Longitude": 121.754,
        "Latitude": 24.23
    },
    {
        "Time": "04-05 08:29",
        "Magnitude": 3.8,
        "Longitude": 121.672,
        "Latitude": 23.9798
    },
    {
        "Time": "04-05 08:17",
        "Magnitude": 3.6,
        "Longitude": 121.744,
        "Latitude": 24.226
    },
    {
        "Time": "04-05 07:57",
        "Magnitude": 3.2,
        "Longitude": 121.748,
        "Latitude": 24.243
    },
    {
        "Time": "04-05 07:34",
        "Magnitude": 3.7,
        "Longitude": 121.574,
        "Latitude": 23.7135
    },
    {
        "Time": "04-05 06:23",
        "Magnitude": 3.5,
        "Longitude": 121.746,
        "Latitude": 24.2292
    },
    {
        "Time": "04-05 06:14",
        "Magnitude": 3.4,
        "Longitude": 121.747,
        "Latitude": 24.2245
    },
    {
        "Time": "04-05 06:08",
        "Magnitude": 3.9,
        "Longitude": 121.637,
        "Latitude": 23.8678
    },
    {
        "Time": "04-05 05:54",
        "Magnitude": 3.8,
        "Longitude": 121.65,
        "Latitude": 24.176
    },
    {
        "Time": "04-05 05:54",
        "Magnitude": 3.8,
        "Longitude": 121.765,
        "Latitude": 24.2103
    },
    {
        "Time": "04-05 05:28",
        "Magnitude": 3.2,
        "Longitude": 121.709,
        "Latitude": 24.1948
    },
    {
        "Time": "04-05 05:20",
        "Magnitude": 3.9,
        "Longitude": 121.75,
        "Latitude": 24.2212
    },
    {
        "Time": "04-05 05:14",
        "Magnitude": 3.0,
        "Longitude": 121.697,
        "Latitude": 24.2367
    },
    {
        "Time": "04-05 05:10",
        "Magnitude": 4.1,
        "Longitude": 121.737,
        "Latitude": 24.2453
    },
    {
        "Time": "04-05 05:02",
        "Magnitude": 3.3,
        "Longitude": 121.734,
        "Latitude": 24.2427
    },
    {
        "Time": "04-05 04:30",
        "Magnitude": 3.3,
        "Longitude": 121.673,
        "Latitude": 24.1408
    },
    {
        "Time": "04-05 04:28",
        "Magnitude": 4.4,
        "Longitude": 121.746,
        "Latitude": 24.2348
    },
    {
        "Time": "04-05 04:21",
        "Magnitude": 3.4,
        "Longitude": 121.752,
        "Latitude": 24.2295
    },
    {
        "Time": "04-05 04:11",
        "Magnitude": 3.7,
        "Longitude": 121.743,
        "Latitude": 24.2388
    },
    {
        "Time": "04-05 03:55",
        "Magnitude": 4.3,
        "Longitude": 121.864,
        "Latitude": 23.8218
    },
    {
        "Time": "04-05 03:48",
        "Magnitude": 4.3,
        "Longitude": 121.748,
        "Latitude": 24.2363
    },
    {
        "Time": "04-05 03:40",
        "Magnitude": 3.4,
        "Longitude": 121.631,
        "Latitude": 23.9638
    },
    {
        "Time": "04-05 03:16",
        "Magnitude": 3.8,
        "Longitude": 121.532,
        "Latitude": 23.9153
    },
    {
        "Time": "04-05 03:03",
        "Magnitude": 3.4,
        "Longitude": 121.732,
        "Latitude": 24.0577
    },
    {
        "Time": "04-05 03:03",
        "Magnitude": 3.4,
        "Longitude": 121.669,
        "Latitude": 24.3025
    },
    {
        "Time": "04-05 02:42",
        "Magnitude": 4.6,
        "Longitude": 121.9,
        "Latitude": 24.2857
    },
    {
        "Time": "04-05 02:36",
        "Magnitude": 3.7,
        "Longitude": 121.8,
        "Latitude": 24.2978
    },
    {
        "Time": "04-05 02:35",
        "Magnitude": 5.3,
        "Longitude": 121.671,
        "Latitude": 24.1568
    },
    {
        "Time": "04-05 02:34",
        "Magnitude": 3.3,
        "Longitude": 121.728,
        "Latitude": 24.2577
    },
    {
        "Time": "04-05 02:33",
        "Magnitude": 3.5,
        "Longitude": 121.746,
        "Latitude": 24.2495
    },
    {
        "Time": "04-05 02:19",
        "Magnitude": 3.3,
        "Longitude": 121.762,
        "Latitude": 24.2288
    },
    {
        "Time": "04-05 02:18",
        "Magnitude": 3.4,
        "Longitude": 121.76,
        "Latitude": 24.2253
    },
    {
        "Time": "04-05 02:07",
        "Magnitude": 3.4,
        "Longitude": 121.751,
        "Latitude": 24.2477
    },
    {
        "Time": "04-05 01:56",
        "Magnitude": 3.3,
        "Longitude": 121.76,
        "Latitude": 24.2385
    },
    {
        "Time": "04-05 01:55",
        "Magnitude": 3.4,
        "Longitude": 121.699,
        "Latitude": 24.1302
    },
    {
        "Time": "04-05 01:51",
        "Magnitude": 3.3,
        "Longitude": 121.785,
        "Latitude": 24.3037
    },
    {
        "Time": "04-05 01:37",
        "Magnitude": 4.1,
        "Longitude": 121.739,
        "Latitude": 24.2425
    },
    {
        "Time": "04-05 01:30",
        "Magnitude": 3.7,
        "Longitude": 121.753,
        "Latitude": 24.2422
    },
    {
        "Time": "04-05 01:29",
        "Magnitude": 3.3,
        "Longitude": 121.724,
        "Latitude": 24.2695
    },
    {
        "Time": "04-05 01:27",
        "Magnitude": 3.9,
        "Longitude": 121.765,
        "Latitude": 24.2337
    },
    {
        "Time": "04-05 01:24",
        "Magnitude": 4.9,
        "Longitude": 121.76,
        "Latitude": 24.2358
    },
    {
        "Time": "04-05 01:22",
        "Magnitude": 4.1,
        "Longitude": 121.745,
        "Latitude": 24.246
    },
    {
        "Time": "04-05 01:16",
        "Magnitude": 3.5,
        "Longitude": 121.781,
        "Latitude": 24.2363
    },
    {
        "Time": "04-05 01:00",
        "Magnitude": 3.5,
        "Longitude": 121.749,
        "Latitude": 24.1177
    },
    {
        "Time": "04-05 00:56",
        "Magnitude": 3.4,
        "Longitude": 121.75,
        "Latitude": 24.2567
    },
    {
        "Time": "04-05 00:47",
        "Magnitude": 3.6,
        "Longitude": 121.738,
        "Latitude": 24.246
    },
    {
        "Time": "04-05 00:32",
        "Magnitude": 3.9,
        "Longitude": 121.772,
        "Latitude": 24.2792
    },
    {
        "Time": "04-05 00:25",
        "Magnitude": 3.5,
        "Longitude": 121.749,
        "Latitude": 24.2387
    },
    {
        "Time": "04-05 00:21",
        "Magnitude": 3.5,
        "Longitude": 121.756,
        "Latitude": 24.2337
    },
    {
        "Time": "04-05 00:13",
        "Magnitude": 3.2,
        "Longitude": 121.745,
        "Latitude": 24.2723
    },
    {
        "Time": "04-04 23:56",
        "Magnitude": 3.7,
        "Longitude": 121.746,
        "Latitude": 24.2358
    },
    {
        "Time": "04-04 23:39",
        "Magnitude": 3.5,
        "Longitude": 121.515,
        "Latitude": 23.8983
    },
    {
        "Time": "04-04 23:19",
        "Magnitude": 3.6,
        "Longitude": 121.763,
        "Latitude": 24.239
    },
    {
        "Time": "04-04 23:15",
        "Magnitude": 3.3,
        "Longitude": 121.765,
        "Latitude": 24.2437
    },
    {
        "Time": "04-04 23:02",
        "Magnitude": 3.6,
        "Longitude": 121.76,
        "Latitude": 24.2425
    },
    {
        "Time": "04-04 23:00",
        "Magnitude": 3.4,
        "Longitude": 121.728,
        "Latitude": 24.2582
    },
    {
        "Time": "04-04 22:59",
        "Magnitude": 4.0,
        "Longitude": 121.734,
        "Latitude": 24.2557
    },
    {
        "Time": "04-04 22:56",
        "Magnitude": 4.0,
        "Longitude": 121.76,
        "Latitude": 24.248
    },
    {
        "Time": "04-04 22:54",
        "Magnitude": 3.5,
        "Longitude": 121.757,
        "Latitude": 24.258
    },
    {
        "Time": "04-04 22:53",
        "Magnitude": 4.2,
        "Longitude": 121.747,
        "Latitude": 24.2563
    },
    {
        "Time": "04-04 22:50",
        "Magnitude": 3.5,
        "Longitude": 121.746,
        "Latitude": 24.2472
    },
    {
        "Time": "04-04 22:49",
        "Magnitude": 3.2,
        "Longitude": 121.742,
        "Latitude": 24.244
    },
    {
        "Time": "04-04 22:49",
        "Magnitude": 3.3,
        "Longitude": 121.751,
        "Latitude": 24.242
    },
    {
        "Time": "04-04 22:47",
        "Magnitude": 3.5,
        "Longitude": 121.702,
        "Latitude": 24.2858
    },
    {
        "Time": "04-04 22:44",
        "Magnitude": 3.6,
        "Longitude": 121.762,
        "Latitude": 24.2382
    },
    {
        "Time": "04-04 22:40",
        "Magnitude": 3.3,
        "Longitude": 121.738,
        "Latitude": 24.2508
    },
    {
        "Time": "04-04 22:39",
        "Magnitude": 3.5,
        "Longitude": 121.728,
        "Latitude": 24.2215
    },
    {
        "Time": "04-04 22:38",
        "Magnitude": 3.3,
        "Longitude": 121.769,
        "Latitude": 24.2302
    },
    {
        "Time": "04-04 22:36",
        "Magnitude": 3.7,
        "Longitude": 121.747,
        "Latitude": 24.2362
    },
    {
        "Time": "04-04 22:34",
        "Magnitude": 3.3,
        "Longitude": 121.747,
        "Latitude": 24.2323
    },
    {
        "Time": "04-04 22:31",
        "Magnitude": 3.4,
        "Longitude": 121.734,
        "Latitude": 24.2327
    },
    {
        "Time": "04-04 22:31",
        "Magnitude": 3.9,
        "Longitude": 121.757,
        "Latitude": 24.2403
    },
    {
        "Time": "04-04 22:30",
        "Magnitude": 5.1,
        "Longitude": 121.748,
        "Latitude": 24.2613
    },
    {
        "Time": "04-04 22:27",
        "Magnitude": 3.6,
        "Longitude": 121.673,
        "Latitude": 24.0762
    },
    {
        "Time": "04-04 22:09",
        "Magnitude": 4.1,
        "Longitude": 121.62,
        "Latitude": 23.9153
    },
    {
        "Time": "04-04 22:05",
        "Magnitude": 4.0,
        "Longitude": 121.662,
        "Latitude": 24.0555
    },
    {
        "Time": "04-04 21:53",
        "Magnitude": 3.2,
        "Longitude": 121.76,
        "Latitude": 24.2962
    },
    {
        "Time": "04-04 21:43",
        "Magnitude": 3.7,
        "Longitude": 121.839,
        "Latitude": 24.1772
    },
    {
        "Time": "04-04 21:35",
        "Magnitude": 3.6,
        "Longitude": 121.699,
        "Latitude": 24.172
    },
    {
        "Time": "04-04 21:34",
        "Magnitude": 3.8,
        "Longitude": 121.833,
        "Latitude": 24.1783
    },
    {
        "Time": "04-04 21:24",
        "Magnitude": 3.7,
        "Longitude": 121.659,
        "Latitude": 24.127
    },
    {
        "Time": "04-04 21:19",
        "Magnitude": 3.7,
        "Longitude": 121.586,
        "Latitude": 23.769
    },
    {
        "Time": "04-04 21:17",
        "Magnitude": 3.3,
        "Longitude": 121.674,
        "Latitude": 24.2393
    },
    {
        "Time": "04-04 21:13",
        "Magnitude": 3.4,
        "Longitude": 121.581,
        "Latitude": 23.7713
    },
    {
        "Time": "04-04 21:04",
        "Magnitude": 3.4,
        "Longitude": 121.527,
        "Latitude": 23.8793
    },
    {
        "Time": "04-04 20:40",
        "Magnitude": 3.7,
        "Longitude": 121.671,
        "Latitude": 24.1157
    },
    {
        "Time": "04-04 20:35",
        "Magnitude": 3.5,
        "Longitude": 121.74,
        "Latitude": 24.244
    },
    {
        "Time": "04-04 20:15",
        "Magnitude": 3.4,
        "Longitude": 121.683,
        "Latitude": 24.1663
    },
    {
        "Time": "04-04 19:21",
        "Magnitude": 4.1,
        "Longitude": 121.731,
        "Latitude": 24.1083
    },
    {
        "Time": "04-04 19:10",
        "Magnitude": 4.1,
        "Longitude": 121.703,
        "Latitude": 24.1318
    },
    {
        "Time": "04-04 18:59",
        "Magnitude": 4.0,
        "Longitude": 121.658,
        "Latitude": 24.0138
    },
    {
        "Time": "04-04 18:42",
        "Magnitude": 3.8,
        "Longitude": 121.664,
        "Latitude": 24.0403
    },
    {
        "Time": "04-04 18:10",
        "Magnitude": 4.2,
        "Longitude": 121.852,
        "Latitude": 24.19
    },
    {
        "Time": "04-04 18:04",
        "Magnitude": 3.1,
        "Longitude": 121.684,
        "Latitude": 24.1135
    },
    {
        "Time": "04-04 18:01",
        "Magnitude": 3.5,
        "Longitude": 121.692,
        "Latitude": 24.1893
    },
    {
        "Time": "04-04 17:54",
        "Magnitude": 3.7,
        "Longitude": 121.706,
        "Latitude": 24.0478
    },
    {
        "Time": "04-04 17:46",
        "Magnitude": 3.3,
        "Longitude": 121.783,
        "Latitude": 24.2865
    },
    {
        "Time": "04-04 17:36",
        "Magnitude": 3.4,
        "Longitude": 121.617,
        "Latitude": 23.926
    },
    {
        "Time": "04-04 17:09",
        "Magnitude": 3.7,
        "Longitude": 121.695,
        "Latitude": 23.9193
    },
    {
        "Time": "04-04 16:41",
        "Magnitude": 4.0,
        "Longitude": 121.568,
        "Latitude": 23.8288
    },
    {
        "Time": "04-04 16:06",
        "Magnitude": 3.5,
        "Longitude": 121.695,
        "Latitude": 24.1248
    },
    {
        "Time": "04-04 15:59",
        "Magnitude": 3.4,
        "Longitude": 121.761,
        "Latitude": 24.229
    },
    {
        "Time": "04-04 15:52",
        "Magnitude": 4.2,
        "Longitude": 121.671,
        "Latitude": 24.0535
    },
    {
        "Time": "04-04 15:51",
        "Magnitude": 3.4,
        "Longitude": 121.818,
        "Latitude": 24.1692
    },
    {
        "Time": "04-04 15:43",
        "Magnitude": 3.5,
        "Longitude": 121.583,
        "Latitude": 24.0028
    },
    {
        "Time": "04-04 15:32",
        "Magnitude": 3.3,
        "Longitude": 121.679,
        "Latitude": 24.239
    },
    {
        "Time": "04-04 15:27",
        "Magnitude": 4.0,
        "Longitude": 121.763,
        "Latitude": 24.2328
    },
    {
        "Time": "04-04 15:17",
        "Magnitude": 4.3,
        "Longitude": 121.619,
        "Latitude": 23.8167
    },
    {
        "Time": "04-04 15:17",
        "Magnitude": 3.6,
        "Longitude": 121.757,
        "Latitude": 24.2493
    },
    {
        "Time": "04-04 15:14",
        "Magnitude": 3.7,
        "Longitude": 121.667,
        "Latitude": 24.199
    },
    {
        "Time": "04-04 15:06",
        "Magnitude": 3.6,
        "Longitude": 121.627,
        "Latitude": 24.0665
    },
    {
        "Time": "04-04 14:57",
        "Magnitude": 3.8,
        "Longitude": 121.682,
        "Latitude": 23.9672
    },
    {
        "Time": "04-04 14:56",
        "Magnitude": 3.3,
        "Longitude": 121.768,
        "Latitude": 24.2283
    },
    {
        "Time": "04-04 14:52",
        "Magnitude": 3.5,
        "Longitude": 121.679,
        "Latitude": 24.1873
    },
    {
        "Time": "04-04 14:51",
        "Magnitude": 3.3,
        "Longitude": 121.805,
        "Latitude": 24.1612
    },
    {
        "Time": "04-04 14:44",
        "Magnitude": 4.4,
        "Longitude": 121.826,
        "Latitude": 24.1583
    },
    {
        "Time": "04-04 14:44",
        "Magnitude": 3.3,
        "Longitude": 121.713,
        "Latitude": 24.1547
    },
    {
        "Time": "04-04 14:34",
        "Magnitude": 3.9,
        "Longitude": 121.763,
        "Latitude": 24.2318
    },
    {
        "Time": "04-04 14:33",
        "Magnitude": 3.6,
        "Longitude": 121.77,
        "Latitude": 24.225
    },
    {
        "Time": "04-04 14:18",
        "Magnitude": 4.0,
        "Longitude": 121.669,
        "Latitude": 24.0293
    },
    {
        "Time": "04-04 14:11",
        "Magnitude": 3.5,
        "Longitude": 121.734,
        "Latitude": 24.0512
    },
    {
        "Time": "04-04 14:00",
        "Magnitude": 3.1,
        "Longitude": 121.63,
        "Latitude": 24.113
    },
    {
        "Time": "04-04 13:53",
        "Magnitude": 3.2,
        "Longitude": 120.215,
        "Latitude": 23.3675
    },
    {
        "Time": "04-04 13:52",
        "Magnitude": 3.6,
        "Longitude": 121.754,
        "Latitude": 24.236
    },
    {
        "Time": "04-04 13:21",
        "Magnitude": 3.4,
        "Longitude": 121.727,
        "Latitude": 24.1192
    },
    {
        "Time": "04-04 13:16",
        "Magnitude": 4.4,
        "Longitude": 121.772,
        "Latitude": 24.1835
    },
    {
        "Time": "04-04 13:08",
        "Magnitude": 4.2,
        "Longitude": 121.662,
        "Latitude": 23.9823
    },
    {
        "Time": "04-04 13:02",
        "Magnitude": 3.0,
        "Longitude": 121.701,
        "Latitude": 24.2762
    },
    {
        "Time": "04-04 13:01",
        "Magnitude": 3.5,
        "Longitude": 121.597,
        "Latitude": 24.032
    },
    {
        "Time": "04-04 13:00",
        "Magnitude": 4.8,
        "Longitude": 121.747,
        "Latitude": 24.1992
    },
    {
        "Time": "04-04 12:56",
        "Magnitude": 3.7,
        "Longitude": 121.51,
        "Latitude": 23.7812
    },
    {
        "Time": "04-04 12:43",
        "Magnitude": 3.8,
        "Longitude": 121.802,
        "Latitude": 24.2243
    },
    {
        "Time": "04-04 12:16",
        "Magnitude": 3.8,
        "Longitude": 121.552,
        "Latitude": 23.7782
    },
    {
        "Time": "04-04 12:11",
        "Magnitude": 4.1,
        "Longitude": 121.735,
        "Latitude": 24.1728
    },
    {
        "Time": "04-04 12:11",
        "Magnitude": 3.3,
        "Longitude": 121.71,
        "Latitude": 24.2308
    },
    {
        "Time": "04-04 11:53",
        "Magnitude": 3.8,
        "Longitude": 121.716,
        "Latitude": 24.1753
    },
    {
        "Time": "04-04 11:44",
        "Magnitude": 3.6,
        "Longitude": 121.58,
        "Latitude": 23.9222
    },
    {
        "Time": "04-04 11:35",
        "Magnitude": 3.5,
        "Longitude": 121.694,
        "Latitude": 24.2415
    },
    {
        "Time": "04-04 11:32",
        "Magnitude": 3.4,
        "Longitude": 121.725,
        "Latitude": 24.1622
    },
    {
        "Time": "04-04 11:31",
        "Magnitude": 4.0,
        "Longitude": 121.716,
        "Latitude": 24.1677
    },
    {
        "Time": "04-04 11:14",
        "Magnitude": 4.4,
        "Longitude": 121.684,
        "Latitude": 24.0262
    },
    {
        "Time": "04-04 11:11",
        "Magnitude": 3.7,
        "Longitude": 121.709,
        "Latitude": 24.1927
    },
    {
        "Time": "04-04 11:10",
        "Magnitude": 4.0,
        "Longitude": 121.721,
        "Latitude": 24.2
    },
    {
        "Time": "04-04 11:09",
        "Magnitude": 3.1,
        "Longitude": 121.705,
        "Latitude": 24.198
    },
    {
        "Time": "04-04 10:49",
        "Magnitude": 3.5,
        "Longitude": 121.628,
        "Latitude": 23.9638
    },
    {
        "Time": "04-04 10:43",
        "Magnitude": 3.9,
        "Longitude": 121.719,
        "Latitude": 24.1747
    },
    {
        "Time": "04-04 10:34",
        "Magnitude": 3.4,
        "Longitude": 121.734,
        "Latitude": 24.0368
    },
    {
        "Time": "04-04 10:33",
        "Magnitude": 3.5,
        "Longitude": 121.696,
        "Latitude": 24.1628
    },
    {
        "Time": "04-04 10:17",
        "Magnitude": 4.1,
        "Longitude": 121.754,
        "Latitude": 24.0178
    },
    {
        "Time": "04-04 10:16",
        "Magnitude": 3.7,
        "Longitude": 121.688,
        "Latitude": 24.117
    },
    {
        "Time": "04-04 10:14",
        "Magnitude": 3.5,
        "Longitude": 120.209,
        "Latitude": 23.3713
    },
    {
        "Time": "04-04 10:08",
        "Magnitude": 3.7,
        "Longitude": 121.718,
        "Latitude": 24.1802
    },
    {
        "Time": "04-04 10:05",
        "Magnitude": 4.0,
        "Longitude": 121.654,
        "Latitude": 24.017
    },
    {
        "Time": "04-04 10:04",
        "Magnitude": 4.0,
        "Longitude": 121.719,
        "Latitude": 24.1845
    },
    {
        "Time": "04-04 10:02",
        "Magnitude": 4.8,
        "Longitude": 121.708,
        "Latitude": 24.1738
    },
    {
        "Time": "04-04 10:01",
        "Magnitude": 3.7,
        "Longitude": 121.697,
        "Latitude": 24.1758
    },
    {
        "Time": "04-04 09:55",
        "Magnitude": 3.3,
        "Longitude": 121.729,
        "Latitude": 24.1113
    },
    {
        "Time": "04-04 09:52",
        "Magnitude": 3.3,
        "Longitude": 121.669,
        "Latitude": 24.2375
    },
    {
        "Time": "04-04 09:47",
        "Magnitude": 3.4,
        "Longitude": 121.744,
        "Latitude": 24.2
    },
    {
        "Time": "04-04 09:43",
        "Magnitude": 3.4,
        "Longitude": 121.771,
        "Latitude": 24.306
    },
    {
        "Time": "04-04 09:32",
        "Magnitude": 3.9,
        "Longitude": 121.696,
        "Latitude": 24.2275
    },
    {
        "Time": "04-04 09:31",
        "Magnitude": 4.3,
        "Longitude": 121.822,
        "Latitude": 24.1832
    },
    {
        "Time": "04-04 09:29",
        "Magnitude": 4.8,
        "Longitude": 121.54,
        "Latitude": 23.8217
    },
    {
        "Time": "04-04 09:14",
        "Magnitude": 4.3,
        "Longitude": 121.625,
        "Latitude": 24.0653
    },
    {
        "Time": "04-04 08:53",
        "Magnitude": 3.5,
        "Longitude": 121.701,
        "Latitude": 24.2217
    },
    {
        "Time": "04-04 08:43",
        "Magnitude": 3.3,
        "Longitude": 121.497,
        "Latitude": 23.8135
    },
    {
        "Time": "04-04 08:32",
        "Magnitude": 4.2,
        "Longitude": 121.691,
        "Latitude": 24.225
    },
    {
        "Time": "04-04 08:30",
        "Magnitude": 3.5,
        "Longitude": 121.733,
        "Latitude": 24.2097
    },
    {
        "Time": "04-04 08:28",
        "Magnitude": 3.5,
        "Longitude": 121.718,
        "Latitude": 24.2213
    },
    {
        "Time": "04-04 08:27",
        "Magnitude": 3.3,
        "Longitude": 121.742,
        "Latitude": 24.1958
    },
    {
        "Time": "04-04 08:18",
        "Magnitude": 4.3,
        "Longitude": 121.688,
        "Latitude": 24.2253
    },
    {
        "Time": "04-04 07:56",
        "Magnitude": 3.4,
        "Longitude": 121.641,
        "Latitude": 24.1982
    },
    {
        "Time": "04-04 07:50",
        "Magnitude": 3.2,
        "Longitude": 121.76,
        "Latitude": 24.2145
    },
    {
        "Time": "04-04 07:48",
        "Magnitude": 3.9,
        "Longitude": 121.839,
        "Latitude": 24.1502
    },
    {
        "Time": "04-04 07:47",
        "Magnitude": 3.6,
        "Longitude": 121.782,
        "Latitude": 24.2503
    },
    {
        "Time": "04-04 07:47",
        "Magnitude": 3.4,
        "Longitude": 121.745,
        "Latitude": 24.2267
    },
    {
        "Time": "04-04 07:43",
        "Magnitude": 4.1,
        "Longitude": 121.786,
        "Latitude": 24.2537
    },
    {
        "Time": "04-04 07:23",
        "Magnitude": 3.7,
        "Longitude": 121.668,
        "Latitude": 24.182
    },
    {
        "Time": "04-04 07:09",
        "Magnitude": 3.5,
        "Longitude": 121.782,
        "Latitude": 24.255
    },
    {
        "Time": "04-04 06:53",
        "Magnitude": 3.3,
        "Longitude": 121.785,
        "Latitude": 24.22
    },
    {
        "Time": "04-04 06:48",
        "Magnitude": 4.8,
        "Longitude": 121.681,
        "Latitude": 24.0707
    },
    {
        "Time": "04-04 06:46",
        "Magnitude": 4.8,
        "Longitude": 121.685,
        "Latitude": 23.9872
    },
    {
        "Time": "04-04 06:36",
        "Magnitude": 3.5,
        "Longitude": 121.576,
        "Latitude": 23.8358
    },
    {
        "Time": "04-04 06:32",
        "Magnitude": 3.9,
        "Longitude": 121.708,
        "Latitude": 24.116
    },
    {
        "Time": "04-04 06:26",
        "Magnitude": 3.6,
        "Longitude": 121.81,
        "Latitude": 24.1828
    },
    {
        "Time": "04-04 06:19",
        "Magnitude": 4.2,
        "Longitude": 121.599,
        "Latitude": 23.8467
    },
    {
        "Time": "04-04 06:15",
        "Magnitude": 3.7,
        "Longitude": 121.73,
        "Latitude": 24.0178
    },
    {
        "Time": "04-04 06:10",
        "Magnitude": 3.9,
        "Longitude": 121.708,
        "Latitude": 24.1095
    },
    {
        "Time": "04-04 05:56",
        "Magnitude": 3.7,
        "Longitude": 121.667,
        "Latitude": 24.1817
    },
    {
        "Time": "04-04 05:56",
        "Magnitude": 4.8,
        "Longitude": 121.681,
        "Latitude": 24.1968
    },
    {
        "Time": "04-04 05:52",
        "Magnitude": 3.1,
        "Longitude": 121.804,
        "Latitude": 24.3125
    },
    {
        "Time": "04-04 05:49",
        "Magnitude": 3.8,
        "Longitude": 121.674,
        "Latitude": 24.1687
    },
    {
        "Time": "04-04 05:36",
        "Magnitude": 3.7,
        "Longitude": 121.658,
        "Latitude": 24.179
    },
    {
        "Time": "04-04 05:36",
        "Magnitude": 3.3,
        "Longitude": 121.534,
        "Latitude": 23.7232
    },
    {
        "Time": "04-04 05:26",
        "Magnitude": 3.8,
        "Longitude": 121.744,
        "Latitude": 23.9787
    },
    {
        "Time": "04-04 05:20",
        "Magnitude": 3.5,
        "Longitude": 121.859,
        "Latitude": 24.5222
    },
    {
        "Time": "04-04 05:19",
        "Magnitude": 4.0,
        "Longitude": 121.779,
        "Latitude": 24.1578
    },
    {
        "Time": "04-04 05:12",
        "Magnitude": 3.6,
        "Longitude": 121.631,
        "Latitude": 24.0078
    },
    {
        "Time": "04-04 04:58",
        "Magnitude": 3.5,
        "Longitude": 121.63,
        "Latitude": 23.9285
    },
    {
        "Time": "04-04 04:51",
        "Magnitude": 3.6,
        "Longitude": 121.781,
        "Latitude": 24.0965
    },
    {
        "Time": "04-04 04:47",
        "Magnitude": 3.7,
        "Longitude": 121.715,
        "Latitude": 24.2187
    },
    {
        "Time": "04-04 04:30",
        "Magnitude": 3.8,
        "Longitude": 121.666,
        "Latitude": 24.1735
    },
    {
        "Time": "04-04 04:29",
        "Magnitude": 4.7,
        "Longitude": 121.823,
        "Latitude": 24.2567
    },
    {
        "Time": "04-04 04:28",
        "Magnitude": 3.8,
        "Longitude": 121.655,
        "Latitude": 24.1873
    },
    {
        "Time": "04-04 04:28",
        "Magnitude": 3.7,
        "Longitude": 121.653,
        "Latitude": 24.1967
    },
    {
        "Time": "04-04 04:26",
        "Magnitude": 4.3,
        "Longitude": 121.69,
        "Latitude": 24.2463
    },
    {
        "Time": "04-04 04:25",
        "Magnitude": 3.9,
        "Longitude": 121.834,
        "Latitude": 24.1755
    },
    {
        "Time": "04-04 04:16",
        "Magnitude": 4.0,
        "Longitude": 121.826,
        "Latitude": 24.1548
    },
    {
        "Time": "04-04 04:10",
        "Magnitude": 3.9,
        "Longitude": 121.847,
        "Latitude": 24.1505
    },
    {
        "Time": "04-04 04:04",
        "Magnitude": 3.5,
        "Longitude": 121.757,
        "Latitude": 24.2553
    },
    {
        "Time": "04-04 04:03",
        "Magnitude": 4.0,
        "Longitude": 121.889,
        "Latitude": 23.7787
    },
    {
        "Time": "04-04 04:01",
        "Magnitude": 3.7,
        "Longitude": 121.701,
        "Latitude": 24.0457
    },
    {
        "Time": "04-04 03:54",
        "Magnitude": 3.9,
        "Longitude": 121.667,
        "Latitude": 24.1482
    },
    {
        "Time": "04-04 03:49",
        "Magnitude": 3.5,
        "Longitude": 121.612,
        "Latitude": 23.962
    },
    {
        "Time": "04-04 03:46",
        "Magnitude": 4.9,
        "Longitude": 121.766,
        "Latitude": 23.816
    },
    {
        "Time": "04-04 03:35",
        "Magnitude": 4.2,
        "Longitude": 121.627,
        "Latitude": 24.0123
    },
    {
        "Time": "04-04 03:35",
        "Magnitude": 4.1,
        "Longitude": 121.635,
        "Latitude": 23.9608
    },
    {
        "Time": "04-04 03:33",
        "Magnitude": 3.9,
        "Longitude": 121.621,
        "Latitude": 23.954
    },
    {
        "Time": "04-04 03:27",
        "Magnitude": 3.6,
        "Longitude": 121.715,
        "Latitude": 24.1332
    },
    {
        "Time": "04-04 03:19",
        "Magnitude": 3.7,
        "Longitude": 121.693,
        "Latitude": 24.106
    },
    {
        "Time": "04-04 03:15",
        "Magnitude": 3.6,
        "Longitude": 121.727,
        "Latitude": 24.2647
    },
    {
        "Time": "04-04 03:07",
        "Magnitude": 4.5,
        "Longitude": 121.74,
        "Latitude": 23.9127
    },
    {
        "Time": "04-04 03:04",
        "Magnitude": 3.4,
        "Longitude": 121.751,
        "Latitude": 24.2382
    },
    {
        "Time": "04-04 02:55",
        "Magnitude": 4.1,
        "Longitude": 121.674,
        "Latitude": 24.169
    },
    {
        "Time": "04-04 02:52",
        "Magnitude": 3.6,
        "Longitude": 121.633,
        "Latitude": 24.0423
    },
    {
        "Time": "04-04 02:45",
        "Magnitude": 3.8,
        "Longitude": 121.521,
        "Latitude": 23.8605
    },
    {
        "Time": "04-04 02:38",
        "Magnitude": 3.5,
        "Longitude": 121.761,
        "Latitude": 24.2525
    },
    {
        "Time": "04-04 02:35",
        "Magnitude": 3.7,
        "Longitude": 121.66,
        "Latitude": 24.0725
    },
    {
        "Time": "04-04 02:32",
        "Magnitude": 4.2,
        "Longitude": 121.771,
        "Latitude": 23.8165
    },
    {
        "Time": "04-04 02:31",
        "Magnitude": 4.0,
        "Longitude": 121.675,
        "Latitude": 24.173
    },
    {
        "Time": "04-04 02:30",
        "Magnitude": 4.3,
        "Longitude": 121.683,
        "Latitude": 24.1767
    },
    {
        "Time": "04-04 02:29",
        "Magnitude": 5.4,
        "Longitude": 121.788,
        "Latitude": 23.7963
    },
    {
        "Time": "04-04 02:04",
        "Magnitude": 3.4,
        "Longitude": 121.613,
        "Latitude": 24.0867
    },
    {
        "Time": "04-04 01:44",
        "Magnitude": 3.6,
        "Longitude": 121.655,
        "Latitude": 23.8968
    },
    {
        "Time": "04-04 01:40",
        "Magnitude": 3.2,
        "Longitude": 121.571,
        "Latitude": 24.039
    },
    {
        "Time": "04-04 01:39",
        "Magnitude": 4.7,
        "Longitude": 121.627,
        "Latitude": 23.931
    },
    {
        "Time": "04-04 01:30",
        "Magnitude": 3.2,
        "Longitude": 121.77,
        "Latitude": 24.2267
    },
    {
        "Time": "04-04 01:20",
        "Magnitude": 4.0,
        "Longitude": 121.813,
        "Latitude": 24.0537
    },
    {
        "Time": "04-04 01:18",
        "Magnitude": 4.7,
        "Longitude": 121.769,
        "Latitude": 24.082
    },
    {
        "Time": "04-04 01:12",
        "Magnitude": 3.7,
        "Longitude": 121.761,
        "Latitude": 24.2518
    },
    {
        "Time": "04-04 01:02",
        "Magnitude": 3.8,
        "Longitude": 121.679,
        "Latitude": 24.1808
    },
    {
        "Time": "04-04 00:52",
        "Magnitude": 3.9,
        "Longitude": 121.682,
        "Latitude": 24.136
    },
    {
        "Time": "04-04 00:33",
        "Magnitude": 3.7,
        "Longitude": 121.668,
        "Latitude": 24.003
    },
    {
        "Time": "04-04 00:26",
        "Magnitude": 3.3,
        "Longitude": 121.746,
        "Latitude": 24.2408
    },
    {
        "Time": "04-04 00:18",
        "Magnitude": 3.1,
        "Longitude": 121.68,
        "Latitude": 24.1503
    },
    {
        "Time": "04-04 00:17",
        "Magnitude": 3.1,
        "Longitude": 121.611,
        "Latitude": 24.0885
    },
    {
        "Time": "04-04 00:12",
        "Magnitude": 4.1,
        "Longitude": 121.787,
        "Latitude": 23.7845
    },
    {
        "Time": "04-04 00:07",
        "Magnitude": 3.0,
        "Longitude": 121.685,
        "Latitude": 24.1735
    },
    {
        "Time": "04-04 00:06",
        "Magnitude": 3.8,
        "Longitude": 121.555,
        "Latitude": 23.8428
    },
    {
        "Time": "04-03 23:55",
        "Magnitude": 5.1,
        "Longitude": 121.739,
        "Latitude": 24.2115
    },
    {
        "Time": "04-03 23:54",
        "Magnitude": 4.6,
        "Longitude": 121.674,
        "Latitude": 24.1688
    },
    {
        "Time": "04-03 23:54",
        "Magnitude": 3.5,
        "Longitude": 121.668,
        "Latitude": 24.1893
    },
    {
        "Time": "04-03 23:53",
        "Magnitude": 3.4,
        "Longitude": 121.687,
        "Latitude": 24.1697
    },
    {
        "Time": "04-03 23:49",
        "Magnitude": 3.5,
        "Longitude": 121.619,
        "Latitude": 23.9572
    },
    {
        "Time": "04-03 23:47",
        "Magnitude": 3.7,
        "Longitude": 121.674,
        "Latitude": 24.1747
    },
    {
        "Time": "04-03 23:47",
        "Magnitude": 3.6,
        "Longitude": 121.772,
        "Latitude": 24.041
    },
    {
        "Time": "04-03 23:42",
        "Magnitude": 5.0,
        "Longitude": 121.683,
        "Latitude": 24.1738
    },
    {
        "Time": "04-03 23:39",
        "Magnitude": 5.1,
        "Longitude": 121.688,
        "Latitude": 24.1555
    },
    {
        "Time": "04-03 23:35",
        "Magnitude": 3.8,
        "Longitude": 121.652,
        "Latitude": 23.8242
    },
    {
        "Time": "04-03 23:32",
        "Magnitude": 3.3,
        "Longitude": 121.529,
        "Latitude": 23.716
    },
    {
        "Time": "04-03 23:30",
        "Magnitude": 4.4,
        "Longitude": 121.662,
        "Latitude": 23.9168
    },
    {
        "Time": "04-03 23:27",
        "Magnitude": 3.9,
        "Longitude": 121.678,
        "Latitude": 24.1148
    },
    {
        "Time": "04-03 23:25",
        "Magnitude": 4.4,
        "Longitude": 121.652,
        "Latitude": 24.0168
    },
    {
        "Time": "04-03 23:20",
        "Magnitude": 4.1,
        "Longitude": 121.725,
        "Latitude": 24.1615
    },
    {
        "Time": "04-03 23:09",
        "Magnitude": 3.0,
        "Longitude": 121.715,
        "Latitude": 24.268
    },
    {
        "Time": "04-03 23:06",
        "Magnitude": 3.6,
        "Longitude": 121.687,
        "Latitude": 24.128
    },
    {
        "Time": "04-03 23:01",
        "Magnitude": 4.6,
        "Longitude": 121.69,
        "Latitude": 24.238
    },
    {
        "Time": "04-03 22:55",
        "Magnitude": 3.4,
        "Longitude": 121.723,
        "Latitude": 24.022
    },
    {
        "Time": "04-03 22:49",
        "Magnitude": 4.7,
        "Longitude": 121.806,
        "Latitude": 24.1475
    },
    {
        "Time": "04-03 22:38",
        "Magnitude": 4.5,
        "Longitude": 121.644,
        "Latitude": 24.1823
    },
    {
        "Time": "04-03 22:29",
        "Magnitude": 4.4,
        "Longitude": 121.816,
        "Latitude": 24.1928
    },
    {
        "Time": "04-03 22:29",
        "Magnitude": 4.3,
        "Longitude": 121.691,
        "Latitude": 24.18
    },
    {
        "Time": "04-03 22:17",
        "Magnitude": 4.0,
        "Longitude": 121.767,
        "Latitude": 24.3035
    },
    {
        "Time": "04-03 22:12",
        "Magnitude": 3.3,
        "Longitude": 121.686,
        "Latitude": 24.1633
    },
    {
        "Time": "04-03 22:12",
        "Magnitude": 3.4,
        "Longitude": 121.687,
        "Latitude": 24.1585
    },
    {
        "Time": "04-03 22:03",
        "Magnitude": 3.2,
        "Longitude": 121.512,
        "Latitude": 23.883
    },
    {
        "Time": "04-03 21:57",
        "Magnitude": 3.4,
        "Longitude": 121.561,
        "Latitude": 23.8817
    },
    {
        "Time": "04-03 21:52",
        "Magnitude": 4.1,
        "Longitude": 121.832,
        "Latitude": 24.164
    },
    {
        "Time": "04-03 21:51",
        "Magnitude": 3.3,
        "Longitude": 121.668,
        "Latitude": 24.162
    },
    {
        "Time": "04-03 21:42",
        "Magnitude": 4.1,
        "Longitude": 121.693,
        "Latitude": 24.1118
    },
    {
        "Time": "04-03 21:32",
        "Magnitude": 4.2,
        "Longitude": 121.722,
        "Latitude": 24.0628
    },
    {
        "Time": "04-03 21:24",
        "Magnitude": 4.4,
        "Longitude": 121.764,
        "Latitude": 24.1995
    },
    {
        "Time": "04-03 21:24",
        "Magnitude": 3.9,
        "Longitude": 121.777,
        "Latitude": 24.1972
    },
    {
        "Time": "04-03 21:12",
        "Magnitude": 3.3,
        "Longitude": 121.764,
        "Latitude": 24.0045
    },
    {
        "Time": "04-03 21:00",
        "Magnitude": 3.5,
        "Longitude": 121.833,
        "Latitude": 24.1995
    },
    {
        "Time": "04-03 20:52",
        "Magnitude": 4.0,
        "Longitude": 121.641,
        "Latitude": 23.8562
    },
    {
        "Time": "04-03 20:43",
        "Magnitude": 3.5,
        "Longitude": 121.692,
        "Latitude": 23.9902
    },
    {
        "Time": "04-03 20:35",
        "Magnitude": 3.7,
        "Longitude": 121.509,
        "Latitude": 23.7798
    },
    {
        "Time": "04-03 20:05",
        "Magnitude": 3.6,
        "Longitude": 121.626,
        "Latitude": 24.0307
    },
    {
        "Time": "04-03 20:03",
        "Magnitude": 3.9,
        "Longitude": 121.615,
        "Latitude": 24.0235
    },
    {
        "Time": "04-03 20:02",
        "Magnitude": 4.3,
        "Longitude": 121.635,
        "Latitude": 24.0363
    },
    {
        "Time": "04-03 19:55",
        "Magnitude": 3.3,
        "Longitude": 121.668,
        "Latitude": 24.1505
    },
    {
        "Time": "04-03 19:51",
        "Magnitude": 4.3,
        "Longitude": 121.635,
        "Latitude": 24.0298
    },
    {
        "Time": "04-03 19:46",
        "Magnitude": 3.4,
        "Longitude": 121.751,
        "Latitude": 24.2053
    },
    {
        "Time": "04-03 19:38",
        "Magnitude": 3.6,
        "Longitude": 121.764,
        "Latitude": 24.2967
    },
    {
        "Time": "04-03 19:38",
        "Magnitude": 3.6,
        "Longitude": 121.723,
        "Latitude": 24.0623
    },
    {
        "Time": "04-03 19:24",
        "Magnitude": 3.3,
        "Longitude": 121.787,
        "Latitude": 24.2028
    },
    {
        "Time": "04-03 19:22",
        "Magnitude": 4.2,
        "Longitude": 121.632,
        "Latitude": 23.9038
    },
    {
        "Time": "04-03 19:22",
        "Magnitude": 4.0,
        "Longitude": 121.744,
        "Latitude": 24.2157
    },
    {
        "Time": "04-03 19:10",
        "Magnitude": 3.9,
        "Longitude": 121.548,
        "Latitude": 23.823
    },
    {
        "Time": "04-03 19:06",
        "Magnitude": 3.9,
        "Longitude": 121.626,
        "Latitude": 23.9383
    },
    {
        "Time": "04-03 19:05",
        "Magnitude": 3.4,
        "Longitude": 121.824,
        "Latitude": 24.2893
    },
    {
        "Time": "04-03 19:04",
        "Magnitude": 3.2,
        "Longitude": 121.774,
        "Latitude": 24.1973
    },
    {
        "Time": "04-03 19:03",
        "Magnitude": 3.7,
        "Longitude": 121.823,
        "Latitude": 24.04
    },
    {
        "Time": "04-03 18:58",
        "Magnitude": 3.5,
        "Longitude": 121.58,
        "Latitude": 23.807
    },
    {
        "Time": "04-03 18:56",
        "Magnitude": 4.9,
        "Longitude": 121.681,
        "Latitude": 24.034
    },
    {
        "Time": "04-03 18:43",
        "Magnitude": 3.6,
        "Longitude": 121.628,
        "Latitude": 24.0437
    },
    {
        "Time": "04-03 18:41",
        "Magnitude": 3.8,
        "Longitude": 121.763,
        "Latitude": 24.112
    },
    {
        "Time": "04-03 18:38",
        "Magnitude": 4.6,
        "Longitude": 121.639,
        "Latitude": 24.2017
    },
    {
        "Time": "04-03 18:30",
        "Magnitude": 3.8,
        "Longitude": 121.811,
        "Latitude": 23.7903
    },
    {
        "Time": "04-03 18:28",
        "Magnitude": 3.7,
        "Longitude": 121.629,
        "Latitude": 24.0647
    },
    {
        "Time": "04-03 18:27",
        "Magnitude": 3.5,
        "Longitude": 121.797,
        "Latitude": 24.1362
    },
    {
        "Time": "04-03 18:26",
        "Magnitude": 3.7,
        "Longitude": 121.823,
        "Latitude": 24.1298
    },
    {
        "Time": "04-03 18:24",
        "Magnitude": 3.7,
        "Longitude": 121.599,
        "Latitude": 23.8122
    },
    {
        "Time": "04-03 18:20",
        "Magnitude": 3.6,
        "Longitude": 121.527,
        "Latitude": 23.7877
    },
    {
        "Time": "04-03 18:13",
        "Magnitude": 3.5,
        "Longitude": 121.696,
        "Latitude": 24.1132
    },
    {
        "Time": "04-03 18:11",
        "Magnitude": 3.7,
        "Longitude": 121.681,
        "Latitude": 24.1355
    },
    {
        "Time": "04-03 18:08",
        "Magnitude": 3.8,
        "Longitude": 121.516,
        "Latitude": 23.799
    },
    {
        "Time": "04-03 18:07",
        "Magnitude": 3.9,
        "Longitude": 121.676,
        "Latitude": 24.1633
    },
    {
        "Time": "04-03 18:03",
        "Magnitude": 3.5,
        "Longitude": 121.729,
        "Latitude": 24.2422
    },
    {
        "Time": "04-03 17:58",
        "Magnitude": 3.9,
        "Longitude": 121.688,
        "Latitude": 24.138
    },
    {
        "Time": "04-03 17:53",
        "Magnitude": 4.3,
        "Longitude": 121.682,
        "Latitude": 24.099
    },
    {
        "Time": "04-03 17:53",
        "Magnitude": 4.6,
        "Longitude": 121.674,
        "Latitude": 24.0373
    },
    {
        "Time": "04-03 17:44",
        "Magnitude": 3.8,
        "Longitude": 121.682,
        "Latitude": 24.181
    },
    {
        "Time": "04-03 17:42",
        "Magnitude": 3.3,
        "Longitude": 121.784,
        "Latitude": 24.1943
    },
    {
        "Time": "04-03 17:40",
        "Magnitude": 4.2,
        "Longitude": 121.626,
        "Latitude": 24.0875
    },
    {
        "Time": "04-03 17:38",
        "Magnitude": 3.4,
        "Longitude": 121.689,
        "Latitude": 24.1257
    },
    {
        "Time": "04-03 17:36",
        "Magnitude": 3.5,
        "Longitude": 121.736,
        "Latitude": 24.1927
    },
    {
        "Time": "04-03 17:34",
        "Magnitude": 3.9,
        "Longitude": 121.615,
        "Latitude": 23.7905
    },
    {
        "Time": "04-03 17:31",
        "Magnitude": 3.6,
        "Longitude": 121.714,
        "Latitude": 24.2708
    },
    {
        "Time": "04-03 17:28",
        "Magnitude": 4.1,
        "Longitude": 121.754,
        "Latitude": 24.2147
    },
    {
        "Time": "04-03 17:23",
        "Magnitude": 4.0,
        "Longitude": 121.801,
        "Latitude": 24.2137
    },
    {
        "Time": "04-03 17:22",
        "Magnitude": 4.1,
        "Longitude": 121.539,
        "Latitude": 23.7752
    },
    {
        "Time": "04-03 17:20",
        "Magnitude": 4.4,
        "Longitude": 121.71,
        "Latitude": 23.9815
    },
    {
        "Time": "04-03 17:18",
        "Magnitude": 3.9,
        "Longitude": 121.643,
        "Latitude": 24.1823
    },
    {
        "Time": "04-03 17:16",
        "Magnitude": 3.8,
        "Longitude": 121.584,
        "Latitude": 23.8395
    },
    {
        "Time": "04-03 17:15",
        "Magnitude": 4.4,
        "Longitude": 121.624,
        "Latitude": 23.9552
    },
    {
        "Time": "04-03 17:08",
        "Magnitude": 4.1,
        "Longitude": 121.531,
        "Latitude": 23.7478
    },
    {
        "Time": "04-03 17:08",
        "Magnitude": 4.0,
        "Longitude": 121.649,
        "Latitude": 24.1063
    },
    {
        "Time": "04-03 17:05",
        "Magnitude": 3.5,
        "Longitude": 121.748,
        "Latitude": 24.2473
    },
    {
        "Time": "04-03 16:57",
        "Magnitude": 3.5,
        "Longitude": 121.559,
        "Latitude": 23.9252
    },
    {
        "Time": "04-03 16:56",
        "Magnitude": 4.7,
        "Longitude": 121.631,
        "Latitude": 24.0685
    },
    {
        "Time": "04-03 16:53",
        "Magnitude": 3.4,
        "Longitude": 121.555,
        "Latitude": 23.9125
    },
    {
        "Time": "04-03 16:50",
        "Magnitude": 3.4,
        "Longitude": 121.72,
        "Latitude": 24.2627
    },
    {
        "Time": "04-03 16:44",
        "Magnitude": 3.7,
        "Longitude": 121.72,
        "Latitude": 24.2618
    },
    {
        "Time": "04-03 16:43",
        "Magnitude": 3.7,
        "Longitude": 121.53,
        "Latitude": 23.7733
    },
    {
        "Time": "04-03 16:40",
        "Magnitude": 3.2,
        "Longitude": 121.75,
        "Latitude": 24.2872
    },
    {
        "Time": "04-03 16:38",
        "Magnitude": 4.9,
        "Longitude": 121.573,
        "Latitude": 23.7367
    },
    {
        "Time": "04-03 16:36",
        "Magnitude": 4.1,
        "Longitude": 121.757,
        "Latitude": 24.0962
    },
    {
        "Time": "04-03 16:28",
        "Magnitude": 4.3,
        "Longitude": 121.669,
        "Latitude": 24.126
    },
    {
        "Time": "04-03 16:28",
        "Magnitude": 4.3,
        "Longitude": 121.804,
        "Latitude": 24.2488
    },
    {
        "Time": "04-03 16:26",
        "Magnitude": 3.6,
        "Longitude": 121.858,
        "Latitude": 24.1775
    },
    {
        "Time": "04-03 16:17",
        "Magnitude": 4.7,
        "Longitude": 121.634,
        "Latitude": 24.033
    },
    {
        "Time": "04-03 16:15",
        "Magnitude": 3.7,
        "Longitude": 121.704,
        "Latitude": 24.1605
    },
    {
        "Time": "04-03 16:13",
        "Magnitude": 4.2,
        "Longitude": 121.668,
        "Latitude": 23.9945
    },
    {
        "Time": "04-03 16:11",
        "Magnitude": 3.6,
        "Longitude": 121.724,
        "Latitude": 24.1682
    },
    {
        "Time": "04-03 16:09",
        "Magnitude": 4.5,
        "Longitude": 121.55,
        "Latitude": 23.7698
    },
    {
        "Time": "04-03 15:52",
        "Magnitude": 3.9,
        "Longitude": 121.629,
        "Latitude": 23.9802
    },
    {
        "Time": "04-03 15:51",
        "Magnitude": 3.4,
        "Longitude": 121.759,
        "Latitude": 24.0275
    },
    {
        "Time": "04-03 15:51",
        "Magnitude": 3.3,
        "Longitude": 121.761,
        "Latitude": 24.247
    },
    {
        "Time": "04-03 15:46",
        "Magnitude": 3.5,
        "Longitude": 121.677,
        "Latitude": 24.1672
    },
    {
        "Time": "04-03 15:33",
        "Magnitude": 3.7,
        "Longitude": 121.76,
        "Latitude": 24.2618
    },
    {
        "Time": "04-03 15:31",
        "Magnitude": 4.4,
        "Longitude": 121.753,
        "Latitude": 24.1363
    },
    {
        "Time": "04-03 15:24",
        "Magnitude": 4.5,
        "Longitude": 121.594,
        "Latitude": 23.9892
    },
    {
        "Time": "04-03 15:24",
        "Magnitude": 3.4,
        "Longitude": 121.715,
        "Latitude": 24.1742
    },
    {
        "Time": "04-03 15:16",
        "Magnitude": 4.1,
        "Longitude": 121.551,
        "Latitude": 23.7662
    },
    {
        "Time": "04-03 15:16",
        "Magnitude": 3.9,
        "Longitude": 121.67,
        "Latitude": 24.2382
    },
    {
        "Time": "04-03 15:13",
        "Magnitude": 3.8,
        "Longitude": 121.724,
        "Latitude": 24.2972
    },
    {
        "Time": "04-03 15:11",
        "Magnitude": 3.4,
        "Longitude": 121.563,
        "Latitude": 23.7952
    },
    {
        "Time": "04-03 15:09",
        "Magnitude": 3.4,
        "Longitude": 121.755,
        "Latitude": 24.0078
    },
    {
        "Time": "04-03 15:05",
        "Magnitude": 4.4,
        "Longitude": 121.697,
        "Latitude": 24.2318
    },
    {
        "Time": "04-03 14:55",
        "Magnitude": 3.4,
        "Longitude": 121.875,
        "Latitude": 24.0698
    },
    {
        "Time": "04-03 14:47",
        "Magnitude": 3.7,
        "Longitude": 121.531,
        "Latitude": 23.7507
    },
    {
        "Time": "04-03 14:46",
        "Magnitude": 4.0,
        "Longitude": 121.709,
        "Latitude": 24.1698
    },
    {
        "Time": "04-03 14:44",
        "Magnitude": 4.2,
        "Longitude": 121.74,
        "Latitude": 24.0102
    },
    {
        "Time": "04-03 14:43",
        "Magnitude": 3.9,
        "Longitude": 121.615,
        "Latitude": 23.9637
    },
    {
        "Time": "04-03 14:33",
        "Magnitude": 4.8,
        "Longitude": 121.881,
        "Latitude": 24.2083
    },
    {
        "Time": "04-03 14:32",
        "Magnitude": 4.1,
        "Longitude": 121.592,
        "Latitude": 23.8482
    },
    {
        "Time": "04-03 14:31",
        "Magnitude": 4.7,
        "Longitude": 121.528,
        "Latitude": 23.9098
    },
    {
        "Time": "04-03 14:30",
        "Magnitude": 3.7,
        "Longitude": 121.578,
        "Latitude": 24.0265
    },
    {
        "Time": "04-03 14:28",
        "Magnitude": 4.3,
        "Longitude": 120.284,
        "Latitude": 23.4623
    },
    {
        "Time": "04-03 14:21",
        "Magnitude": 3.6,
        "Longitude": 121.71,
        "Latitude": 24.0388
    },
    {
        "Time": "04-03 14:20",
        "Magnitude": 3.8,
        "Longitude": 121.689,
        "Latitude": 24.0203
    },
    {
        "Time": "04-03 14:19",
        "Magnitude": 4.1,
        "Longitude": 121.833,
        "Latitude": 24.185
    },
    {
        "Time": "04-03 14:14",
        "Magnitude": 3.9,
        "Longitude": 121.672,
        "Latitude": 24.1547
    },
    {
        "Time": "04-03 14:10",
        "Magnitude": 4.6,
        "Longitude": 121.671,
        "Latitude": 24.1542
    },
    {
        "Time": "04-03 14:09",
        "Magnitude": 4.2,
        "Longitude": 121.684,
        "Latitude": 24.1488
    },
    {
        "Time": "04-03 14:06",
        "Magnitude": 3.7,
        "Longitude": 121.777,
        "Latitude": 24.0128
    },
    {
        "Time": "04-03 14:00",
        "Magnitude": 3.7,
        "Longitude": 121.546,
        "Latitude": 23.813
    },
    {
        "Time": "04-03 13:59",
        "Magnitude": 3.2,
        "Longitude": 121.744,
        "Latitude": 24.2403
    },
    {
        "Time": "04-03 13:54",
        "Magnitude": 3.6,
        "Longitude": 121.538,
        "Latitude": 23.8188
    },
    {
        "Time": "04-03 13:50",
        "Magnitude": 3.8,
        "Longitude": 121.676,
        "Latitude": 24.1488
    },
    {
        "Time": "04-03 13:45",
        "Magnitude": 3.4,
        "Longitude": 121.527,
        "Latitude": 23.754
    },
    {
        "Time": "04-03 13:44",
        "Magnitude": 3.1,
        "Longitude": 121.656,
        "Latitude": 24.0067
    },
    {
        "Time": "04-03 13:41",
        "Magnitude": 3.8,
        "Longitude": 121.73,
        "Latitude": 24.2247
    },
    {
        "Time": "04-03 13:38",
        "Magnitude": 4.0,
        "Longitude": 121.564,
        "Latitude": 23.9215
    },
    {
        "Time": "04-03 13:34",
        "Magnitude": 3.5,
        "Longitude": 121.688,
        "Latitude": 24.1723
    },
    {
        "Time": "04-03 13:33",
        "Magnitude": 4.3,
        "Longitude": 121.75,
        "Latitude": 24.203
    },
    {
        "Time": "04-03 13:28",
        "Magnitude": 4.6,
        "Longitude": 121.695,
        "Latitude": 24.1718
    },
    {
        "Time": "04-03 13:23",
        "Magnitude": 4.9,
        "Longitude": 121.69,
        "Latitude": 24.0993
    },
    {
        "Time": "04-03 13:22",
        "Magnitude": 4.0,
        "Longitude": 121.574,
        "Latitude": 23.919
    },
    {
        "Time": "04-03 13:14",
        "Magnitude": 3.4,
        "Longitude": 121.547,
        "Latitude": 23.8257
    },
    {
        "Time": "04-03 13:07",
        "Magnitude": 3.5,
        "Longitude": 121.747,
        "Latitude": 24.2768
    },
    {
        "Time": "04-03 13:00",
        "Magnitude": 3.9,
        "Longitude": 121.658,
        "Latitude": 24.0847
    },
    {
        "Time": "04-03 12:58",
        "Magnitude": 3.9,
        "Longitude": 121.646,
        "Latitude": 24.0952
    },
    {
        "Time": "04-03 12:56",
        "Magnitude": 4.5,
        "Longitude": 121.75,
        "Latitude": 24.2675
    },
    {
        "Time": "04-03 12:49",
        "Magnitude": 3.8,
        "Longitude": 121.694,
        "Latitude": 24.2168
    },
    {
        "Time": "04-03 12:48",
        "Magnitude": 4.1,
        "Longitude": 121.722,
        "Latitude": 24.203
    },
    {
        "Time": "04-03 12:48",
        "Magnitude": 3.9,
        "Longitude": 121.857,
        "Latitude": 23.8262
    },
    {
        "Time": "04-03 12:44",
        "Magnitude": 3.5,
        "Longitude": 121.689,
        "Latitude": 24.165
    },
    {
        "Time": "04-03 12:36",
        "Magnitude": 4.7,
        "Longitude": 121.655,
        "Latitude": 24.0785
    },
    {
        "Time": "04-03 12:34",
        "Magnitude": 5.3,
        "Longitude": 121.661,
        "Latitude": 24.0422
    },
    {
        "Time": "04-03 12:29",
        "Magnitude": 3.9,
        "Longitude": 121.674,
        "Latitude": 24.0282
    },
    {
        "Time": "04-03 12:26",
        "Magnitude": 4.0,
        "Longitude": 121.941,
        "Latitude": 24.1532
    },
    {
        "Time": "04-03 12:21",
        "Magnitude": 4.1,
        "Longitude": 121.681,
        "Latitude": 24.117
    },
    {
        "Time": "04-03 12:18",
        "Magnitude": 3.6,
        "Longitude": 121.816,
        "Latitude": 24.1982
    },
    {
        "Time": "04-03 12:08",
        "Magnitude": 4.7,
        "Longitude": 121.744,
        "Latitude": 23.7807
    },
    {
        "Time": "04-03 12:07",
        "Magnitude": 3.4,
        "Longitude": 121.661,
        "Latitude": 24.0673
    },
    {
        "Time": "04-03 12:06",
        "Magnitude": 3.9,
        "Longitude": 121.767,
        "Latitude": 24.2635
    },
    {
        "Time": "04-03 12:05",
        "Magnitude": 3.7,
        "Longitude": 121.851,
        "Latitude": 24.1793
    },
    {
        "Time": "04-03 12:00",
        "Magnitude": 4.2,
        "Longitude": 121.754,
        "Latitude": 23.8287
    },
    {
        "Time": "04-03 11:57",
        "Magnitude": 5.2,
        "Longitude": 121.593,
        "Latitude": 23.828
    },
    {
        "Time": "04-03 11:53",
        "Magnitude": 3.5,
        "Longitude": 121.555,
        "Latitude": 23.9055
    },
    {
        "Time": "04-03 11:51",
        "Magnitude": 3.3,
        "Longitude": 121.757,
        "Latitude": 24.2552
    },
    {
        "Time": "04-03 11:45",
        "Magnitude": 4.8,
        "Longitude": 121.845,
        "Latitude": 23.7855
    },
    {
        "Time": "04-03 11:43",
        "Magnitude": 3.9,
        "Longitude": 121.653,
        "Latitude": 24.1043
    },
    {
        "Time": "04-03 11:39",
        "Magnitude": 3.6,
        "Longitude": 121.671,
        "Latitude": 24.1715
    },
    {
        "Time": "04-03 11:37",
        "Magnitude": 4.1,
        "Longitude": 121.544,
        "Latitude": 23.9183
    },
    {
        "Time": "04-03 11:34",
        "Magnitude": 3.6,
        "Longitude": 121.698,
        "Latitude": 24.0303
    },
    {
        "Time": "04-03 11:27",
        "Magnitude": 3.6,
        "Longitude": 121.867,
        "Latitude": 24.1282
    },
    {
        "Time": "04-03 11:24",
        "Magnitude": 3.4,
        "Longitude": 121.747,
        "Latitude": 24.0102
    },
    {
        "Time": "04-03 11:22",
        "Magnitude": 4.2,
        "Longitude": 121.682,
        "Latitude": 24.167
    },
    {
        "Time": "04-03 11:20",
        "Magnitude": 4.9,
        "Longitude": 121.665,
        "Latitude": 24.162
    },
    {
        "Time": "04-03 11:14",
        "Magnitude": 4.4,
        "Longitude": 121.911,
        "Latitude": 24.0303
    },
    {
        "Time": "04-03 11:12",
        "Magnitude": 4.6,
        "Longitude": 121.641,
        "Latitude": 23.8742
    },
    {
        "Time": "04-03 11:11",
        "Magnitude": 4.2,
        "Longitude": 121.673,
        "Latitude": 24.1365
    },
    {
        "Time": "04-03 11:01",
        "Magnitude": 4.4,
        "Longitude": 121.777,
        "Latitude": 24.1603
    },
    {
        "Time": "04-03 11:00",
        "Magnitude": 3.8,
        "Longitude": 121.66,
        "Latitude": 24.0742
    },
    {
        "Time": "04-03 10:54",
        "Magnitude": 4.2,
        "Longitude": 121.674,
        "Latitude": 23.9608
    },
    {
        "Time": "04-03 10:53",
        "Magnitude": 3.9,
        "Longitude": 121.656,
        "Latitude": 24.0788
    },
    {
        "Time": "04-03 10:44",
        "Magnitude": 4.0,
        "Longitude": 121.744,
        "Latitude": 24.2732
    },
    {
        "Time": "04-03 10:41",
        "Magnitude": 3.5,
        "Longitude": 121.775,
        "Latitude": 24.2013
    },
    {
        "Time": "04-03 10:39",
        "Magnitude": 4.2,
        "Longitude": 121.65,
        "Latitude": 24.1982
    },
    {
        "Time": "04-03 10:36",
        "Magnitude": 4.1,
        "Longitude": 121.915,
        "Latitude": 24.1918
    },
    {
        "Time": "04-03 10:36",
        "Magnitude": 3.7,
        "Longitude": 121.617,
        "Latitude": 23.8152
    },
    {
        "Time": "04-03 10:35",
        "Magnitude": 4.0,
        "Longitude": 121.627,
        "Latitude": 24.0878
    },
    {
        "Time": "04-03 10:33",
        "Magnitude": 3.8,
        "Longitude": 121.612,
        "Latitude": 23.9782
    },
    {
        "Time": "04-03 10:28",
        "Magnitude": 5.3,
        "Longitude": 121.79,
        "Latitude": 24.2178
    },
    {
        "Time": "04-03 10:23",
        "Magnitude": 4.9,
        "Longitude": 121.666,
        "Latitude": 24.1455
    },
    {
        "Time": "04-03 10:20",
        "Magnitude": 4.5,
        "Longitude": 121.649,
        "Latitude": 23.9198
    },
    {
        "Time": "04-03 10:14",
        "Magnitude": 6.2,
        "Longitude": 121.93,
        "Latitude": 24.145
    },
    {
        "Time": "04-03 10:13",
        "Magnitude": 4.7,
        "Longitude": 121.806,
        "Latitude": 24.229
    },
    {
        "Time": "04-03 09:53",
        "Magnitude": 5.1,
        "Longitude": 121.554,
        "Latitude": 23.8682
    },
    {
        "Time": "04-03 09:49",
        "Magnitude": 5.1,
        "Longitude": 121.789,
        "Latitude": 23.8012
    },
    {
        "Time": "04-03 09:45",
        "Magnitude": 4.2,
        "Longitude": 121.676,
        "Latitude": 24.0992
    },
    {
        "Time": "04-03 09:39",
        "Magnitude": 5.7,
        "Longitude": 121.725,
        "Latitude": 23.8385
    },
    {
        "Time": "04-03 09:30",
        "Magnitude": 3.8,
        "Longitude": 121.676,
        "Latitude": 23.6443
    },
    {
        "Time": "04-03 09:23",
        "Magnitude": 3.8,
        "Longitude": 121.767,
        "Latitude": 24.0052
    },
    {
        "Time": "04-03 09:17",
        "Magnitude": 5.0,
        "Longitude": 121.683,
        "Latitude": 24.0382
    },
    {
        "Time": "04-03 09:16",
        "Magnitude": 4.4,
        "Longitude": 121.9,
        "Latitude": 24.1855
    },
    {
        "Time": "04-03 09:15",
        "Magnitude": 4.4,
        "Longitude": 121.687,
        "Latitude": 24.1333
    },
    {
        "Time": "04-03 09:13",
        "Magnitude": 4.9,
        "Longitude": 121.668,
        "Latitude": 24.0628
    },
    {
        "Time": "04-03 09:11",
        "Magnitude": 4.4,
        "Longitude": 121.67,
        "Latitude": 24.063
    },
    {
        "Time": "04-03 09:09",
        "Magnitude": 5.3,
        "Longitude": 121.657,
        "Latitude": 24.2275
    },
    {
        "Time": "04-03 09:09",
        "Magnitude": 5.4,
        "Longitude": 121.775,
        "Latitude": 24.1095
    },
    {
        "Time": "04-03 09:08",
        "Magnitude": 4.3,
        "Longitude": 121.632,
        "Latitude": 23.9257
    },
    {
        "Time": "04-03 09:07",
        "Magnitude": 4.9,
        "Longitude": 121.708,
        "Latitude": 24.043
    },
    {
        "Time": "04-03 09:06",
        "Magnitude": 4.4,
        "Longitude": 121.647,
        "Latitude": 23.972
    },
    {
        "Time": "04-03 09:02",
        "Magnitude": 3.4,
        "Longitude": 121.496,
        "Latitude": 23.8218
    },
    {
        "Time": "04-03 08:54",
        "Magnitude": 4.7,
        "Longitude": 121.623,
        "Latitude": 23.7967
    },
    {
        "Time": "04-03 08:53",
        "Magnitude": 3.9,
        "Longitude": 121.667,
        "Latitude": 24.1073
    },
    {
        "Time": "04-03 08:50",
        "Magnitude": 5.4,
        "Longitude": 121.569,
        "Latitude": 23.8353
    },
    {
        "Time": "04-03 08:46",
        "Magnitude": 5.4,
        "Longitude": 121.689,
        "Latitude": 24.1898
    },
    {
        "Time": "04-03 08:43",
        "Magnitude": 5.4,
        "Longitude": 121.546,
        "Latitude": 23.9877
    },
    {
        "Time": "04-03 08:41",
        "Magnitude": 4.6,
        "Longitude": 121.613,
        "Latitude": 23.9613
    },
    {
        "Time": "04-03 08:39",
        "Magnitude": 4.5,
        "Longitude": 121.678,
        "Latitude": 24.254
    },
    {
        "Time": "04-03 08:37",
        "Magnitude": 4.7,
        "Longitude": 121.551,
        "Latitude": 23.9863
    },
    {
        "Time": "04-03 08:35",
        "Magnitude": 5.6,
        "Longitude": 121.716,
        "Latitude": 24.2313
    },
    {
        "Time": "04-03 08:30",
        "Magnitude": 4.6,
        "Longitude": 121.865,
        "Latitude": 24.2452
    },
    {
        "Time": "04-03 08:29",
        "Magnitude": 4.0,
        "Longitude": 121.723,
        "Latitude": 24.1413
    },
    {
        "Time": "04-03 08:27",
        "Magnitude": 4.9,
        "Longitude": 121.571,
        "Latitude": 23.8257
    },
    {
        "Time": "04-03 08:25",
        "Magnitude": 4.6,
        "Longitude": 121.606,
        "Latitude": 23.7955
    },
    {
        "Time": "04-03 08:23",
        "Magnitude": 4.4,
        "Longitude": 121.651,
        "Latitude": 23.9642
    },
    {
        "Time": "04-03 08:19",
        "Magnitude": 4.1,
        "Longitude": 121.611,
        "Latitude": 23.998
    },
    {
        "Time": "04-03 08:18",
        "Magnitude": 4.5,
        "Longitude": 121.579,
        "Latitude": 23.9255
    },
    {
        "Time": "04-03 08:17",
        "Magnitude": 5.4,
        "Longitude": 121.724,
        "Latitude": 24.0285
    },
    {
        "Time": "04-03 08:11",
        "Magnitude": 6.5,
        "Longitude": 121.659,
        "Latitude": 24.1003
    },
    {
        "Time": "04-03 08:07",
        "Magnitude": 4.3,
        "Longitude": 121.573,
        "Latitude": 23.8262
    },
    {
        "Time": "04-03 08:04",
        "Magnitude": 4.7,
        "Longitude": 121.685,
        "Latitude": 24.163
    },
    {
        "Time": "04-03 08:03",
        "Magnitude": 4.8,
        "Longitude": 121.653,
        "Latitude": 23.9513
    },
    {
        "Time": "04-03 08:02",
        "Magnitude": 5.0,
        "Longitude": 121.659,
        "Latitude": 24.1727
    },
    {
        "Time": "04-03 08:01",
        "Magnitude": 5.0,
        "Longitude": 121.601,
        "Latitude": 23.992
    },
    {
        "Time": "04-03 08:00",
        "Magnitude": 5.3,
        "Longitude": 121.67,
        "Latitude": 23.8712
    },
    {
        "Time": "04-03 07:58",
        "Magnitude": 7.2,
        "Longitude": 121.665,
        "Latitude": 23.769
    },
    {
        "Time": "04-03 03:33",
        "Magnitude": 3.5,
        "Longitude": 120.214,
        "Latitude": 23.3615
    },
    {
        "Time": "04-03 03:26",
        "Magnitude": 4.8,
        "Longitude": 120.191,
        "Latitude": 23.3768
    },
    {
        "Time": "04-01 15:01",
        "Magnitude": 3.2,
        "Longitude": 120.203,
        "Latitude": 23.3595
    },
    {
        "Time": "04-01 14:57",
        "Magnitude": 3.1,
        "Longitude": 120.215,
        "Latitude": 23.3607
    },
    {
        "Time": "04-01 14:54",
        "Magnitude": 3.2,
        "Longitude": 120.228,
        "Latitude": 23.3637
    },
    {
        "Time": "04-01 14:51",
        "Magnitude": 4.1,
        "Longitude": 120.21,
        "Latitude": 23.3655
    }
]
""";
}
