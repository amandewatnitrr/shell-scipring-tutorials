var md = require('markdown-it')()
            .use(require('markdown-it-codetabs'));
// `group` and `tab` can only contain characters in [A-Za-z0-9_].
md.render('```js [group:tab]\nconsole.log("hello");\n```');