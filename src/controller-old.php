<?php
$dsn = 'mysql:host='.SERVER.';dbname='.BASE;

try 
{
    $conn=new PDO($dsn, USER, PASSWD);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} 
catch (PDOException $e) 
{
    echo "Connection failed: ".$e->getMessage();
}


if(!empty($_POST) && isset($_POST))
{
    $id = null;
    $name = $_POST['name'];
    $number = $_POST['number'];
    $type = $_POST['types'];
    $image = $_POST['image'];
    $captured = (int) $_POST['captured'];

   

    if(isset($_POST['types']))
    {
        if(!empty($_POST['types']))
        {

            $nbTypes = count($type) -1;
            $types = "";
            foreach($type as $cle => $value)
            {
                if($cle < $nbTypes)
                {
                   $types = serialize("['$value', ");
                }
                else
                {
                    $types .= '"'.$value.'"]';
                }
            }
        }
    }
    try
    {
        $sqlInsert = "INSERT INTO pokemon (id, name, number, types, image, is_captured, seen_at) VALUES (:id, :name, :number, :types, :image, :is_captured, now())";
        $prep= $conn->prepare($sqlInsert);
        $prep->bindParam(':id', $id);
        $prep->bindParam(':name', $name);
        $prep->bindParam(':number', $number);
        $prep->bindParam(':types', $types);
        $prep->bindParam(':image', $image);
        $prep->bindParam(':is_captured', $captured);
        $prep->execute();
      
        
    }
    catch (PDOException $e) 
    {
        echo "Pb insertion: ".$e->getMessage();
    }

}
    echo "Yatta, de nouveau pokémon ont été ajouté !";

?>
<a href="pokedex.php">Home</a>