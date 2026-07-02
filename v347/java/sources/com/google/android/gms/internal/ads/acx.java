package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
final class acx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final acx f3808a = new acx();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ade f3809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentMap<Class<?>, add<?>> f3810c = new ConcurrentHashMap();

    private acx() {
        ade adeVarA = null;
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        for (int i = 0; i <= 0; i++) {
            adeVarA = a(strArr[0]);
            if (adeVarA != null) {
                break;
            }
        }
        this.f3809b = adeVarA == null ? new abz() : adeVarA;
    }

    public static acx a() {
        return f3808a;
    }

    private static ade a(String str) {
        try {
            return (ade) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    public final <T> add<T> a(Class<T> cls) {
        abf.a(cls, "messageType");
        add<T> addVar = (add) this.f3810c.get(cls);
        if (addVar != null) {
            return addVar;
        }
        add<T> addVarA = this.f3809b.a(cls);
        abf.a(cls, "messageType");
        abf.a(addVarA, "schema");
        add<T> addVar2 = (add) this.f3810c.putIfAbsent(cls, addVarA);
        return addVar2 != null ? addVar2 : addVarA;
    }

    public final <T> add<T> a(T t) {
        return a((Class) t.getClass());
    }
}
