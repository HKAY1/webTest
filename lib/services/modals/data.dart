class Data {
  String name;
  int contactnumber;
  int nolicense;
  String status;
  String ismultidevice;
  String effectivedate;

  Data({
    required this.name,
    required this.contactnumber,
    required this.effectivedate,
    required this.ismultidevice,
    required this.nolicense,
    required this.status,
  });
}

List<Data> myData = [
  Data(
      name: "Practically license",
      contactnumber: 98486877221,
      effectivedate: "28-01-2023 03:01 PM UTC",
      ismultidevice: "Y",
      nolicense: 100,
      status: "Active"),
  Data(
      name: "Epson",
      contactnumber: 98486877221,
      effectivedate: "28-01-2023 03:01 PM UTC",
      ismultidevice: "N",
      nolicense: 120,
      status: "Active"),
  Data(
      name: "Huawei",
      contactnumber: 98486877221,
      effectivedate: "28-01-2023 03:01 PM UTC",
      ismultidevice: "Y",
      nolicense: 3,
      status: "Active"),
  Data(
      name: "Dymo",
      contactnumber: 98486877221,
      effectivedate: "28-01-2023 03:01 PM UTC",
      ismultidevice: "N",
      nolicense: 40,
      status: "Active"),
  Data(
      name: "Panasonic",
      contactnumber: 98486877221,
      effectivedate: "28-01-2023 03:01 PM UTC",
      ismultidevice: "Y",
      nolicense: 25,
      status: "Inactive"),
  Data(
      name: "Global board",
      contactnumber: 98486877221,
      effectivedate: "28-01-2023 03:01 PM UTC",
      ismultidevice: "N",
      nolicense: 96,
      status: "Inactive"),
  Data(
      name: "Konica minolta",
      contactnumber: 98486877221,
      effectivedate: "28-01-2023 03:01 PM UTC",
      ismultidevice: "Y",
      nolicense: 83,
      status: "Inactive"),
  Data(
      name: "Canon",
      contactnumber: 98486877221,
      effectivedate: "28-01-2023 03:01 PM UTC",
      ismultidevice: "N",
      nolicense: 53,
      status: "Inactive")
];
