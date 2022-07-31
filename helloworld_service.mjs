#!/bin/env node
import express from 'express';
import path from 'path';

const port = 7000;
const app = express();

app.get('/message/**', (req, res) => {
	console.log("INFO: requested req.params[0]")
	res.send({ success: true, message: req.params[0] });
});

app.listen(port);
