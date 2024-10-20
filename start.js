const { exec } = require('child_process');

exec('bash ./start.sh main.ts', (error, stdout, stderr) => {
    if (error) {
        console.error(`Ошибка: ${error.message}`);
        console.error(`Stack: ${error.stack}`);
        return;
    }
    if (stderr) {
        console.error(`Стандартная ошибка: ${stderr}`);
        return;
    }
    console.log(`Вывод: ${stdout}`);
});
