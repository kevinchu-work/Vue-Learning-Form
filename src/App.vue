<template>
  <div id="app">
    <!-- <InputBox txtLbl="Name" modelID="name"></InputBox> -->
    <SearchForm />
    <ReportChart />
  </div>
</template>

<script>
import SearchForm  from './components/form/SearchForm'
import ReportChart from './components/reports/ReportChart'

export default {
  components: {
    SearchForm,
    ReportChart
  }
}
</script>

<style>
@import './styles/reset.scss'
</style>
