import Vue from 'vue';

document.addEventListener("DOMContentLoaded", function() {
  new Vue({
    el: '#more',
    data: {
      hoverFlag: false,
    },
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