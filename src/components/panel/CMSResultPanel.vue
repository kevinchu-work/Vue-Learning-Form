<template>
  <div v-if="panelMode === 'searching'" @click.capture="captureClicks" class="filledPanel">
    <CircleSpinner />
  </div>
  <div v-else-if="panelMode === 'content'" class="contentPanel">
    <table>
      <tr> <th>Order #</th> <th>Type</th> <th>Description</th> <th class="tr">Quantity</th> <th>Status</th> <th>Stage</th> </tr>
      <tr>
        <td>24132</td>
        <td>Rings</td>
        <td>18K Gold, 3 Diamond</td>
        <td class="tr">25</td>
        <td>Pending Materials</td>
        <td>In Progress</td>
      </tr>
      <tr>
        <td>8256456</td>
        <td>Bracelets</td>
        <td>Sterling Silver, 5.75-6.75 long</td>
        <td class="tr">80</td>
        <td>Rubber Mold</td>
        <td>In Progress</td>
      </tr>
    </table>

    <ReportChart></ReportChart>
  </div>
</template>


<script>
import ReportChart from '../reports/ReportChart'
import {Circle as CircleSpinner} from 'vue-loading-spinner'

export default {
  
  components: {
    CircleSpinner,
    ReportChart,
  },
  data () {
    return {
      "panelMode": "initial",
      "searchResultData": []
    }
  },
  methods: {

    // Communication method for App.vue, switch display mode
    togglePanelMode(mode, data = null) {
      switch (mode) { 

        case "searching":
          this.panelMode = "searching"
          break;

        case "content":
          this.panelMode = "content"
          this.searchResultData = data
          break;

        case "initial":
        default:
      }
    },

    captureClicks() {
      console.log("Click Captured");
    }
  }
}
</script>


<style lang="scss" scrope>
.contentPanel {
  display: flex;
  align-items: flex-start;
  justify-content: flex-start;
  flex-direction: column;
  // flex-direction: row;
  // flex-wrap: wrap;
  flex: 1 0 auto;

  overflow-x: auto;

  margin-top: 30px;
}

.filledPanel {
  display: flex;
  align-items: center;
  justify-content: center;
  flex: 0 1 100%;

  background-color: rgba(0,0,0, 0.1);

  z-index: 1050;

  margin-top: 30px;
}
</style>