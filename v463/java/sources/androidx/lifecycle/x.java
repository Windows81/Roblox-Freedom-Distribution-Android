package androidx.lifecycle;

import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<String, u> f2153a = new HashMap<>();

    final void a(String str, u uVar) {
        u uVarPut = this.f2153a.put(str, uVar);
        if (uVarPut != null) {
            uVarPut.a();
        }
    }

    final u a(String str) {
        return this.f2153a.get(str);
    }

    public final void a() {
        Iterator<u> it = this.f2153a.values().iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f2153a.clear();
    }
}
