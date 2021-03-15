<template>
    <div class="kt-header__topbar-item dropdown">
        <div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="30px,0px">
                <span class="kt-header__topbar-icon">
                    <i class="flaticon2-bell-alarm-symbol"></i>
                    <span
                        class="kt-badge kt-badge--dot kt-badge--notify kt-badge--sm kt-badge--brand" :class="{'kt-badge--brand': !status, 'kt-badge--danger': status}"></span>
                </span>
        </div>
        <div
            class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-lg">
            <form>
                <div class="kt-head"
                     style="background-image: url(assets/media/misc/head_bg_sm.jpg)">
                    <h3 class="kt-head__title">Notificaciones</h3>
                    <div class="kt-head__sub">
                        <span class="kt-head__desc">{{ notifications.length }} nuevas notificaciones</span>
                    </div>
                </div>
                <div class="kt-notification kt-margin-t-30 kt-margin-b-20 kt-scroll"
                     data-scroll="true" data-height="270" data-mobile-height="220">
                    <div class="kt-notification__item" v-if="notifications.length == 0">
                        <div class="kt-notification__item-icon">
                            <i class="flaticon2-safe kt-font-focus"></i>
                        </div>
                        <div class="kt-notification__item-details">
                            <div class="kt-notification__item-title">
                                Sin notificaciones
                            </div>

                            <div class="kt-notification__item-time">
                            </div>
                        </div>
                    </div>

                    <div class="kt-notification__item" v-for="(notification,index) in notifications" @click="markAsRead(notification,index)">
                        <div class="kt-notification__item-icon">
                            <i class="kt-font-success" v-bind:class='notification.data.icon'></i>
                        </div>
                        <div class="kt-notification__item-details">
                            <div class="kt-notification__item-title">
                                {{ notification.data.message}}
                            </div>
                            <div class="kt-notification__item-time">
                                2 hrs ago
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
import {mapState} from 'vuex';

export default {
    computed: {
            ...mapState(['status','notifications']),
        },
    mounted() {
        this.$store.dispatch("getNofifications")
    },
    methods: {
        markAsRead(notification,index){
            let data = {
                notification : notification
            }

            axios.post("/notifications/markasread",data).then(response => {
                this.notifications.splice(index,1)            
            })
        }
    }
}
</script>
