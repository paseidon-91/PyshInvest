<template>
  <v-app>
    <v-app-bar app>
      <v-app-bar-nav-icon></v-app-bar-nav-icon>

      <v-toolbar-title>PysInvesting</v-toolbar-title>
      <v-btn text v-if="profile"
             :disabled="this.$route.path === '/'"
             @click="showAssetTypes">
        Типы активов
      </v-btn>

      <v-spacer></v-spacer>

      <v-btn text v-if="profile"
             :disabled="this.$route.path === '/profile'"
             @click="showProfile">{{ profile.name }}
      </v-btn>
      <v-btn v-if="profile" icon href="/logout">
        <v-icon>exit_to_app</v-icon>
      </v-btn>
    </v-app-bar>
    <v-main>
      <router-view></router-view>
    </v-main>
  </v-app>
</template>
<script>
import {addHandler} from "util/ws"
import {mapState, mapMutations} from "vuex";

export default {
  computed: mapState(['profile']),
  methods: {
    ...mapMutations([
      'addAssetTypeMutation',
      'updateAssetTypeMutation',
      'removeAssetTypeMutation',
      'addCommentMutation'
    ]),
    showAssetTypes() {
      this.$router.push('/')
    },
    showProfile() {
      this.$router.push('/profile')
    },
  },
  created() {
    addHandler(data => {
      if (data.objectType === 'ASSET_TYPE') {
        switch (data.eventType) {
          case 'CREATE':
            this.addAssetTypeMutation(data.body)
            break;
          case 'UPDATE':
            this.updateAssetTypeMutation(data.body)
            break;
          case 'REMOVE':
            this.removeAssetTypeMutation(data.body)
            break;
          default:
            console.error(`Looks like the event type is unknown "${data.eventType}"`)
        }
      } else if (data.objectType === 'COMMENT') {
        switch (data.eventType) {
          case 'CREATE':
            this.addCommentMutation(data.body)
            break;
          default:
            console.error(`Looks like the event type is unknown "${data.eventType}"`)
        }
      } else {
        console.error(`Looks like the object type is unknown "${data.objectType}"`)
      }
    })
  },
  beforeMount() {
    if (!this.profile) {
      this.$router.replace('/auth');
    }
  }
}
</script>
<style>
.main-app {
  color: blue;
}
</style>