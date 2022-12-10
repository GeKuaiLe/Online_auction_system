const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm4o890/",
            name: "ssm4o890",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm4o890/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "网上拍卖系统"
        } 
    }
}
export default base
