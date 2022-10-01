<template>
    <div id="home" v-if="show.general">
        <TPUi v-if="show.tpui"/>
    </div>
</template>

<script>
    // import Nui from './utils/Nui'
    import TPUi from "./components/TPUi.vue"

    export default {
        components: { TPUi },
        name: 'Home',
        data() {
            return {
                show: {
                    general: false,
                    tpui: false
                }
            }
        },
        setup() {
            return {
                messageListener: null
            }
        },
        mounted () {
            this.messageListener = window.addEventListener("message", e => {
                const item = e.data

                if (item.event == "APP_SHOW") {
                    this.show.general = true
                } else if (item.event == "APP_HIDE") {
                    for (const key in this.show) {
                        this.show[key] = false
                    }
                }

                if (item.event == "SHOW_TPUI") {
                    this.show.tpui = true
                }
            })
        },
        unmounted () {
            window.removeEventListener("message", this.messageListener)
        }
    }
</script>

<style>
</style>