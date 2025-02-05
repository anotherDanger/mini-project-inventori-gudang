import express from 'express';
import path from 'path';
import { json } from 'stream/consumers';
import { fileURLToPath } from 'url';
import { addPegawai } from './middleware/pegawai.js';
import {tambahProduk} from './middleware/tambahBarang.js';
import {getProducts} from './middleware/getProducts.js'
const app = express();
app.use(express.json());
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

app.get('/login', (req, res) => {
    res.sendFile(path.join(__dirname, '../public', 'index.html'))
});

app.post('/login', addPegawai, (req, res) => {
    // res.sendFile(path.join(__dirname, '../public', 'index.html'))
});

app.get('/home', (req, res) => {
    res.sendFile(path.join(__dirname, '../public', 'home.html'));
})

app.get('/products', (req, res) => {
    res.sendFile(path.join(__dirname, '../public', 'tambahProduk.html'));
})

app.get('/barang', getProducts, (req, res) => {
    // res.sendFile(path.join(__dirname, '../public', 'home.html'));
})

app.post('/products', tambahProduk, (req, res) => {
    // res.sendFile(path.join(__dirname, '../public', 'tambahProduk.html'));
})

app.listen(3000, () => {
    console.log('http://localhost:3000');
});