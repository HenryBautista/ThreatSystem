import Vue from 'vue'
import Router from 'vue-router'


import HelloWorld from '@/components/HelloWorld'
import Threat from '@/components/threats/Threat'
import Main from '@/components/main/Main'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Main',
      component: Main
    },
    {
      path: '/threat',
      name: 'Threat',
      component: Threat
    },
    {
      path:'/hello',
      name: 'HelloWorld',
      component: HelloWorld
    }
    
  ]
})
