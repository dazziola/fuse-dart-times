var Observable = require('FuseJS/Observable');
var marknote = require("Marknote");

var col1 ="#644749";
var col2 ="#b1695a";

var	tabs = [
	{
    title: "Southbound",
    bgColour: "#e4e4e4",
    textColour: "#8ba892",
    ypos: 0.1667
  },
  {
    title: "Northbound",
    bgColour: "#8ba892",
    textColour: "#e4e4e4",
    ypos: 0
  }
];

var returnedInfo = Observable();

fetch('http://api.irishrail.ie/realtime/realtime.asmx/getTrainMovementsXML?TrainId=e109&TrainDate=21%20dec%202011')
  .then(function (response) {
    response.text().then(function(text) {

        console.log("Parsing XML");

        var parser = new marknote.Parser();
        var doc = parser.parse(text);

        var root = doc.getRootElement();
        var trains = root.getChildElements('objTrainMovements');

        for(var i = 0; i < trains.length; i++) {
          console.log("in here");
          var origin = trains[i].getChildElements('TrainOrigin');
          console.log(origin,"-----------------------------------------------");

        }

      });
  }).catch(function(err) {
    console.log(err.toString());
  });

module.exports = {
  tabs: tabs,
  info: returnedInfo
};
