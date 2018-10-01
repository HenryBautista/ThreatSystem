<template>
    <v-form>
            <v-progress-linear
                v-model="buffer"
                :buffer-value="bufferValue"
                buffer
            ></v-progress-linear>
        
        <v-layout v-for="good in goods" :key="good.id" align-center row fill-height style="background-color:#f5f5f5; margin-bottom:10px;  padding: 5px 5px 5px 5px;">
            
            <v-flex  sx12 sm2>
                <h6 class="title">{{good.name}}</h6>
            </v-flex>

            <v-flex sx12 sm10>
                
            <v-layout v-for="threat  in good.threats" :key="threat.id" align-center row fill-height>
              
                <v-flex sx12 sm2>
                    <div class="subheading">{{threat.name}}</div>
                </v-flex>
                
                
                <v-flex v-for="item in appreciation" :key="item.id"  sx12 sm2>
                    <v-combobox
                        style="padding-right:5px;padding-left:5px"
                        :items="item.measures"
                        chips
                        :label="item.name"
                        item-text="name"
                        v-model="form.parent_id[threat.id+''+item.id]"
                    >
                        <template slot="selection" slot-scope="data">
                            <v-chip
                                :selected="data.selected"
                                :disabled="data.disabled"
                                :key="data.id"
                                class="v-chip--select-multi"
                                @input="data.parent.selectItem(data.id)"
                            >
                            <v-avatar class="accent white--text">
                            {{ data.item.initials }}
                            </v-avatar>
                        </v-chip>
                    </template>
                    </v-combobox>
                </v-flex>
            </v-layout>

            
            </v-flex>
            
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
         
    </v-form>
    
</template>
<script>
export default {
    name:"Main",
    created(){
       //loading=true;
        let self  = this
        self.buffer = 20;
        self.get_goods();
        self.get_measures();
        self.get_appreciations();
        self.buffer = 100;
    },
    data:() =>({
        autoId:0,
        buffer:10,
        bufferValue:10,
        form:{
            parent_id:[
                
            ],
        },
        goods:[],
        measures:[],
        appreciation:[],
    }),
     methods:{

         get_goods(){

            let self = this
            self.$store.state.services.GoodService.getComplete()
            .then(response => {
                console.log(response)
                self.goods = response.data;
                console.log("los items goods");
                console.log(self.goods);
                //self.form = response.data;
            }).catch(response  => {
                console.log(response);
            })
        },

        get_measures(){

            let self = this
            self.$store.state.services.MeasureService.getAll()
            .then(response => {
                self.measures = response.data;
                //self.form = response.data;
                console.log("measures");
                console.log(response.data);
            }).catch(response  => {
                console.log(response);
            })
        },

        get_appreciations(){
            let self = this
            self.$store.state.services.AppreciationService.getComplete()
            .then(response => {
                self.appreciation = response.data.sort();
                console.log("apreciation");
                console.log(response.data);
                console.log(self.appreciation);
            }).catch(response  => {
                console.log(response);
            })
        },

        submit(){
            let self = this
            self.$store.state.services.FormDataService.Post(self.form)
            .then(response =>{

            }).catch(response => {

            })
            console.log(self.form);

        },

        give_model(){

            return;
        }
     },
     computed:{

         autokey:function(){
             console.log(this.autoId);
             this.autoId = this.autoId+1;
             return this.autoId;
         }
     }
    }
</script>
