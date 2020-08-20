const express = require("express");
const app = express();
const router = require("./router/main")(app);

app.set("views", __dirname + "/views");
app.set("view engine", "ejs");
app.engine("html", require("ejs").renderFile);

const server = app.listen(process.env.PORT, () => {
    console.log("Express server has started on port ?");
})