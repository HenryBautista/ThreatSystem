class FormDataService {
    axios
    baseUrl

    constructor(axios, baseUrl) {
        this.axios = axios
        this.baseUrl = baseUrl
    }

    Post(params) {
        let self = this;
        return self.axios.post(`${self.baseUrl}formdata`,params);
    }

    // partial(id, params) {
    //     let self = this;
    //     return self.axios.patch(`${self.baseUrl}users/${id}`, params);
    // }
}

export default FormDataService