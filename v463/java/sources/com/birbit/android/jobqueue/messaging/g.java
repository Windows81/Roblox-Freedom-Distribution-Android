package com.birbit.android.jobqueue.messaging;

import com.birbit.android.jobqueue.messaging.a.i;
import com.birbit.android.jobqueue.messaging.a.j;
import com.birbit.android.jobqueue.messaging.a.k;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum g {
    CALLBACK(com.birbit.android.jobqueue.messaging.a.b.class, 0),
    CANCEL_RESULT_CALLBACK(com.birbit.android.jobqueue.messaging.a.d.class, 0),
    RUN_JOB(i.class, 0),
    COMMAND(com.birbit.android.jobqueue.messaging.a.e.class, 0),
    PUBLIC_QUERY(com.birbit.android.jobqueue.messaging.a.h.class, 0),
    JOB_CONSUMER_IDLE(com.birbit.android.jobqueue.messaging.a.g.class, 0),
    ADD_JOB(com.birbit.android.jobqueue.messaging.a.a.class, 1),
    CANCEL(com.birbit.android.jobqueue.messaging.a.c.class, 1),
    CONSTRAINT_CHANGE(com.birbit.android.jobqueue.messaging.a.f.class, 2),
    RUN_JOB_RESULT(j.class, 3),
    SCHEDULER(k.class, 4);

    static final Map<Class<? extends b>, g> m = new HashMap();
    static final int o;
    final Class<? extends b> l;
    final int n;

    static {
        int i = 0;
        for (g gVar : values()) {
            m.put(gVar.l, gVar);
            int i2 = gVar.n;
            if (i2 > i) {
                i = i2;
            }
        }
        o = i;
    }

    g(Class cls, int i) {
        this.l = cls;
        this.n = i;
    }
}
