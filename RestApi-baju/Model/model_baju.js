const mongoose = require('mongoose')
const Schema = mongoose.Schema
const UserSchema = new Schema({
    warna: { type: String },
    deskripsi: { type: String },
    gambar: { type: String },
    merk: { type: String },
    harga: { type: String },
    date: { type: Date, default: Date.now }

})
module.exports = mongoose.model('baju', UserSchema)