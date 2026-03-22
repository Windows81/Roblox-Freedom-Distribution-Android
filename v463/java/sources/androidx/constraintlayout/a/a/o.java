package androidx.constraintlayout.a.a;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class o {
    HashSet<o> h = new HashSet<>(2);
    int i = 0;

    public void a() {
    }

    public void a(o oVar) {
        this.h.add(oVar);
    }

    public void b() {
        this.i = 0;
        this.h.clear();
    }

    public void e() {
        this.i = 0;
        Iterator<o> it = this.h.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    public void f() {
        this.i = 1;
        Iterator<o> it = this.h.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public boolean g() {
        return this.i == 1;
    }
}
