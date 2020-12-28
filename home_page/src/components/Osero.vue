<template>
  <!-- <div class="sample-box">
    <v-img
      :height="this.height"
      class="opacity_fadein"
      src="../assets/osero.png"
      style="opacity:0.8"
    >
    </v-img>
    <div class="test">
      <v-btn
        height="200px"
        width="250px">
        Play Now
      </v-btn>
    </div>
  </div> -->

  <v-carousel :show-arrows="false" continuous cycle hide-delimiters :height="this.height">
     <v-menu
      v-model="showMenu"
      absolute
      offset-y
    >
    <!-- v-bind:href="item.link" -->
    <template v-slot:activator="{ on, attrs }">
    <v-carousel-item
      v-for="(item,i) in items"
      :key="i"
      :src="item.src"
      v-bind="attrs"
      v-on="on"
    ></v-carousel-item>
    </template>
    <v-list><v-list-item-group
        v-model="selectedItem"
        color="primary"
      >
        <v-list-item
          v-for="(item, index) in items2"
          :key="index"
          v-bind:href="item.link"
        >
          <v-list-item-title>{{ item.title }}</v-list-item-title>
        </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-menu>
  </v-carousel>
</template>
<script>
export default {
  data:()=>({
    scrollY:0,
    height:0,
    showMenu: false,
    selectedItem: null,
      items2: [
        {
          title:'Play Now(Android)',
          link: 'https://play.google.com/store/apps/details?id=com.funnysoft.test'
        },
        {
          title: 'Play Now(Web)',
          link: ''
        },
      ],
     items: [
          {
            src: require("../../public/osero/osero.png")
          },
          {
            src: require("../../public/osero/osero_room.png"),
          },
        ],
  }),
  mounted() {
    this.height = window.innerHeight
  },
  created(){
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
.samplebox{
  position: relative;
}
.test{
  position: absolute;
  top: 85%;
  left: 80%;
}
</style>
