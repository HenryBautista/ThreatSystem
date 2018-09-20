class MeasureService {
    axios
    baseUrl

    constructor(axios, baseUrl) {
        this.axios = axios
        this.baseUrl = baseUrl
    }

    getAll() {
        let self = this;
        return self.axios.get(`${self.baseUrl}measures`);
    }

    // partial(id, params) {
    //     let self = this;
    //     return self.axios.patch(`${self.baseUrl}users/${id}`, params);
    // }
}

export default MeasureService