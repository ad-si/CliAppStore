#! /usr/bin/env node

'use strict';

var packageJson = require('../package.json'),
    program     = require('commander')


program
	.version(packageJson.version)

program
	.command('*')
	.description('Lists all alternatives to the given program.\n')
	.usage('asdf')
	.action(function () {
	})

program
	.command('add <program>')
	.description('Adds <program> to database.\n' +
                 '                          ' +
                 'Prompts you to enter the name, description,\n' +
                 '                          ' +
                 'the programs it is an alternative to, …\n')
	.action(function () {
	})

program
	.command('alternative <prog> <alt>')
	.description('Saves <alt> as an alternative to <prog>.\n' +
                 '                          ' +
                 'Attention: <prog> and <alt> must already be registered.\n')
	.action(function () {
	})

program
	.command('info <program>')
	.description('Displays information about <program>.\n')
	.action(function () {
	})

program
	.command('report <text>')
	.description('Report errors regarding the listed programs ' +
                 'and suggest improvements.')
	.action(function () {
	})

program
	.on('--help', function () {
		console.log(
			'  Examples:\n' +
			'\n' +
			'    alterm chrome - Shows all alternatives to Chrome.\n' +
			'    alterm add photoshop - Adds photoshop as a new program.\n'
		)
	})


program.parse(process.argv)

if (!program.args.length)
	program.help()
