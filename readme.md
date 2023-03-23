# GMeet Quiz 
## Setting up
### Preparing the DB
1. Create a MySQL database.
2. Import database from `gmeetchat.sql`.
3. Edit `mdb.php.txt`. Replace database host, username, password, and name with your settings. Then, save it as `mdb.php`.

### Creating the content
1. Create a quiz. Insert into table `quiz`:
   - `title` :Quiz title.
   - `description` :Quiz description.
   - `score_correct` :Points on correct answer.
   - `score_wrong` :Points on incorrect answer.
   - `score_abstain` :Points for not answering.
2. Add a question. Insert into table `question`:
   - `sort` :Question number.
   - `id_quiz` :Quiz ID.
   - `question` :Question text (in HTML).
   - `answer_exp` :Correct answer explanation (in HTML).
3. Add choices to question. Insert into table `choice`:
   - `id_question` :Question ID.
   - `label` :Text answer.
   - `is_correct` :Is answer correct?

### Creating a session
1. Open `BASE_URL/pages/sessions.php`.
2. Under Quizs panel, choose a quiz and click `create session`.
3. Under Sessions panel, choose a session and click `details`.
4. Click `[] force focus intro`.
5. Open quiz page `BASE_URL/pages/launch.php`.

### Collecting answers
1. Edit `gmeet.user.js`. Change `const baseURL` to your base URL.
2. Install userscript manager extension on your browser (e.g. [Tampermonkey](https://www.tampermonkey.net/)/[Greasemonkey](https://www.greasespot.net/)).
3. Install `gmeet.user.js`