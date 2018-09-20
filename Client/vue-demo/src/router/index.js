import Vue from 'vue'
import Router from 'vue-router'


import HelloWorld from '@/components/HelloWorld'
import Threat from '@/components/threats/Threat'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
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
