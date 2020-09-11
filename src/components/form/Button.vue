<template>
  <button class="btn" 
    :class="btnType=='submit' ? 'primaryActionBtn' : 'primaryActionBtn'"
    :type="btnType"
    @click="btnTapped"
    >{{btnTxt}}</button>
</template>


<script>
export default {
  name: "Button",
  props: {
    btnType: { type: String, default: 'button' },
    btnTxt : { type: String, required: true }
  },
  data () {
    return { }
  },
  methods: {
    btnTapped: function () {
      if (this.btnType == 'submit') {
        this.$parent.submitButtonTapped()
      }
    }
  }
}
</script>


<style lang="scss" scoped>
@import '../../styles/variables.scss';

button {
  border: 1px solid $SecondButtonColor;
  border-radius: 4px;
  padding: 4px 12px;
  box-shadow: 2px 2px 2px rgba(0,0,0, 0.2);

  &.primaryActionBtn {
    background-color: $PrimaryButtonColor;
    border-color: $PrimaryButtonColor;
    color: #eee;

    &:active {
      // $effect: color.change($PrimaryButtonColor, $lightness: -5%);
      background-color: darken($PrimaryButtonColor, 5%);
      border-color: darken($PrimaryButtonColor, 5%);
    }
  }


  &.disabled, &:disabled {
    background-color: $DisabledButtonColor;
    border-color: $DisabledButtonColor;
  }
}
</style>