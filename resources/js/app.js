import '../demo1/tools/webpack/vendors/global';
import '../demo1/tools/webpack/scripts';

/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

import Echo from "laravel-echo";

window.Pusher = require('pusher-js');
window.Vue = require('vue');
window.Echo = new Echo({
    broadcaster: 'pusher',
    key: '8159b4e4e679eabf040e',
    cluster: 'us2',
    forceTLS: true
});

import Vuex from 'vuex'
Vue.use(Vuex)
import storeData from "./store/index"

const store = new Vuex.Store(
   storeData
)

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('notificationcomponent', require('./components/NotificationComponent.vue').default);


/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',
    store,
    created(){
        if(window.Laravel.userId){
            window.Echo.private('App.User.'+window.Laravel.userId).notification((response) => {
                var data = {"data":response};
                this.$store.state.notifications.push(data);
                this.$store.state.status = (this.$store.state.notifications.length > 0) ? true : false;
            });
        }
    }
});
