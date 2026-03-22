package a.a.g.b;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final transient String f445b = f.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, e> f446a = new HashMap();

    public f(ArrayList<a.a.g.d> arrayList) {
        a.a.f.a.a(f445b, "Initialization source code data");
        if (arrayList == null || arrayList.size() == 0) {
            a.a.f.a.b(f445b, "Exception stack is null or empty");
            return;
        }
        for (a.a.g.d dVar : arrayList) {
            if (dVar == null || dVar.f462c.equals("")) {
                a.a.f.a.b(f445b, "Stack frame is null or sourceCode is empty");
            } else {
                this.f446a.put(dVar.f462c, new e(dVar));
            }
        }
    }
}
