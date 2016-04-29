console.log(rubdata);

$(document).ready(function () {
  var app = {
    $gridMain: $('#grid-selector'),
    blocks: [],

    initialize: function(){

      this.$gridMain.css('background-color', '#369');

      TweenMax.set(this.$gridMain, {
        width: 600,
        height: 600,
        backgroundColor: "#666"
      })

    },

    drawGrid: function () {
      for(var i = 0; i < rubdata.height; i++){
        for (var j = 0; j < rubdata.width; j++){
          var $obj = $('<div class="grid-block"></div>');
          this.$gridMain.append($obj);
          TweenMax.set($obj,{
            position: "absolute",
            width: 60,
            height: 60,
            x: j * 60,
            y: i * 60,
            backgroundColor: "red",
            transformOrigin: "50% 50%"
          });

          this.blocks.push({
            i: i,
            j: j,
            $dom: $obj
          })
        }
      }
    },

    animate: function () {
      for (var i = 0; i < this.blocks.length; i++) {
        TweenMax.from(this.blocks[i].$dom, 0.1, {
          scaleX: 0,
          delay: i * 0.05
        });
      }
    }
  };

  app.initialize();
  app.drawGrid()
  //app.animate();
});