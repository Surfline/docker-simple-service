const express = require("express");

const app = express();
const port = process.env.PORT || 8080;

app.get("*", (req, res) => {
  res.send({
    status: 200,
    message: "OK",
    version: process.env.APP_VERSION || "unknown",
  });
});

app.listen(port, () => {
  console.log(`Simple service listening at port ${port}`);
});
