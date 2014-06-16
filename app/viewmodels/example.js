(function() {
  define(function(require) {
    var ko, kom;
    ko = require('knockout');
    kom = require('knockout-mapping/knockout.mapping');
    ko.mapping = kom;
    return {
      activate: function() {
        var buildIpData;
        buildIpData = function(data) {
          this.displayName = "Example ip api";
          this.description = "This is your ip information";
          this.ip = ko.mapping.fromJS(data);
          return console.log("IP : " + this.ip);
        };
        return $.ajax({
          async: true,
          url: 'http://ip-api.com/json',
          type: 'GET',
          dataType: 'json'
        }).done(function(data) {
          return buildIpData(data);
        }).fail(function(msg) {
          return console.log("Error: Could not load data.");
        });
      }
    };
  });

}).call(this);

//# sourceMappingURL=example.js.map
