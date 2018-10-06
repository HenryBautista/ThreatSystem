import Vue from 'vue'
import Router from 'vue-router'


import HelloWorld from '@/components/HelloWorld'
import Threat from '@/components/threats/Threat'
import Main from '@/components/main/Main'
import Report from '@/components/report/Report'
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
    },
    {
      path:'/report',
      name:'Report',
      component: Report    
    }
  ]
})
