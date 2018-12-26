<?php

    define('BAD_WORD', 'редиска');

    //Вывод сообщения при ошибке
    function feedbackError($msg = '', $subMsg = '') {
        return "<div class=\"alert alert-danger\" role=\"alert\">
                <h4 class=\"alert-heading\">Ошибка!</h4>
                <p>$msg</p>
                <hr>
                <p class=\"mb-0\">$subMsg</p>
            </div>";
    }

    //Вывод сообщения при выполнении без ошибок
    function feedbackSuccess($msg = '', $subMsg = '') {
        return "<div class=\"alert alert-success\" role=\"alert\">
                <h4 class=\"alert-heading\">Отлично!</h4>
                <p>$msg</p>
                <hr>
                <p class=\"mb-0\">$subMsg</p>
            </div>";
    }

    $userMessage = ''; //Сообщение для пользователя, необходимо текст сообщения оборачивать тегом <div>

    $connection = new mysqli('localhost','root','','academy_2');
    $profile = $connection->query('SELECT * FROM `profile`');
    $profile = $profile->fetch_assoc();
    $educations = $connection->query('SELECT * FROM `education` ORDER BY yearEnd = "" DESC, yearEnd DESC'); //Если yearEnd пуст, то выводим первым
    $languages = $connection->query('SELECT * FROM `languages`');
    $interests = $connection->query('SELECT * FROM `interests`');
    $about = $connection->query('SELECT * FROM `about`');
    $about = $about->fetch_assoc();
    $experiences = $connection->query('SELECT * FROM `experiences` ORDER BY yearEnd IS NULL DESC, yearEnd DESC'); //Если yearEnd NULL, то выводим первым
    $projects = $connection->query('SELECT * FROM `projects`');
    $skills = $connection->query('SELECT * FROM `skills`');

    if ($_POST['comment']) {
        //Удалим HTML из отзыва, и преобразуем спец. символы в HTML сущьности.
        $comment = htmlspecialchars(strip_tags($_POST['comment']), ENT_QUOTES);
        $name = htmlspecialchars(strip_tags($_POST['name']), ENT_QUOTES);

        //Добавляем текущее время и дату
        $date = date('d.m.Y H:i:s');

        //Проверим, нет ли уже такого отзыва
        $duplicateTest = $connection->query("SELECT count(*) FROM `comments` WHERE `comment` = '$comment' AND `name` = '$name'");
        $duplicateTest = $duplicateTest->fetch_all();

        if ($duplicateTest[0][0] > 0) { //Если такой отзыв есть, не записываем его и выводим сообщение пользователю
            $userMessage = feedbackError('Такой отзыв уже есть.', 'Вы можете оставить новый отзыв.');
        } else if (mb_stripos($comment, BAD_WORD) !== FALSE) {
            $userMessage = feedbackError('Нельзя использовать слово "' . BAD_WORD . '".', 'Вы можете оставить новый отзыв.');
        } else {
            $connection->query("INSERT INTO `comments` (`comment`, `name`, `date`) VALUES ('$comment', '$name', '$date')");
            $userMessage = feedbackSuccess('Ваш отзыв добавлен.', 'Вы можете оставить новый отзыв.');
        }

    }

    $commentsOfUsers = $connection->query("SELECT * FROM `comments` WHERE `comment` NOT LIKE '%редиска%' ORDER BY `date` DESC");