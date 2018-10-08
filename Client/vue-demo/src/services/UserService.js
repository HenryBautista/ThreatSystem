class UserService {
    axios
    baseUrl

    constructor(axios, baseUrl) {
        this.axios = axios
        this.baseUrl = baseUrl
    }

    getAll() {
        let self = this;
        return self.axios.get(`${self.baseUrl}users`);
    }

    findUser(email, pass){
        let self = this;
        return self.axios.get(`${self.baseUrl}users/loguser`,{ params:{ email:email, password:pass}})
    }

}

export default UserService