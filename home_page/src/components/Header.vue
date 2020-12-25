<template>
<v-row>
  <v-col class="example" cols="3"  v-for="(item,i) in blog_items" :key="i">
  <a href="/">
    <v-card
    outlined
    max-width="344"
    >
    <v-list-item three-line>
      <v-list-item-content>
        <div class="overline ">
          {{item.tag}}
        </div>
        <v-list-item-title class="headline ">
          {{item.title}}
        </v-list-item-title>
        <v-list-item-subtitle>{{item.text}}</v-list-item-subtitle>
      </v-list-item-content>

      <v-list-item-avatar
        tile
        size="80"
        color="grey"
      ></v-list-item-avatar>
    </v-list-item>

    </v-card>
  </a>
  </v-col>
</v-row>
</template>
<script>
export default {
  data: () => ({
    blog_items:[
      {
        tag:"インフラ",
        title:"VPN設定",
        text:"VPNって聞いたことあるけど実際に実装したことないなーと思ったので今回は",
      },
      {
        tag:"インフラ",
        title:"WEBサーバー構築",
        text:"自分のホームページってなんか憧れません？　憧れるよね　ということで今回はwebサーバ構築していきたいと思います。",
      },
      {
        tag:"インフラ",
        title:"FTPサーバー構築",
        text:"外からでもアクセスできるファイルサーバが欲しかったので作りました",
      },
      {
        tag:"インフラ",
        title:"DNSサーバー設定",
        text:"今回は内部権威DNSの設定をします",
      }
      ],
  }),
  methods: {
  },
  created() {

  }
}
</script>
<style scoped>
a{
  text-decoration: none;
}
@keyframes fadeIn{
  0% {
    transform: translateX(1500px);
  }
  100% {
    transform: translateX(0px);
  }
}
@keyframes fadeOut {
    90% {
        opacity:1;
    }
    100% {
        opacity:0;
    }
}
.example{
  animation:fadeIn 30s, fadeOut 30s;
  animation-iteration-count:infinite;
}
</style>
