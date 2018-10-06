
import Axios from 'axios'
import ThreatService from '../services/ThreatService'
import MeasureService from '../services/MeasureService'
import GoodService from '../services/GoodService'
import AppreciationService from '../services/AppreciationService'
import FormDataService from '../services/FormDataService'
import IncidenceTypeService from '../services/IncidenceTypeService'


// Axios Configuration
Axios.defaults.headers.common.Accept = 'application/json'
//Axios.defaults.headers.common.Authorization = `bearer ${User.Token}`
 var ApiUrl = "http://localhost:50319/api/";

export default {
    ThreatService: new ThreatService(Axios, ApiUrl),
    MeasureService: new MeasureService(Axios, ApiUrl),
    GoodService: new GoodService(Axios, ApiUrl),
    AppreciationService: new AppreciationService(Axios, ApiUrl),
    FormDataService: new FormDataService(Axios, ApiUrl),
    IncidenceTypeService: new IncidenceTypeService(Axios, ApiUrl),
}