const lambda = require('./handler');

const simpleEvent = {
	something: 'hello world',
};

const result = lambda.handler(simpleEvent);
console.log('result : ', result);
