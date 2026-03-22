package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class asa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, arz> f4422a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final asb f4423b;

    public asa(asb asbVar) {
        this.f4423b = asbVar;
    }

    public final asb a() {
        return this.f4423b;
    }

    public final void a(String str, arz arzVar) {
        this.f4422a.put(str, arzVar);
    }

    public final void a(String str, String str2, long j) {
        asb asbVar = this.f4423b;
        arz arzVar = this.f4422a.get(str2);
        String[] strArr = {str};
        if (asbVar != null && arzVar != null) {
            asbVar.a(arzVar, j, strArr);
        }
        Map<String, arz> map = this.f4422a;
        asb asbVar2 = this.f4423b;
        map.put(str, asbVar2 == null ? null : asbVar2.a(j));
    }
}
