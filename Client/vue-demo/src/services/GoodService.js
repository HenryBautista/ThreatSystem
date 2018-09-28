class GoodService {
    axios
    baseUrl

    constructor(axios, baseUrl) {
        this.axios = axios
        this.baseUrl = baseUrl
    }

    getAll() {
        let self = this;
        return self.axios.get(`${self.baseUrl}goods`);
    }

    getComplete(){
        let self  = this;
        return self.axios.get(`${self.baseUrl}goods/complete`)

    }

    // partial(id, params) {
    //     let self = this;
    //     return self.axios.patch(`${self.baseUrl}users/${id}`, params);
    // }
}

export default GoodService