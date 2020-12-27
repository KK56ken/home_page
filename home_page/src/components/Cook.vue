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

  <v-carousel :show-arrows="false" cycle hide-delimiters :height="this.height">
     <v-menu
      v-model="showMenu"
      absolute
      offset-y
      style="max-width: 600px"
    >
    <!-- v-bind:href="item.link" -->
    <template v-slot:activator="{ on, attrs }">
    <v-carousel-item
      v-for="(item,i) in items"
      :key="i"
      :src="item.src"
      v-bind="attrs"
      v-on="on"
      reverse-transition="fade-transition"
      transition="fade-transition"
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
          title:'Play Now(Web)',
          link: ''
        },
        {
          title: 'Github',
          link: 'https://github.com/KK56ken/What_in_Your_Fridge-'
        },
      ],
     items: [
          {
            src: require("../../public/cook/register.png")
          },
        //   {
        //     src: require("../../public/cook/login.png")
        //   },
          {
            src: require("../../public/cook/home.png")
          },
          {
            src: require("../../public/cook/search.png")
          },
          {
            src: require("../../public/cook/viewer.png")
          },
          {
            src: require("../../public/cook/favorit.png")
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
