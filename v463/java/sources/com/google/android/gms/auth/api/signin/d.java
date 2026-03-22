package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final /* synthetic */ class d implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Comparator f3390a = new d();

    private d() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((Scope) obj).a().compareTo(((Scope) obj2).a());
    }
}
