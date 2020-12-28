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
          v-bind:href="items.link"
          >
            <template v-slot:label="{ item }">
              <a :href="item.link">
                <span style="font-color:white; font-weight: bold">{{ item.name }}</span>
              </a>
            </template>
          </v-treeview>
        </v-col>
      </v-row>
    </div>
    <OseroApp  />
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
    scrollY:null,
    height:0,
    scroll:false,
    items: [
      {
        id: 1,
        name: 'Applications : 複数作成中',
        children: [
          { id: 2, name: 'オンライン対戦　3Dオセロ' ,link:'https://play.google.com/store/apps/details?id=com.funnysoft.test'},
          { id: 3, name: '料理サポートWebアプリ' },
          { id: 4, name: 'more' },
        ],
      },
      {
        id: 5,
        name: 'Portfolio : リニューアル中',
      },
      {
        id: 6,
        name: 'Blog : 開設準備中',
        children: [
          { id: 7, name: 'VPN設定(予定)'},
          { id: 8, name: 'WEBサーバ構築(予定)'},
          { id: 9, name: 'more'},
        ],
      },
      {
        id: 10,
        name: 'SNS',
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
  befereMount(){
    window.addEventListener('scroll', this.handleScroll);
  },
  created(){
    this.height = window.innerHeight
  },
  methods: {
    handleScroll() {
      this.scrollY = window.scrollY;
      if(this.scrollY === 0 && !this.scroll){
        window.scrollTo(0,789)
        this.scroll = true
        console.log("a")
      }
    }
  }

}
</script>
<style scoped>
a{
  text-decoration: none;
}
a:link {
  color:#FFF;
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
