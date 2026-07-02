package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class e implements Comparator<Scope> {
    e() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Scope scope, Scope scope2) {
        return scope.a().compareTo(scope2.a());
    }
}
