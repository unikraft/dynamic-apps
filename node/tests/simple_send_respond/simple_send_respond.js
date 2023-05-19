const http = require("http");

const host = '172.44.0.2';
const port = 8000;

const requestListener = function (req, res) {
    res.writeHead(200);
    res.end("My first server!\n");
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
    console.log(`Server is running on http://${host}:${port}`);
});
