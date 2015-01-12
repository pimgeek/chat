(function() {
  jQuery(document).on('ready page:load', function() {
    var yaml;
    yaml = jQuery('.panel.chatbox').data('yaml');
    return jQuery.get(yaml, function(res) {
      var story_data;
      story_data = jsyaml.load(res);
      return window.game = new Game(story_data);
    });
  });

  if (navigator.userAgent.match(/iPhone|iPad|iPod/i)) {
    jQuery(document).on('touchend', function(evt) {
      return jQuery(this).trigger('click');
    });
  }

}).call(this);

//# sourceMappingURL=../maps/ui.js.map