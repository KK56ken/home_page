<template>
  <div class="Home">
    <!-- class="pt-6" -->
    <div class="pt-6" style="height:789px">
      <v-row>
        <Header />
        <v-col cols="6">
          <v-img
            class="pa-6 fadein"
            src="../assets/black_name_rogo.png"
          >
          </v-img>
        </v-col>
        <v-col cols="6" >
          <v-treeview
          class="pa-4 mt-6 slidefadeIn"
          dense
          rounded
          hoverable
          activatable
          off-icon
          :items="items"
          ></v-treeview>
        </v-col>
      </v-row>
    </div>
    <OseroApp />
    <CookApp />
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
import OseroApp from '../components/Osero.vue';
import CookApp from '../components/Cook.vue'

export default {
  name: "Home",
  components: {
    Header,
    OseroApp,
    CookApp
  },
  data:()=>({
    scrollY:0,
    height:0,
    items: [
      {
        id: 1,
        name: 'Applications :',
        children: [
          { id: 2, name: 'オンライン対戦　3Dオセロ' },
          { id: 3, name: '料理サポートWebアプリ' },
          { id: 4, name: 'more' },
        ],
      },
      {
        id: 5,
        name: 'Portfolio　リニューアル中',
      },
      {
        id: 6,
        name: 'Blog :',
        children: [
          { id: 7, name: 'VPN設定' },
          { id: 8, name: 'WEBサーバ設定' },
          { id: 9, name: 'more' },
        ],
      },
      {
        id: 10,
        name: 'SNS :',
        children: [
          { id: 11, name: 'Git Hub : KK56ken' },
          { id: 12, name: 'Twitter : kkensuke_suzuki' },
        ],
      },
    ],
  }),
  mounted() {
    window.addEventListener('scroll', this.handleScroll);
  },
  created() {
    this.height = window.innerHeight
  },
  methods: {
    handleScroll() {
      this.scrollY = window.scrollY;
    }
  }

}
</script>
<style scoped>
a{
  text-decoration: none;
}
@keyframes fadeIn{
    0% {
        opacity:0;
    }
    100% {
        opacity:1;
    }
}
@keyframes slidefadeIn{
    0% {
      transform: translateX(300px);
    }
    100% {
      transform: translateX(0px);
    }
}
.fadein{
  animation:fadeIn 10s;
  /* animation-iteration-count:infinite; */
}
.slidefadeIn{
  animation:slidefadeIn 5s,fadeIn 10s;
}
</style>
