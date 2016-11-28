package br.com.projeto.web.daos;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.projeto.web.models.AbstractEntity;

interface Repository<T extends AbstractEntity> extends JpaRepository<T, Long> {

}
