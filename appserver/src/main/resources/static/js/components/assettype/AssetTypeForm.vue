<template>
  <v-layout row class="my-4">
    <v-text-field
        label="New asset type"
        placeholder="Write something"
        v-model="name"
        @keyup.enter="save"
    ></v-text-field>
    <v-btn @click="save">
      Save
    </v-btn>
  </v-layout>
</template>

<script>
import {mapActions} from 'vuex'

export default {
  props: ['assetTypeAttr'],
  data() {
    return {
      name: '',
      id: ''
    }
  },
  watch: {
    assetTypeAttr(newVal, oldVal) {
      this.name = newVal.name
      this.id = newVal.id
    }
  },
  methods: {
    ...mapActions(['addAssetTypeAction', 'updateAssetTypeAction']),
    save() {
      const assetType = {
        id: this.id,
        name: this.name
      }
      if (this.id) {
        this.updateAssetTypeAction(assetType)
      } else {
        this.addAssetTypeAction(assetType)
      }

      this.id = ''
      this.name = ''
    }
  }
}
</script>

<style>
</style>