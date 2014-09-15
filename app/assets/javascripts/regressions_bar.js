var ready = function() {
  var passes = [],
      fails  = [],
      hangs  = [],
      not_tests  = [];
  $("tr").each(function () {
    passes.unshift(parseInt($("#pass", this).text(), 10));
    fails.unshift(parseInt($("#fail", this).text(), 10));
    hangs.unshift(parseInt($("#hang", this).text(), 10));
    not_tests.unshift(parseInt($("#not_test", this).text(), 10));
  });

  var r = Raphael("holder");
  var fin = function () {
    var y = [], res = [];
    for (var i = this.bars.length; i--;) {
      y.push(this.bars[i].y);
      res.push(this.bars[i].value || "0");
    }
    this.flag = r.popup(this.bars[0].x, Math.min.apply(Math, y), res.join(", ")).insertBefore(this);
  }

  var fout = function () {
    this.flag.animate({opacity: 0}, 300, function () {this.remove();});
  };

  r.barchart(20, 50, 440, 290, [not_tests, hangs, fails, passes], {stacked: true, type: "square", colors: ['blue', 'yellow', 'red', 'green']}). hoverColumn(fin, fout);

  r.circle(30, 30, 5).attr({fill:'green'});
  r.text(40, 30, 'pass').attr({'text-anchor': 'start', 'font-size': 12});
  r.circle(90, 30, 5).attr({fill:'red'});
  r.text(100, 30, 'fail').attr({'text-anchor': 'start', 'font-size': 12});
  r.circle(150, 30, 5).attr({fill:'yellow'});
  r.text(160, 30, 'hang').attr({'text-anchor': 'start', 'font-size': 12});
  r.circle(210, 30, 5).attr({fill:'blue'});
  r.text(220, 30, 'not test').attr({'text-anchor': 'start', 'font-size': 12});
}

$(document).ready(ready);
$(document).on('page:load', ready);
