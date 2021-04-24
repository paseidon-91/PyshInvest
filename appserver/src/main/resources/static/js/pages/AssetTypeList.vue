<template>
  <v-container>
    <v-layout align-content-space-around justify-start column>
      <asset-type-form :assetTypeAttr="assetType"/>
      <asset-type-row v-for="assetType in sortedAssetTypes"
                   :key="assetType.id"
                   :assetType="assetType"
                   :editAssetType="editAssetType"/>
    </v-layout>
  </v-container>
</template>

<script>
import {mapGetters} from 'vuex'
import AssetTypeForm from "../components/messages/AssetTypeForm.vue";
import AssetTypeRow from "../components/messages/AssetTypeRow.vue";

export default {
  components: {
    AssetTypeRow,
    AssetTypeForm
  },
  data() {
    return {
      assetType: null
    }
  },
  computed: mapGetters(['sortedAssetTypes']),
  methods: {
    editAssetType(assetType) {
      this.assetType = assetType
    }
  }
}
</script>

<style>
</style>