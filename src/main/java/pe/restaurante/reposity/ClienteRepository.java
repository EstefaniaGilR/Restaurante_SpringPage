package pe.restaurante.reposity;

import org.springframework.data.jpa.repository.JpaRepository;
import pe.restaurante.entity.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente,Integer>{

}
