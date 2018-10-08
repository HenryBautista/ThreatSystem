<template>
    <v-container fluid>
        <v-layout row justify-center>
            <v-flex sm6>
                <h1 class="display-3 text-md-center">Manejo de riesgos</h1>
            </v-flex>
        </v-layout>
        <br/>
        <v-layout align-center justify-center row fill-height>
            <v-flex sm4>
                <v-card >
                    <v-card-title primary-title>
                        <div class="headline">Login</div>
                    </v-card-title>
                    <v-divider></v-divider>
                    <v-container fluid>
                        <v-form ref="form" v-model="valid" lazy-validation>
                            <v-text-field 
                            label="Email" 
                            v-model="email"
                            :rules="emailRules"
                            required>

                            </v-text-field>
                            <v-text-field 
                            label="Contraseña" 
                            v-model="password"
                            :rules="passwordRules"
                            required>

                            </v-text-field>
                            <br/>
                            <v-btn
                            @click="submit"
                            :disabled="!valid"
                            color="success"
                            >
                            Acceder
                            </v-btn>
                            <v-btn  
                            @click="clear">Limpiar</v-btn>
                        </v-form>
                    </v-container>
                </v-card>
            </v-flex>
        </v-layout>
    </v-container>
</template>
<script>
export default {
    name:'login',
    data:()=>({
        valid:true,
        email:'',
        password:'',
        emailRules:[
            v => !!v || 'El email es obligatorio',
            v => /.+@.+/.test(v) || 'Ingrese un correo valido'
        ],
        passwordRules:[
            v => !!v || 'Inserte una contraseña',
            v => (v && v.length <= 6) || 'Minimo 6 caracteres'    
        ]

    }),

    methods:{
        submit(){
            if (this.$refs.form.validate()){
                let self = this;
                self.$store.state.services.UserService.findUser(this.email, this.password)
                .then(response => {
                    console.log(response);
                    self.$router.push({name:'Main', params:response});
                }).catch(response  => {
                    console.log(response);
                    alert('No se puede encontrar al usuario');
                })
            }
        },

        clear () {
        this.$refs.form.reset()
      }
    }
}
</script>
