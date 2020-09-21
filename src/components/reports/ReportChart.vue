<template>
  <div class="chartWrapper">
    <VueApexCharts type="bar" height="350" :options="chartOptions" :series="series"></VueApexCharts>
  </div>
</template>

<script>
import VueApexCharts from 'vue-apexcharts'

export default {
  components: {
    VueApexCharts,
  },
  data () {
    return {

      series: [{
        name: 'Necklaces',
        data: [44, 55, 41, 67, 22, 43]
      }, {
        name: 'Rings',
        data: [13, 23, 20, 8, 13, 27]
      }, {
        name: 'Bracelets',
        data: [11, 17, 15, 15, 21, 14]
      }, {
        name: 'Earrings',
        data: [21, 7, 25, 13, 22, 8]
      }],

      chartOptions: {
        chart: {
          type: 'bar',
          height: 350,
          stacked: true,
          toolbar: { show: true },
          zoom: { enabled: true }
        },
        responsive: [{
          breakpoint: 480,
          options: {
            legend: {
              position: 'bottom',
              offsetX: -10,
              offsetY: 0
            }
          }
        }],
        plotOptions: {
          bar: {
            horizontal: false,
          },
        },
        xaxis: {
          type: 'category',
          categories: [ 'Week 11', 'Week 12', 'Week 13', 'Week 14', 'Week 15', 'Week 16' ],
        },
        legend: {
          position: 'right',
          offsetY: 40
        },
        fill: {
          opacity: 1
        }
      },

    }
  },
}
</script>


<style lang="scss" scoped>
.chartWrapper {
  margin-top: 25px;
  padding: 10px 15px;
  background-color: #f7f7f7;
  border-radius: 6px;
}
</style>