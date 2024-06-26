const express = require('express')

const app = express()
const mysql = require('mysql')
// const db = mysql.createConnection({
//     host: "database",
//     user: 'root',
//     password: 'password'
// })
app.get('/', (req, res) => {

    res.end("Hello from api v3")
})

app.listen(80, () => {

})