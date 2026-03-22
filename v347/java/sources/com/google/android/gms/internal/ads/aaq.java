package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aaq {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<aar, abd.d<?, ?>> f3718d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f3716b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class<?> f3717c = b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final aaq f3715a = new aaq(true);

    aaq() {
        this.f3718d = new HashMap();
    }

    private aaq(boolean z) {
        this.f3718d = Collections.emptyMap();
    }

    public static aaq a() {
        return aap.a();
    }

    private static Class<?> b() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public final <ContainingType extends ack> abd.d<ContainingType, ?> a(ContainingType containingtype, int i) {
        return (abd.d) this.f3718d.get(new aar(containingtype, i));
    }
}
