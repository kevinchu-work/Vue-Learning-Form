<template>
  <div id="app">
    <SearchForm ref="form" />
    <BodyPanel ref="panel" />
  </div>
</template>

<script>
import SearchForm  from './components/form/SearchForm'
import BodyPanel from './components/panel/CMSResultPanel'

export default {
  name: 'App',
  components: {
    SearchForm,
    BodyPanel
  },
  // data: {
  //   return () {
  //     panelMode: "initial"  // "initial", "searching", "content"
  //   }
  // },
  methods: {
    performSearch: function (searchCondition) {
      console.log("Request & wait for search result\n" + searchCondition)

      // perform search
      this.$refs.panel.togglePanelMode("searching");

      // pretend wait for result
      setTimeout(() => {
          this.$refs.panel.togglePanelMode("content", []);
        }, Math.floor(Math.random() * 3000)
      );

    }
  }
}
</script>

<style lang="scss">
@import './styles/reset.scss'
</style>
