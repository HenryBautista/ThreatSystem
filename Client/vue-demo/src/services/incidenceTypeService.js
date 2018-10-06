class IncidenceTypeService {
    axios
    baseUrl

    constructor(axios, baseUrl) {
        this.axios = axios
        this.baseUrl = baseUrl
    }

    get() {
        let self = this;
        return self.axios.get(`${self.baseUrl}incidentstypes`);
    }

    getComplete() {
        let self = this;
        return self.axios.get(`${self.baseUrl}incidentstypes/complete`);
    }
    // partial(id, params) {
    //     let self = this;
    //     return self.axios.patch(`${self.baseUrl}users/${id}`, params);
    // }
}

export default IncidenceTypeService