package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class kq extends ia {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5223a;

    private kq(Context context, qh qhVar) {
        super(qhVar);
        this.f5223a = context;
    }

    public static aze a(Context context) {
        aze azeVar = new aze(new ld(new File(context.getCacheDir(), "admob_volley")), new kq(context, new ri()));
        azeVar.a();
        return azeVar;
    }

    @Override // com.google.android.gms.internal.ads.ia, com.google.android.gms.internal.ads.aqn
    public final atf a(avg<?> avgVar) throws df {
        if (avgVar.h() && avgVar.c() == 0) {
            if (Pattern.matches((String) aoo.f().a(aro.cJ), avgVar.e())) {
                aoo.a();
                if (ly.c(this.f5223a)) {
                    atf atfVarA = new awo(this.f5223a).a(avgVar);
                    if (atfVarA != null) {
                        String strValueOf = String.valueOf(avgVar.e());
                        jd.a(strValueOf.length() != 0 ? "Got gmscore asset response: ".concat(strValueOf) : new String("Got gmscore asset response: "));
                        return atfVarA;
                    }
                    String strValueOf2 = String.valueOf(avgVar.e());
                    jd.a(strValueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(strValueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.a(avgVar);
    }
}
