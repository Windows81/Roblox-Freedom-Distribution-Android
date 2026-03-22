package go;

import android.app.Application;
import android.content.Context;
import java.util.logging.Logger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LoadJNI {
    public static final Object ctx;
    private static Logger log = Logger.getLogger("GoLoadJNI");

    static {
        System.loadLibrary("gojni");
        Context applicationContext = null;
        try {
            try {
                applicationContext = ((Application) Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", new Class[0]).invoke(null, new Object[0])).getApplicationContext();
            } catch (Exception e2) {
                log.warning("Global context not found: " + e2);
            }
        } finally {
            ctx = null;
        }
    }
}
