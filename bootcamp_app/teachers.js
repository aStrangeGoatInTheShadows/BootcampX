const { Pool } = require("pg");

const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`, limit];

const pool = new Pool({
  user: "pi",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

const queryString = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM cohorts
JOIN students on  cohorts.id = cohort_id
JOIN assistance_requests on students.id = assistance_requests.student_id
JOIN teachers on teacher_id = teachers.id
WHERE cohorts.name LIKE $1
LIMIT $2;
`;

pool.query(queryString, values)
  .then((res) => {
    res.rows.forEach((data) => {
      console.log(`${data.cohort}:  ${data.teacher}`);
    });
  })
  .catch((err) => console.error("query error", err.stack));
