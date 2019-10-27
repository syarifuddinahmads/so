/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package implementasi;

/**
 *
 * @author udin
 */
public class ImplementsRunnable implements Runnable{
    
    @Override
    public void run(){
        System.out.println("Sedang berjalan...");
    }
    
    public static void main(String[] args) {
        ImplementsRunnable mi = new ImplementsRunnable();
        Thread tl = new Thread(mi);
        tl.start();
    }
}
