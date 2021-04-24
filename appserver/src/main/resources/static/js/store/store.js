import Vue from 'vue'
import Vuex from 'vuex'
import assetTypesApi from "../api/assetType"
import commentApi from "../api/comment"

Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        assetTypes,
        profile: frontendData.profile
    },
    getters: {
        sortedAssetTypes: state => (state.assetTypes || []).sort((a, b) => -(a.id - b.id))
    },
    mutations: {
        addAssetTypeMutation(state, assetType) {
            this.state.assetTypes = [
                ...state.assetTypes,
                assetType
            ]
        },
        updateAssetTypeMutation(state, assetType) {
            const updateIndex = state.assetTypes.findIndex(item => item.id === assetType.id)

            state.assetTypes = [
                ...state.assetTypes.slice(0, updateIndex),
                assetType,
                ...state.assetTypes.slice(updateIndex + 1)
            ]

        },
        removeAssetTypeMutation(state, assetType) {
            const deletionIndex = state.assetTypes.findIndex(item => item.id === assetType.id)

            if (deletionIndex > -1) {
                state.assetTypes = [
                    ...state.assetTypes.slice(0, deletionIndex),
                    ...state.assetTypes.slice(deletionIndex + 1)
                ]
            }
        },
        addCommentMutation(state, comment) {
            const updateIndex = state.assetTypes.findIndex(item => item.id === comment.assetType.id)
            const assetType = state.assetTypes[updateIndex]

            if (!assetType.comments.find(it => it.id === comment.id)) {
                state.assetTypes = [
                    ...state.assetTypes.slice(0, updateIndex),
                    {
                        ...assetType,
                        comments: [
                            ...assetType.comments,
                            comment
                        ]
                    },
                    ...state.assetTypes.slice(updateIndex + 1)
                ]
            }

        }
    },
    actions: {
        async addAssetTypeAction({commit, state}, assetType) {
            const result = await assetTypesApi.add(assetType)
            const data = await result.json()
            const index = state.assetTypes.findIndex(item => item.id === data.id)
            if (index > -1) {
                commit('updateAssetTypeMutation', data)
            } else {
                commit('addAssetTypeMutation', data)
            }
        },
        async updateAssetTypeAction({commit}, assetType) {
            const result = await assetTypesApi.update(assetType)
            const data = await result.json()
            commit('updateAssetTypeMutation', data)
        },
        async removeAssetTypeAction({commit}, assetType) {
            const result = await assetTypesApi.remove(assetType.id)
            if (result.ok) {
                commit('removeAssetTypeMutation', assetType)
            }
        },
        async addCommentAction({commit, state}, comment) {
            const response = await commentApi.add(comment)
            const data = await response.json()
            commit('addCommentMutation', data)
        }
    }
})