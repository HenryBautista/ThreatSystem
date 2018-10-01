<template>
    <v-form>
        <!-- INTERNET -->
        <v-layout align-center row fill-height>
            <v-flex sx12 sm1>
                <h6 class="title">{{goods[0].name}}</h6>
            </v-flex>
            <v-flex sx12 sm2>
                <div class="subheading">{{goods[0].threats[0].name}}</div>
            </v-flex>
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[0].measures"
                    chips
                    :label="appreciation[0].name"
                    item-text="name"
                    v-model="form_data[0].threat.probabilidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[1].measures"
                    chips
                    :label="appreciation[1].name"
                    item-text="name"
                    v-model="form_data[0].threat.degradacion"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[2].measures"
                    chips
                    :label="appreciation[2].name"
                    item-text="name"
                    v-model="form_data[0].threat.integridad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[3].measures"
                    chips
                    :label="appreciation[3].name"
                    item-text="name"
                    v-model="form_data[0].threat.confidencialidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[4].measures"
                    chips
                    :label="appreciation[4].name"
                    item-text="name"
                    v-model="form_data[0].threat.autenticidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[5].measures"
                    chips
                    :label="appreciation[5].name"
                    item-text="name"
                    v-model="form_data[0].threat.trazabilidad"
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
        <!-- BIZNET -->
        <v-layout align-center row fill-height>
            <v-flex sx12 sm1>
                <h6 class="title">{{goods[1].name}}</h6>
            </v-flex>
            <v-flex sx12 sm2>
                <div class="subheading">{{goods[1].threats[0].name}}</div>
            </v-flex>
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[0].measures"
                    chips
                    :label="appreciation[0].name"
                    item-text="name"
                    v-model="form_data[1].threat.probabilidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[1].measures"
                    chips
                    :label="appreciation[1].name"
                    item-text="name"
                    v-model="form_data[1].threat.degradacion"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[2].measures"
                    chips
                    :label="appreciation[2].name"
                    item-text="name"
                    v-model="form_data[1].threat.integridad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[3].measures"
                    chips
                    :label="appreciation[3].name"
                    item-text="name"
                    v-model="form_data[1].threat.confidencialidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[4].measures"
                    chips
                    :label="appreciation[4].name"
                    item-text="name"
                    v-model="form_data[1].threat.autenticidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[5].measures"
                    chips
                    :label="appreciation[5].name"
                    item-text="name"
                    v-model="form_data[1].threat.trazabilidad"
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
        <v-layout align-center row fill-height>
            <v-flex sx12 sm1>
            </v-flex>
            <v-flex sx12 sm2>
                <div class="subheading">{{goods[1].threats[1].name}}</div>
            </v-flex>
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[0].measures"
                    chips
                    :label="appreciation[0].name"
                    item-text="name"
                    v-model="form_data[2].threat.probabilidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[1].measures"
                    chips
                    :label="appreciation[1].name"
                    item-text="name"
                    v-model="form_data[2].threat.degradacion"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[2].measures"
                    chips
                    :label="appreciation[2].name"
                    item-text="name"
                    v-model="form_data[2].threat.integridad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[3].measures"
                    chips
                    :label="appreciation[3].name"
                    item-text="name"
                    v-model="form_data[2].threat.confidencialidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[4].measures"
                    chips
                    :label="appreciation[4].name"
                    item-text="name"
                    v-model="form_data[2].threat.autenticidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[5].measures"
                    chips
                    :label="appreciation[5].name"
                    item-text="name"
                    v-model="form_data[2].threat.trazabilidad"
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
        <v-layout align-center row fill-height>
            <v-flex sx12 sm1>
            </v-flex>
            <v-flex sx12 sm2>
                <div class="subheading">{{goods[1].threats[2].name}}</div>
            </v-flex>
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[0].measures"
                    chips
                    :label="appreciation[0].name"
                    item-text="name"
                    v-model="form_data[3].threat.probabilidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[1].measures"
                    chips
                    :label="appreciation[1].name"
                    item-text="name"
                    v-model="form_data[3].threat.degradacion"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[2].measures"
                    chips
                    :label="appreciation[2].name"
                    item-text="name"
                    v-model="form_data[3].threat.integridad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[3].measures"
                    chips
                    :label="appreciation[3].name"
                    item-text="name"
                    v-model="form_data[3].threat.confidencialidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[4].measures"
                    chips
                    :label="appreciation[4].name"
                    item-text="name"
                    v-model="form_data[3].threat.autenticidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[5].measures"
                    chips
                    :label="appreciation[5].name"
                    item-text="name"
                    v-model="form_data[3].threat.trazabilidad"
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
        <v-layout align-center row fill-height>
            <v-flex sx12 sm1>
            </v-flex>
            <v-flex sx12 sm2>
                <div class="subheading">{{goods[1].threats[3].name}}</div>
            </v-flex>
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[0].measures"
                    chips
                    :label="appreciation[0].name"
                    item-text="name"
                    v-model="form_data[4].threat.probabilidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[1].measures"
                    chips
                    :label="appreciation[1].name"
                    item-text="name"
                    v-model="form_data[4].threat.degradacion"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[2].measures"
                    chips
                    :label="appreciation[2].name"
                    item-text="name"
                    v-model="form_data[4].threat.integridad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[3].measures"
                    chips
                    :label="appreciation[3].name"
                    item-text="name"
                    v-model="form_data[4].threat.confidencialidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[4].measures"
                    chips
                    :label="appreciation[4].name"
                    item-text="name"
                    v-model="form_data[4].threat.autenticidad"
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
            <v-flex sx12 sm1>
                <v-combobox
                    :items="appreciation[5].measures"
                    chips
                    :label="appreciation[5].name"
                    item-text="name"
                    v-model="form_data[4].threat.trazabilidad"
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
        <!-- OFIMATICA -->

        <v-layout row>
            <v-btn
                @click="submit"
                >
                submit
            </v-btn>
        </v-layout> 
    </v-form>
    
</template>
<script>
export default {
    name:"Main",
    created(){
        let self  = this
        self.get_goods();
        self.get_measures();
        self.get_appreciations();
    },
    data:() =>({
        goods:[],
        measures:[],
        appreciation:[],
        form_data:[
            
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},                        
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},
            { threat:{ probabilidad:'', degradacion:'', integridad:'', confidencialidad:'', autenticidad:'', trazabilidad:''}},

        ],
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
                // response.data.forEach(element => {
                //     if(element.id === 1)
                //         self.appreciation[0] = element 
                //     if(element.id === 2)
                //         self.appreciation[1] = element
                //     if(element.id === 3)
                //         self.appreciation[2] = element
                //     if(element.id === 4)
                //         self.appreciation[3] = element
                //     if(element.id === 5)
                //         self.appreciation[4] = element
                //     if(element.id === 6)
                //         self.appreciation[5] = element   
                // });
                //self.form = response.data;
                console.log("apreciation");
                console.log(response.data);
                console.log(self.appreciation);
            }).catch(response  => {
                console.log(response);
            })
        },

        submit(){
                console.log(this.form_data)

        },

        give_model(){

            return;
        }
     },
     
    }
</script>
