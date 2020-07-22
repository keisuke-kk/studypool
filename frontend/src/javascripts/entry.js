import Vue from 'vue';

document.addEventListener("DOMContentLoaded", function() {
  new Vue({
    el: '#array',
    methods: {
      mouseOverAction() {
        this.hoverFlag = true
      },
      mouseLemoveAction() {
        this.hoverFlag = false
      }
    }
  });
});