class AppreciationService {
    axios
    baseUrl

    constructor(axios, baseUrl) {
        this.axios = axios
        this.baseUrl = baseUrl
    }

    getAll() {
        let self = this;
        return self.axios.get(`${self.baseUrl}appreciations`);
    }

    getComplete(){
        let self  = this;
        return self.axios.get(`${self.baseUrl}appreciations/complete`)

    }

    // partial(id, params) {
    //     let self = this;
    //     return self.axios.patch(`${self.baseUrl}users/${id}`, params);
    // }
}

export default AppreciationService