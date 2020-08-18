module.exports = app => {
    app.get("/", (req, res) => {
        console.log("Port is 3002 Index");
        res.render("index.html");
    });
    
    app.get("/page1", (req, res) => {
        console.log("Port is 3002 Page1");
        res.render("page1.html");
    });
}