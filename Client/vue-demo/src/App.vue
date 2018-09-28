<template>
<v-app id="inspire">
    <v-navigation-drawer
      v-model="drawer"
      fixed
      app
    >
      <v-list dense>
        <v-list-tile @click="">
          <v-list-tile-action>
            <v-icon>home</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title>Home</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
        <v-list-tile @click="">
          <v-list-tile-action>
            <v-icon>contact_mail</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title>Contact</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
      </v-list>
    </v-navigation-drawer>
    <v-toolbar color="black" dark fixed app>
      <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>
      <v-toolbar-title>Manejo de riesgos</v-toolbar-title>
    </v-toolbar>
    <v-content>
      <!-- <v-container fluid fill-height>
        <v-layout
          justify-center
          align-center
        >
          <v-flex text-xs-center> -->
            <v-container fluid fill-heigh>
                <router-view/>
            </v-container>
          <!-- </v-flex>
        </v-layout>
      </v-container> -->
    </v-content>
    <v-footer color="black" app>
      <span class="white--text">CODESS &copy; 2018</span>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  components: {
    //topheader, uploader
  },

data: () => ({

      drawer: false

    }),

  props: {
    source: String
  }
};
</script>