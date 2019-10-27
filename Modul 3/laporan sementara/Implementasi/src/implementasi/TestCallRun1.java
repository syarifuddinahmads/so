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
public class TestCallRun1 extends Thread{

    @Override
    public void run() {
        System.out.println("running...");
    }
    
    public static void main(String[] args) {
        TestCallRun1 t1 = new TestCallRun1();
        t1.start();// fine, but does not start a sparate call stack
    }
    
}
