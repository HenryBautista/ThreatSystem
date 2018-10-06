<template>
    <v-layout justify-center row>
        <v-form>
        <v-layout v-for="good in goods" :key="good.id" align-center row  style="background-color:#f5f5f5; margin-bottom:10px;  padding: 5px 5px 5px 5px;">
            <v-flex  sx12 sm2>
                <h10 class="headline">{{good.name}}</h10>
            </v-flex>
            <v-flex sx12 sm10>
            <v-layout v-for="threat  in good.threats" :key="threat.id" align-center row fill-height>
                <v-flex sx12 sm2>
                    <div class="subheading">{{threat.name}}</div>
                </v-flex>
                <v-flex v-for="item in appreciation" :key="item.id"  sx12 sm3>
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
    </v-layout>
</template>
<script>
export default {
    name:"goods",
    props:{
        incidence: {}
    },
    data:()=>({
        message:'hi there',
        goods:[],
        appreciation:[],
        form:{
            parent_id:[
                
            ],
        },
        out:{
            id:0,
            prop:0,
            deg:0,
            inte:0,
            c_prob:0,
            c_deg:0,
            c_inte:0,
        }
    }),
    created(){
        let self = this;
        self.get_appreciations();
        //self.get_goods();
    },
    methods:{   
        send_data(event){
            this.$emit('data-received',this.message);
        },

        get_goods(id){

            let self = this
            //var id  = self.incidence.id;
            self.$store.state.services.GoodService.getCompleteByIncidence(id)
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
        reset_data(){
            let self = this;
            self.out.id=0;
            self.out.prop=0;
            self.out.deg=0;
            self.out.inte=0;
            self.out.c_prob=0;
            self.out.c_deg =0;
            self.out.c_inte =0;
            self.form.parent_id = [];
            
        },
        submit(event){
            let self = this;
            console.log(self.form.parent_id)
            var prop = 0;
            var deg = 0;
            var inte =0;
            var c_prob =0;
            var c_deg =0;
            var c_inte =0;
            self.form.parent_id.forEach(element => {
                switch(element.appreciationId){
                    case 1:
                        c_prob++;
                        prop+= element.value;
                    break;
                    case 2:
                        c_deg++;
                        deg+= element.value;
                    break;
                    case 3:
                        c_inte++;
                        inte+= element.value;
                    break;
                }
            });

            self.out.prop=prop;
            self.out.deg=deg;
            self.out.inte=inte;
            self.out.c_prob=c_prob;
            self.out.c_deg=c_deg;
            self.out.c_inte=c_inte;
            
            console.log(self.out);
            this.$emit('data-received',self.out);
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

    }
}
</script>
