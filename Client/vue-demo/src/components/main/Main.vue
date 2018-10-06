<template>
    <v-container fluid grid-list-xl>
        <v-layout row  justify-center>
            <v-flex md6 mb-5>
                <h2 class="text-md-center display-3">Probabilidad de incidencias</h2>
            </v-flex>
        </v-layout>
        
        <v-layout row justify-space-around>
            
            <v-flex xs12 md4>    
                <v-card >
                    <v-img
                        class="white--text"
                        height="100px"
                        :src="'./static/it.jpg'"
                        >
                        <div class="fill-height bottom-gradient"></div>
                    </v-img>
                        <v-expansion-panel>
                            <v-expansion-panel-content>
                                <div slot="header">
                                    <h3 class="headline">
                                        {{types[0].name}}
                                    </h3>
                                </div>
                                <v-list>
                                    <v-list-tile @click="open_dialog(0, incidence)" v-for="incidence in types[0].incidents" :key="incidence.Id">
                                        <v-list-tile-content>
                                            <v-list-tile-title >{{incidence.name}}</v-list-tile-title>
                                        </v-list-tile-content>
                                    </v-list-tile>
                                </v-list>
                            </v-expansion-panel-content>
                        </v-expansion-panel>
                </v-card>
            </v-flex>
            <v-flex xs12 md4>    
                <v-card >
                    <v-img
                        class="white--text"
                        height="100px"
                        :src="'./static/ad.jpg'"
                        >
                        <div class="fill-height bottom-gradient"></div>
                    </v-img>
                   <v-expansion-panel>
                            <v-expansion-panel-content>
                                <div slot="header">
                                    <h3 class="headline">
                                        {{types[1].name}}
                                    </h3>
                                </div>
                                <v-list>
                                    <v-list-tile @click="open_dialog(1, incidence)" v-for="incidence in types[0].incidents" :key="incidence.Id">
                                        <v-list-tile-content>
                                            <v-list-tile-title >{{incidence.name}}</v-list-tile-title>
                                        </v-list-tile-content>
                                    </v-list-tile>
                                </v-list>
                            </v-expansion-panel-content>
                        </v-expansion-panel>
                </v-card>
            </v-flex>
        </v-layout>
        <v-layout row justify-space-around>
            
            <v-flex xs12 md4>    
                <v-card >
                    <v-img
                        class="white--text"
                        height="100px"
                        :src="'./static/pro.jpg'"
                        
                        >
                        <div class="fill-height bottom-gradient"></div>
                    </v-img>
                    <v-expansion-panel>
                            <v-expansion-panel-content>
                                <div slot="header">
                                    <h3 class="headline">
                                        {{types[2].name}}
                                    </h3>
                                </div>
                                <v-list>
                                    <v-list-tile @click="open_dialog(2, incidence)" v-for="incidence in types[2].incidents" :key="incidence.Id">
                                        <v-list-tile-content>
                                            <v-list-tile-title >{{incidence.name}}</v-list-tile-title>
                                        </v-list-tile-content>
                                    </v-list-tile>
                                </v-list>
                            </v-expansion-panel-content>
                        </v-expansion-panel>
                </v-card>
            </v-flex>
            <v-flex xs12 md4>    
                <v-card >
                    <v-img
                        class="white--text"
                        height="100px"
                        :src="'./static/per.png'"
                        >
                        <div class="fill-height bottom-gradient"></div>
                    </v-img>
                   <v-expansion-panel>
                            <v-expansion-panel-content>
                                <div slot="header">
                                    <h3 class="headline">
                                        {{types[3].name}}
                                    </h3>
                                </div>
                                <v-list>
                                    <v-list-tile @click="open_dialog(3, incidence)" v-for="incidence in types[3].incidents" :key="incidence.Id">
                                        <v-list-tile-content>
                                            <v-list-tile-title >{{incidence.name}}</v-list-tile-title>
                                        </v-list-tile-content>
                                    </v-list-tile>
                                </v-list>
                            </v-expansion-panel-content>
                        </v-expansion-panel>
                </v-card>
            </v-flex>
        </v-layout>
        <v-layout row justify-space-around>
            
            <v-flex xs12 md4>    
                <v-card >
                    <v-img
                        class="white--text"
                        height="100px"
                        :src="'./static/cum.jpg'"
                        
                        >
                        <div class="fill-height bottom-gradient"></div>
                    </v-img>
                    <v-expansion-panel>
                            <v-expansion-panel-content>
                                <div slot="header">
                                    <h3 class="headline">
                                        {{types[4].name}}
                                    </h3>
                                </div>
                                <v-list>
                                    <v-list-tile @click="open_dialog(4, incidence)" v-for="incidence in types[4].incidents" :key="incidence.Id">
                                        <v-list-tile-content>
                                            <v-list-tile-title >{{incidence.name}}</v-list-tile-title>
                                        </v-list-tile-content>
                                    </v-list-tile>
                                </v-list>
                            </v-expansion-panel-content>
                        </v-expansion-panel>
                </v-card>
            </v-flex>
            <v-flex xs12 md4>    
                <v-card >
                    <v-img
                        class="white--text"
                        height="100px"
                        :src="'./static/des.jpg'"
                        
                        >
                        <div class="fill-height bottom-gradient"></div>
                    </v-img>
                    <v-expansion-panel>
                            <v-expansion-panel-content>
                                <div slot="header">
                                    <h3 class="headline">
                                        {{types[5].name}}
                                    </h3>
                                </div>
                                <v-list>
                                    <v-list-tile @click="open_dialog(5, incidence)" v-for="incidence in types[5].incidents" :key="incidence.Id">
                                        <v-list-tile-content>
                                            <v-list-tile-title >{{incidence.name}}</v-list-tile-title>
                                        </v-list-tile-content>
                                    </v-list-tile>
                                </v-list>
                            </v-expansion-panel-content>
                        </v-expansion-panel>
                </v-card>
            </v-flex>
        </v-layout>
        <!-- <goodsdialog dialog="dialog_open"></goodsdialog> -->
       
        <v-layout row justify-center>
            <v-dialog v-model="dialog_open"  fullscreen hide-overlay transition="dialog-bottom-transition">
                 <v-card>
                    <v-toolbar dark color="primary">
                        <v-btn icon dark @click.native="dialog_open = false">
                            <v-icon>close</v-icon>
                        </v-btn>
                        <v-toolbar-title>Activos</v-toolbar-title>
                        <v-spacer></v-spacer>
                        
                    </v-toolbar>
                    <goods :incidence="current_incidence" ref="foo" v-on:data-received="hand_data"></goods> 
                </v-card>
            </v-dialog>
        </v-layout>
        <v-layout row>
           <v-btn
            large
              dark
              fab
              bottom
              right
              color="teal"
              fixed
             @click="submit">
                <v-icon dark>done</v-icon>
            </v-btn> 
        </v-layout>
    </v-container>
