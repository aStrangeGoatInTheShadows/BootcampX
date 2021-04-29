const { Pool } = require('pg');
const cliVAR = process.argv.slice(2);


const pool = new Pool({
  user: 'pi',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});



pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM cohorts
JOIN students on  cohorts.id = cohort_id
JOIN assistance_requests on students.id = assistance_requests.student_id
JOIN teachers on teacher_id = teachers.id
WHERE cohorts.name = '${process.argv[2]}'
ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(data => {
    console.log(`${data.cohort}:  ${data.teacher}`);
  })
}).catch(err => console.error('query error', err.stack));