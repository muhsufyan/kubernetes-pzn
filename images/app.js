const http = require('http');
const process = require("process");

const hostname = '0.0.0.0';
const port = 3000;

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify({
        // environment variable disini didpt dari config map milik kubernetes yg kemudian diconvert jd environment variable
        application: process.env.APPLICATION,
        version: process.env.VERSION,
        // get all env var
        env: process.env
    }));
});

server.listen(port, hostname, () => {
    console.log(`Server running`);
});