</template>
<script>
import goods from "@/components/main/Goods"
export default {
    components:{
        goods,
    },
    props:{
       
    },

    name:"Main",
    created(){
        let self  = this
        self.get_goods();
        self.get_types_complete();
    },
    data:() =>({
        
        current_incidence:{},
        dialog_open:false,
        goods:[],
        types:[],
        currentSum:{
            incidence:[]
        }
    }),
     methods:{

         get_goods(){

            let self = this
            self.$store.state.services.GoodService.getComplete()
            .then(response => {
                self.goods = response.data;
            }).catch(response  => {
                console.log(response);
            })
        },
        get_types_complete(){
            let self = this
            self.$store.state.services.IncidenceTypeService.getComplete()
            .then(response => {
                self.types = response.data;
                console.log(response.data);
            }).catch(response  => {
                console.log(response);
            })
        },
        
        open_dialog(t, incidence){
            let self = this;
            this.current_incidence = incidence;
            console.log("was opened");
            console.log(this.current_incidence);
            self.$refs.foo.get_goods(incidence.id);
            this.dialog_open = true;
        },

        hand_data(data){
            let self = this;
            this.dialog_open = false;

            self.asing_position(data);

            

            //reseteamos el objeto dentro del componente
            self.$refs.foo.reset_data();
        },

        asing_position(data){
            let self = this;
            var find = false;
             self.currentSum.incidence.forEach(element => {
                if(element.id == self.current_incidence.id)
                {
                    console.log('actualizado');
                    find = true;
                    element.prob = data.prop;
                    element.deg = data.deg;
                    element.inte = data.inte;
                    element.c_prob = data.c_prob;
                    element.c_deg = data.c_deg; 
                    element.c_inte = data.c_inte;
                }
            });
            if(!find){
            console.log('creado');
            var incidence_data = new Object();
            incidence_data.id = this.current_incidence.id;
            incidence_data.prob = data.prop;
            incidence_data.deg = data.deg;
            incidence_data.inte = data.inte;
            incidence_data.c_prob = data.c_prob;
            incidence_data.c_deg = data.c_deg;
            incidence_data.c_inte = data.c_inte;
            self.currentSum.incidence.push(incidence_data);
            }
            console.log('Datos recibidos');
            console.log(self.currentSum.incidence);
        },

        submit(){
            let self = this;
            self.$store.state.services.FormDataService.Post(self.currentSum)
            .then(response =>{
                self.$router.push({name:'Report', params:response});
                
            }).catch(response => {
                self.error_message = response;
                self.dialog = true;
            })
        }
     },
     
     computed:{


    }
}
</script>
