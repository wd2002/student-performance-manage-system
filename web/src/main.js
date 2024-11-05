//import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import  axios from 'axios'
import ViewUIPlus from 'view-ui-plus'
import 'view-ui-plus/dist/styles/viewuiplus.css'
import * as VueRouter from 'vue-router'
import routes from './router'

const router = VueRouter.createRouter({
    history: VueRouter.createWebHashHistory(),
    routes: routes,
})

const app = createApp(App)
app.config.globalProperties.$axios = axios

app.use(ViewUIPlus).use(router).mount('#app')
