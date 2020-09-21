<template>
  <form @submit.prevent :id="formID" :class="{inRow: alignInRow}">

    <InputBox v-if="searchMode=='B'" txtLbl="Mode B" modelID="modeA" v-bind:alignInRow=!alignInRow></InputBox>
    <InputBox txtLbl="Product Name" modelID="name" v-bind:alignInRow=!alignInRow></InputBox>
    <InputBox txtLbl="Item Code" modelID="code" v-bind:alignInRow=!alignInRow></InputBox>
    <InputBox v-if="searchMode=='A'" txtLbl="Mode A" modelID="modeA" v-bind:alignInRow=!alignInRow></InputBox>

    <div class="actionSection">
      <div>
        <toggle-button @change="toggleSearchMode" :labels="{checked: 'B', unchecked: 'A'}" />
      </div>
      <div>
        <Button btnTxt="Submit" btnType="submit" />
      </div>
    </div>
  </form>
</template>


<script>
import InputBox from './InputBox'
import Button from './Button'
// import ToggleButton from 'vue-js-toggle-button'
import { v4 as uuidv4 } from 'uuid';

export default {
  props: {
    formID: { type: String, required: false, default: uuidv4() }
  },
  data () {
    return {
      alignInRow: !true,
      searchMode: 'A',
    }
  },
  components: {
    InputBox,
    Button,
    // ToggleButton,
  },
  methods: {
    submitButtonTapped: function () {
      console.log('Form['+this.formID+'] submit button clicked')
    },
    toggleSearchMode: function () {
      this.searchMode = this.searchMode == 'A' ? 'B' : 'A'
    },
  }
}
</script>


<style lang="scss" scoped>
form {
  display        : flex;
  flex-direction : column;
  align-items    : stretch;
  justify-content: flex-start;
  // flex-wrap: nowrap;

  &.inRow { 
    align-items: flex-start;
    flex-direction: row; 
    flex-wrap: wrap; 

    .inputGrp {
      flex: 0 1 30%;

      & + .inputGrp {
        margin-top: 0;
        margin-left: 15px;
      }
    }
  }

  .inputGrp {
    & + .inputGrp {
      margin-top: 10px;
    }
  }

}

.actionSection {
  display: flex;
  flex: 1 1 100%;
  justify-content: space-between;

  border-top: 1px solid #ddd;
  margin-top: 20px;
  padding-top: 10px;
}
</style>