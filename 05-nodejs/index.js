const http = require("http");
 
const host = '127.0.0.1';
const port = 1001;
 
const requestListener = function (req, res) {
    res.writeHead(200);
 
    let json = {
            headers:{
            host:req.headers.host,
            username:req.headers.username,
            token:req.headers.token}
       };
 
    let body = '';
    req.on('data', chunk => {
        body += chunk.toString();
    });
    req.on('end', () => {
        json.body = JSON.parse(body);
        res.end(JSON.stringify(json));
    });
};
const server = http.createServer(requestListener);
server.listen(port, host, () => {
    console.log(`Server is running on http://${host}:${port}`);
});
