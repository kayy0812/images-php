<?php

namespace Kayy0812\GirlsApi;

use PDO;
use PDOException;
class Database {
    private $db = null;

    public function __construct() {
        $host = DB_HOST;
        $port = DB_PORT;
        $db   = DB_NAME;
        $user = DB_USER;
        $pass = DB_PASS;
        try {
            $this->db = new PDO(
                "mysql:host=$host;port=$port;dbname=$db",
                $user,
                $pass,
                array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
            );
        } catch (PDOException $e) {
            exit($e->getMessage());
        }
    }

    public function connect(){
        return $this->db;
    }
}