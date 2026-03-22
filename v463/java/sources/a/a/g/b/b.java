package a.a.g.b;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    public static Map<String, Object> a(Object obj, Map<String, Object> map) {
        HashMap map2 = new HashMap();
        map2.put("Environment Variables", System.getenv());
        if (map != null) {
            map2.putAll(map);
        }
        map2.put("Exception", new a(obj));
        return map2;
    }
}
