package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ht;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.zzael;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class bu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ht f3075c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzael f3076d;

    public bu(Context context, ht htVar, zzael zzaelVar) {
        this.f3073a = context;
        this.f3075c = htVar;
        this.f3076d = zzaelVar;
        if (this.f3076d == null) {
            this.f3076d = new zzael();
        }
    }

    private final boolean c() {
        return (this.f3075c != null && this.f3075c.a().f) || this.f3076d.f5766a;
    }

    public final void a() {
        this.f3074b = true;
    }

    public final void a(String str) {
        if (c()) {
            if (str == null) {
                str = "";
            }
            if (this.f3075c != null) {
                this.f3075c.a(str, null, 3);
                return;
            }
            if (!this.f3076d.f5766a || this.f3076d.f5767b == null) {
                return;
            }
            for (String str2 : this.f3076d.f5767b) {
                if (!TextUtils.isEmpty(str2)) {
                    String strReplace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    aw.e();
                    jm.a(this.f3073a, "", strReplace);
                }
            }
        }
    }

    public final boolean b() {
        return !c() || this.f3074b;
    }
}
