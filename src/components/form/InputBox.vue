<template>
  <div class="inputGrp" :class="{alignInCol: !alignInRow}">
    <label v-if="txtLbl" :for="modelID">{{txtLbl}}</label>
    <input :id="modelID" :class="{}" />
  </div>
</template>

<script>
import { v4 as uuidv4 } from 'uuid';

export default {
  name: "InputBox",
  props: {
    inputType     : { type: String, required: false,  default: 'text' },
    modelID       : { type: String, default: uuidv4() },
    txtLbl        : { type: String, required: false,  default: null },
    placeholderTxt: { type: String, required: false },
    alignInRow    : { type: Boolean, default: true }
  }
}
</script>


<style lang="scss" scoped>
.inputGrp {
  width          : 100%;
  display        : flex;
  align-items    : center;
  justify-content: flex-start;

  &.alignInCol { 
    flex-direction: column;
    align-items: flex-start;
  }

  label { 
    min-width: 120px;
  }

  input {
    flex-grow: 1;
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 4px 5px;
  }
}
</style>