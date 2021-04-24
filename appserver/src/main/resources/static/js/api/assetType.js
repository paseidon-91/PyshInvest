import Vue from 'vue'

const assetTypes = Vue.resource('/assettype{/id}')

export default {
    add: assetType => assetTypes.save({}, assetType),
    update: assetType => assetTypes.update({id:assetType.id}, assetType),
    remove: id => assetTypes.remove({id}),
}