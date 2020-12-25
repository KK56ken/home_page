<template>
  <v-container>
    <Header />
    <v-row>
      <v-col cols="6">
        <v-img
          class="fadein"
          src="../assets/black_name_rogo.png"
        >
        </v-img>
      </v-col>
      <v-col cols="6">
        <v-treeview
        class="mt-6 pa-2 slidefadeIn"
        dense
        rounded
        hoverable
        activatable
        off-icon
        :items="items"
        ></v-treeview>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import Header from '../components/Header';
export default {
  data:()=>({
    scrollY:0,
    items: [
        {
          id: 1,
          name: 'Applications :',
          children: [
            { id: 2, name: 'オンライン対戦　3Dオセロ' },
            { id: 3, name: 'Chrome : app' },
            { id: 4, name: 'more' },
          ],
        },
        {
          id: 5,
          name: 'Portfolio',
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
  components: {
    Header,
  },
  mounted() {
    window.addEventListener('scroll', this.handleScroll);
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
