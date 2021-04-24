<template>
  <v-card class="my-2">
    <v-card-text primary-title>
      <div>
        <v-avatar
            v-if="assetType.author && assetType.author.userpic"
            size="48px"
        >
          <img
              :src="assetType.author.userpic"
              :alt="assetType.author.name"
          >
        </v-avatar>
        <v-avatar
            v-else
            color="indigo"
            size="36px"
        >
          <v-icon dark>account_circle</v-icon>
        </v-avatar>
        <span class="pl-3">{{ parent }}</span>
      </div>
      <div class="pt-3">
        {{ assetType.name }}
      </div>
    </v-card-text>
<!--    <media v-if="message.link" :message="message"></media>-->
    <v-card-actions>
      <v-btn @click="edit" small text rounded>
        Edit
      </v-btn>
      <v-btn icon @click="del" small>
        <v-icon>
          delete
        </v-icon>
      </v-btn>
    </v-card-actions>
<!--    <comment-list :comments="message.comments" :message-id="message.id"></comment-list>-->
  </v-card>
</template>

<script>
import {mapActions} from 'vuex'
// import Media from "../media/Media.vue"
// import CommentList from "../comment/CommentList.vue"

export default {
  props: ['assetType', 'editAssetType'],
  computed: {
    parent() {
      return this.assetType.parentAssetType ? this.assetType.parentAssetType.name : 'unknown'
    },
  },
  methods: {
    ...mapActions(['removeAssetTypeAction']),
    edit() {
      this.editAssetType(this.assetType)
    },
    del() {
      this.removeAssetTypeAction(this.assetType)
    }
  }
}
</script>

<style>
</style>