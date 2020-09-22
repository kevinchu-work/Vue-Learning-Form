<template>
  <div class="chartWrapper">
    <VueApexCharts type="bar" height="350" :options="chartOptions" :series="series"></VueApexCharts>
  </div>
</template>

<script>
import VueApexCharts from 'vue-apexcharts'

export default {
  name: "ReportChart",
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
          background: '#f9f9f9',
          stacked: true,
          toolbar: { show: false },
          zoom: { enabled: true },
        },
        responsive: [{
          breakpoint: 480,
          // options: {
            // legend: {
            //   position: 'bottom',
            //   offsetX: -10,
            //   offsetY: 0
            // }
          // }
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
          // position: 'bottom',
          // offsetY: 40
          offsetX: -50,
          offsetY: 0
        },
        // fill: {
        //   opacity: 1
        // }
      },

    }
  },
}
</script>


<style lang="scss" scoped>
.chartWrapper {
  margin-top: 25px;
  padding: 5px 10px;
  background-color: #f7f7f7;
  border-radius: 6px;

  box-shadow: 3px 3px 2px rgba(0,0,0, 0.2);
}
</style>