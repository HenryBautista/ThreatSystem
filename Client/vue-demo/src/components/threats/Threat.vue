<template>
    <v-data-table
    :headers="headers"
    :items="items"
    hide-actions
    class="elevation-1"
  >
    <template slot="items" slot-scope="props">
      <td class="text-xs-left">{{ props.item.name }}</td>
      <td> <v-combobox
          v-model="select"
          :items="measures"
          chips
          label="MEDIDAS"
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

        </td>
      <td> <v-combobox
          v-model="select"
          :items="measures"
          chips
          label="MEDIDAS"
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

        </td>
        <td> <v-combobox
          v-model="select"
          :items="measures"
          chips
          label="MEDIDAS"
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

        </td>
        <td> <v-combobox
          v-model="select"
          :items="measures"
          chips
          label="MEDIDAS"
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

        </td>
        <td> <v-combobox
          v-model="select"
          :items="measures"
          chips
          label="MEDIDAS"
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

        </td>
        <td> <v-combobox
          v-model="select"
          :items="measures"
          chips
          label="MEDIDAS"
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

        </td>
    </template>
  </v-data-table>
    
</template>
<script>
export default {
    name:"Threat",
    created(){
        let self  = this
        self.get_threats();
        self.get_measures();
    },
    data:() =>({
        headers: [
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
        items:[],
        measures:[],
    }),
    methods:{

         get_threats(){

            let self = this
            self.$store.state.services.ThreatService.getAll()
            .then(response => {
                console.log(response)
                self.items = response.data;
                console.log("los items");
                console.log(self.items);
                //self.form = response.data;
            }).catch(res  => {
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
                console/log(response.data);
            }).catch(res  => {
                console.log(response);
            })
        }
    }

}
</script>
