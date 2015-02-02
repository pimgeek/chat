(function() {
  var NPC;

  window.NPC = NPC = (function() {
    function NPC(data) {
      this.id = data.id;
      this.name = data.name;
      this.avatar = data.avatar;
      this.direction = data.direction;
    }

    return NPC;

  })();

}).call(this);

//# sourceMappingURL=../../maps/game/npc.js.map