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
public class TestThreadTwice1 extends Thread{

    @Override
    public void run() {
        System.out.println("running...");
    }
 
    public static void main(String[] args) {
        TestThreadTwice1 t1 = new TestThreadTwice1();
        t1.start();
        t1.start();
    }
    
    
}
