package com.b.a.a.g;

import com.b.a.a.g.a.k;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum i {
    CALLBACK(com.b.a.a.g.a.b.class, 0),
    CANCEL_RESULT_CALLBACK(com.b.a.a.g.a.d.class, 0),
    RUN_JOB(com.b.a.a.g.a.i.class, 0),
    COMMAND(com.b.a.a.g.a.e.class, 0),
    PUBLIC_QUERY(com.b.a.a.g.a.h.class, 0),
    JOB_CONSUMER_IDLE(com.b.a.a.g.a.g.class, 0),
    ADD_JOB(com.b.a.a.g.a.a.class, 1),
    CANCEL(com.b.a.a.g.a.c.class, 1),
    CONSTRAINT_CHANGE(com.b.a.a.g.a.f.class, 2),
    RUN_JOB_RESULT(com.b.a.a.g.a.j.class, 3),
    SCHEDULER(k.class, 4);

    static final Map<Class<? extends b>, i> m = new HashMap();
    static final int o;
    final Class<? extends b> l;
    final int n;

    static {
        int i = 0;
        for (i iVar : values()) {
            m.put(iVar.l, iVar);
            if (iVar.n > i) {
                i = iVar.n;
            }
        }
        o = i;
    }

    i(Class cls, int i) {
        this.l = cls;
        this.n = i;
    }
}
