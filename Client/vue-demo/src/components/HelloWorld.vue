<template>

  
</template>
<script>
export default {
  name: 'HelloWorld',
   created(){
        let self  = this
        self.get_threats();
        self.get_measures();
    },
  data () {
    return {
      threats:[],
      measures:[],
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

         get_threats(){

            let self = this
            self.$store.state.services.ThreatService.getAll()
            .then(response => {
                console.log(response)
                self.threats = response.data;
                console.log("los items");
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
                self.measures = response.data;
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