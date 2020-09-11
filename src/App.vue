<template>
  <div id="app">
    <!-- <InputBox txtLbl="Name" modelID="name"></InputBox> -->
    <SearchForm />
  </div>
</template>

<script>
import SearchForm from './components/form/SearchForm'

export default {
  name: 'App',
  components: {
    SearchForm
  }
}
</script>

<style>
@import './styles/reset.scss'
</style>
