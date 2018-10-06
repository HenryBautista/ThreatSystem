<template>
    <v-container fluid grid-list-xl>
        <v-layout row >
            <v-flex sm4><h6 class="headline">Reporte</h6></v-flex>
        </v-layout>
        <v-layout row wrap>
            <v-flex sm6 v-for="(item,index) in format_data" :key="index" >
                <v-card>
                    <v-card-title style="background-color:#64B5F6" class="subheading" >{{item.name}}</v-card-title>
                    <v-divider light></v-divider>
                    <v-container fluid grid-list>
                        <v-layout row justify-center fill-height>
                            <v-flex sm4>
                                <h6 class="subheading">{{item.probalidad.name}}</h6>
                                <br/>
                                <line-chart :data="item.probalidad.data"></line-chart>
                            </v-flex>
                            <v-flex sm4>
                                <h6 class="subheading">{{item.degradacion.name}}</h6>
                                <br/>
                                <line-chart :data="item.degradacion.data"></line-chart>
                            </v-flex>
                            <v-flex sm4><h6 class="subheading">{{item.integridad.name}}</h6>
                                <br/>
                                <pie-chart :donut="true" :data="item.integridad.data"></pie-chart>
                            </v-flex>
                            
                        </v-layout>
                        <v-layout justify-center>
                            <v-flex sm12 style="background-color:red; color: white" class="text-md-center">
                                PELIGRO
                            </v-flex>
                        </v-layout>
                    </v-container>

                    
                </v-card>
            </v-flex>
        </v-layout>
    </v-container>


    <!-- <div>
        <h2>
        {{response_data}}
    </h2>
        <line-chart :data="chartData"></line-chart>
        <pie-chart :donut="true" :data="chartData"></pie-chart>
    </div> -->
</template>
<script>
export default {
    name:'Report',
    created(){
        let self = this;
        self.response_data = self.$route.params.data;
        console.log(self.$route.params);
        
        
        self.response_data.forEach(element => {
            var category = new Object();
            category.name = element.name;
            
                var prob = new Object();
                prob.name = 'Probabilidad de ocurrencia';
                    var p_data = new Object();
                    p_data.Cantidad = element.count_prob;
                    p_data.Suma = element.sum_prob;
                    p_data.Promedio = element.avg_prob;
                prob.data = p_data;

                var deg = new Object();
                deg.name = 'Degradacion del valor';
                    var d_data = new Object();
                    d_data.Cantidad = element.count_deg;
                    d_data.Suma = element.sum_deg;
                    d_data.Promedio = element.avg_deg;
                deg.data = d_data;

                var inte = new Object();
                inte.name = 'Integridad de los datos';
                    var i_data = new Object();
                    i_data.Cantidad = element.count_int;
                    i_data.Suma = element.sum_int;
                    i_data.Promedio = element.avg_int;
                inte.data = i_data;

                
            category.probalidad = prob;
            category.degradacion = deg;
            category.integridad = inte;
                
            self.format_data.push(category);
            console.log('data formateada');
            console.log(self.format_data);

        });

        //console.log(self.response_data);
    },
    data:()=>({
          response_data:{},
          chartData: [["Jan", 4], ["Feb", 2], ["Mar", 10], ["Apr", 5], ["May", 3]],
          format_data:[]

    })
}
</script>
