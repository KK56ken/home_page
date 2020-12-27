<template>
    <v-img
      :height="this.height"
      class="opacity_fadein"
      src="../assets/osero.png"
      style="opacity:0.8"
    >
    </v-img>
</template>
<script>
export default {
  data:()=>({
    scrollY:0,
    height:0,
  }),
  mounted() {
    this.height = window.innerHeight
  }
}

</script>
<style>
@keyframes op_fadeIn{
    0% {
        opacity:0;
    }
    100% {
        opacity:0.8;
    }
}
.opacity_fadein{
  animation:op_fadeIn 10s;
  /* animation-iteration-count:infinite; */
}
</style>
