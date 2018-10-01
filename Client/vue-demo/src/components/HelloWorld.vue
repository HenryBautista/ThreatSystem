<template>

<v-container fluid grid-list-md>
    <v-data-iterator
      :items="goods_items"
      content-tag="v-layout"
      row
      wrap
      :item-key="goods_items.id"
      
    >
      <v-flex
        slot="item"
        slot-scope="props"
        xs12
        sm6
        md4
        lg12
      >
        <v-card>
          <v-layout >
            <v-flex sm2>
              <v-layout justify-center aling center>
                  <div>
                   <h2>
                   {{ props.item.name }}
                   </h2>
                </div>
              </v-layout>
            </v-flex>
            <v-flex sm10>
              <v-card-title primary-title>
                <v-list two-line>
                  <template v-for="(threats, index) in props.item.threats">
                      <v-subheader :key="index">
                        {{ threats.name }}
                      </v-subheader>
                      <v-divider
                        :inset="threats.inset"
                        :key="index"
                      ></v-divider>
                    <v-list-tile :key="index">
                      <v-list-tile-content class="align-rigth">
                        <v-layout >
                          <v-flex sm3>
                            <div>
                              <v-combobox
                              :items="measures_items"
                              chips
                              label="PROBILIDAD"
                              item-text="name"
                            >
                              <template slot="selection" slot-scope="data">
                                <v-chip
                                  :selected="data.selected"
                                  :disabled="data.disabled"
                                  :key="data.id"
                                  class="v-chip--select-multi "
                                  @input="data.parent.selectItem(data.id)"
                                >
                                  <v-avatar class="accent white--text">
                                    {{ data.item.initials }}
                                  </v-avatar>
                                  <!-- {{ data.item.name }} -->
                                </v-chip>
                              </template>
                            </v-combobox>

                            
                            </div>
                           
                          </v-flex>
                          <v-flex sm3>
                            <div>
                              <v-combobox
                              :items="measures_items"
                              chips
                              label="DEPRECIACION"
                              item-text="name"
                            >
                              <template slot="selection" slot-scope="data">
                                <v-chip
                                  :selected="data.selected"
                                  :disabled="data.disabled"
                                  :key="data.id"
                                  class="v-chip--select-multi "
                                  @input="data.parent.selectItem(data.id)"
                                >
                                  <v-avatar class="accent white--text">
                                    {{ data.item.initials }}
                                  </v-avatar>
                                  <!-- {{ data.item.name }} -->
                                </v-chip>
                              </template>
                            </v-combobox>
                            </div>
                           
                          </v-flex>
                        </v-layout>
                      </v-list-tile-content>

                    </v-list-tile>
                  </template>
                  


                    


                </v-list>
              </v-card-title>
            </v-flex>
          </v-layout>
        </v-card>
      </v-flex>
    </v-data-iterator>
  </v-container>
  
</template>
<script>
export default {
  name: 'HelloWorld',
   created(){
        let self  = this
        self.get_goods();
        self.get_measures();
    },
  data () {
    return {
      goods_items:[],
      measures_items:[],
      headers_threats: [
          {
            text: 'Activos',
            align: 'left',
            sortable: false,
            value: 'name',
            width:"10%"
          },
            { text: 'Probabilidad de ocurrecia', sortable: false  },
            { text: 'Degradacion de Valor', sortable: false},
            { text: 'Integridad datos', sortable: false},
            { text: 'confidencialidad de datos', sortable: false},
            { text: 'AUT de los usuarios y de la info', sortable: false},
            { text: 'trazabilidad del servicio', sortable: false }
          
        ],
    }
  },

  methods:{

         get_goods(){

            let self = this
            self.$store.state.services.GoodService.getComplete()
            .then(response => {
                console.log(response)
                self.goods_items = response.data;
                console.log("los items goods");
                console.log(self.threats);
                //self.form = response.data;
            }).catch(response  => {
                console.log(response);
            })
        },

        get_measures(){

            let self = this
            self.$store.state.services.MeasureService.getAll()
            .then(response => {
                self.measures_items = response.data;
                //self.form = response.data;
                console.log("measures");
                console.log(response.data);
            }).catch(response  => {
                console.log(response);
            })
        }
    }
}
</script>