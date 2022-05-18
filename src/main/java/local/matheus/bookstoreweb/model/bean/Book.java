/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package local.matheus.bookstoreweb.model.bean;

/**
 *
 * @author devsys-b
 */
public class Book {
    private int id;
    private String titulo;
    private String autor;
    private double preco;

    public Book() {
    }

    public Book(int id, String titulo, String autor, double preco) {
        this.id = id;
        this.titulo = titulo;
        this.autor = autor;
        this.preco = preco;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    @Override
    public String toString() {
        return "Book{" + "id=" + id + ", titulo=" + titulo + ", autor=" + autor + ", preco=" + preco + '}';
    }
    
    
    
    
}
