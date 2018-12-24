<?php

    class Skills {

        private $title = 'Заголовок';
        private $level = 'Ссылка';

        public function getTitle() {
            return $this->title;
        }

        public function getLevel() {
            return $this->level;
        }

        public function __construct(string $title, string $level) {
            $this->title = $title;
            $this->level = $level;
        }

    }

    class Projects {

        private $title = 'Заголовок';
        private $link = 'Ссылка';
        private $about = 'Описание';

        public function getTitle() {
            return $this->title;
        }

        public function getLink() {
            return $this->link;
        }

        public function getAbout() {
            return $this->about;
        }

        public function __construct(string $title, string $link, string $about) {
            $this->title = $title;
            $this->link = $link;
            $this->about = $about;
        }

    }

    class Experiences {

        private $title = 'Заголовок';
        private $post = 'Должность';
        private $city = 'Город';
        private $company = 'Компания';
        private $about = 'Описание';
        public $yearStart = 'Дата приема на работу';
        public $yearEnd = 'Дата увольнения';

        public function getTitle() {
            return $this->title;
        }

        public function getPost() {
            return $this->post;
        }

        public function getCity() {
            return $this->city;
        }

        public function getCompany() {
            return $this->company;
        }

        public function getAbout() {
            return $this->about;
        }

        public function getYearStart() {
            return $this->yearStart;
        }

        public function getYearEnd() {
            return $this->yearEnd;
        }

        public function __construct(string $title, string $post, string $city, string $company, string $about, string $yearStart, string $yearEnd) {
            $this->title = $title;
            $this->post = $post;
            $this->city = $city;
            $this->company = $company;
            $this->about = $about;
            $this->yearStart = $yearStart;
            $this->yearEnd = $yearEnd;
        }

    }

    class Interests {
        private $title = 'Интерес';

        public function getTitle() {
            return $this->title;
        }

        public function __construct(string $title) {
            $this->title = $title;
        }

    }

    class Languages {

        private $title = 'Язык';
        private $level = 'Уровень знания языка';

        public function getTitle() {
            return $this->title;
        }

        public function getLevel() {
            return $this->level;
        }

        public function __construct(string $title, string $level) {
            $this->title = $title;
            $this->level = $level;
        }

    }

    class Education {

        private $title = 'Наименование';
        private $speciality = 'Специализация';
        public $yearStart = 'Год поступления';
        public $yearEnd = 'Год окончания';

        public function getTitle() {
            return $this->title;
        }

        public function getSpeciality() {
            return $this->speciality;
        }

        public function getYearStart() {
            return $this->yearStart;
        }

        public function getYearEnd() {
            return $this->yearEnd;
        }

        public function __construct(string $title, string $speciality, string $yearStart, string $yearEnd) {
            $this->title = $title;
            $this->speciality = $speciality;
            $this->yearStart = $yearStart;
            $this->yearEnd = $yearEnd;
        }

    }

    class Person {

        private $name = 'Имя не введено';
        private $lastName = 'Фамилия не введена';
        private $photo = 'Нет фото';
        private $email = 'myemail@example.com';
        private $phone = 'Номер телефона не введен';
        private $site = 'mysite.com/';
        private $profession = 'Профессия';
        private $about = 'Обо мне';

        private $education = [];
        private $languages = [];
        private $interests = [];
        private $experiences = [];
        private $projects = [];
        private $skills = [];

        public function getSortedDESC(array $array, $startKey = 'yearStart', $endKey = 'yearEnd') {
            $start = array_column($array, $startKey);
            $end = array_column($array, $endKey);

            array_multisort($start, SORT_DESC, $end, SORT_DESC, $array);

            return $array;
        }

        public function getName() {
            return $this->name;
        }

        public function getLastName() {
            return $this->lastName;
        }

        public function getPhoto() {
            return $this->photo;
        }

        public function getEmail() {
            return $this->email;
        }

        public function getPhone() {
            return $this->phone;
        }

        public function getSite() {
            return $this->site;
        }

        public function getProfession() {
            return $this->profession;
        }

        public function getAbout() {
            return $this->about;
        }

        public function getFullName() {
            return "{$this->getName()} {$this->getLastName()}";
        }

        public function __construct(string $name, string $lastName, string $photo, string $email, string $phone, string $site, string $profession, string $about) {
            $this->name = $name;
            $this->lastName = $lastName;
            $this->photo = $photo;
            $this->email = $email;
            $this->phone = $phone;
            $this->site = $site;
            $this->profession = $profession;
            $this->about = $about;
        }

        public function addEducation(Education $education) {
            $this->education[spl_object_id($education)] = $education;
        }

        public function removeEducation(Education $education) {
            $objectId = spl_object_id($education);
            if (in_array($objectId, $this->education)) {
                unset($this->education[$objectId]);
            }
        }

        public function getAllEducation() {
            return $this->getSortedDESC($this->education);
        }

        public function addLanguages(Languages $languages) {
            $this->languages[spl_object_id($languages)] = $languages;
        }

        public function removeLanguages(Languages $languages) {
            $objectId = spl_object_id($languages);
            if (in_array($objectId, $this->languages)) {
                unset($this->languages[$objectId]);
            }
        }

        public function getAllLanguages() {
            return $this->languages;
        }

        public function addInterests(Interests $interests) {
            $this->interests[spl_object_id($interests)] = $interests;
        }

        public function removeInterests(Interests $interests) {
            $objectId = spl_object_id($interests);
            if (in_array($objectId, $this->interests)) {
                unset($this->interests[$objectId]);
            }
        }

        public function getAllInterests() {
            return $this->interests;
        }

        public function addExperiences(Experiences $experiences) {
            $this->experiences[spl_object_id($experiences)] = $experiences;
        }

        public function removeExperiences(Experiences $experiences) {
            $objectId = spl_object_id($experiences);
            if (in_array($objectId, $this->experiences)) {
                unset($this->experiences[$objectId]);
            }
        }

        public function getAllExperiences() {
            return $this->getSortedDESC($this->experiences);
        }

        public function addProjects(Projects $project) {
            $this->projects[spl_object_id($project)] = $project;
        }

        public function removeProjects(Projects $project) {
            $objectId = spl_object_id($project);
            if (in_array($objectId, $this->projects)) {
                unset($this->projects[$objectId]);
            }
        }

        public function getAllProjects() {
            return $this->projects;
        }

        public function addSkills(Skills $skill) {
            $this->skills[spl_object_id($skill)] = $skill;
        }

        public function removeSkills(Skills $skill) {
            $objectId = spl_object_id($skill);
            if (in_array($objectId, $this->skills)) {
                unset($this->skills[$objectId]);
            }
        }

        public function getAllSkills() {
            return $this->skills;
        }

    }