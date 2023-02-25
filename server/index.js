//IMPORTS from pcks
const express = require("express");
const mongoose = require("mongoose");
const adminRouter = require("./routes/admin");

//IMPORTS from other files
const authRouter = require("./routes/auth");
const productRouter = require("./routes/product");

//INIT
const PORT = 3000;
const app = express();
const DB =
	"mongodb+srv://virajmavani:8140740705@cluster0.mbbchnx.mongodb.net/?retryWrites=true&w=majority";

//Middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);

//Connection
mongoose.set("strictQuery", true); //changed
mongoose
	.connect(DB)
	.then(() => {
		console.log("Connection Successfull");
	})
	.catch((e) => {
		console.log(e);
	});

app.listen(PORT, "0.0.0.0", () => {
	console.log(`Connected to port ${PORT}`);
});
