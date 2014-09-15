var ready = function(){
  var values = [];
  values.push(parseInt($("#pass", this).text(), 10));
  values.push(parseInt($("#fail", this).text(), 10));
  values.push(parseInt($("#hang", this).text(), 10));
  values.push(parseInt($("#not_test", this).text(), 10));
  var r = Raphael("holder"),
  pie = r.piechart(220, 180, 120, values, { legend: ["pass", "fail", "hang", "not test"] });
  pie.hover(function () {
    this.sector.stop();
    this.sector.scale(1.1, 1.1, this.cx, this.cy);

    if (this.label) {
      this.label[0].stop();
      this.label[0].attr({ r: 7.5 });
      this.label[1].attr({ "font-weight": 800 });
    }
  }, function () {
    this.sector.animate({ transform: 's1 1 ' + this.cx + ' ' + this.cy }, 500, "bounce");
    if (this.label) {
      this.label[0].animate({ r: 5 }, 500, "bounce");
      this.label[1].attr({ "font-weight": 400 });
    }
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
