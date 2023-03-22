import e from "express";
import * as fs from "fs"

//Funcion encontrar celda
function findCeil(arr, r, l, h) {
    let mid;
    while (l < h) {
        mid = l + ((h - l) >> 1);
        (r > arr[mid]) ? (l = mid + 1) : (h = mid);
    }
    return (arr[l] >= r) ? l : -1;
};

//Funcion randomixer
function myRand(arr, freq, n) {
    let prefix = [];
    let i;
    prefix[0] = freq[0];
    for (i = 1; i < n; ++i)
        prefix[i] = prefix[i - 1] + freq[i];
    let r = Math.floor((Math.random() * prefix[n - 1])) + 1;

    let indexc = findCeil(prefix, r, 0, n - 1);
    return arr[indexc];
};

//Funcion padre de calculo de probabilidad.
export function randomprob(probabilidad) {
    let arr = [];
    let freq = [];
    let resultado = '';

    probabilidad.forEach(element => {
        arr.push(element.id);
        freq.push(element.prob);
    });

    resultado = myRand(arr, freq, arr.length);

    return probabilidad[resultado];
}

// manipulacion archivo puntajes.json
export async function leerArchivoPuntajes() {
    const data = await fs.promises.readFile("./data/puntajes.json", (err, data) => {
        if (err) throw err 
        return data
    });

    return await JSON.parse(data);
};

export async function leerArchivoEstado() {
    const data = await fs.promises.readFile("./data/estados.json", (err, data) => {
        if (err) throw err 
        return data
    });

    return await JSON.parse(data);
};