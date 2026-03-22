package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.util.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5133c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5135e;
    private final String f;
    private final String g;

    private c(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        aa.a(!o.a(str), "ApplicationId must be set.");
        this.f5132b = str;
        this.f5131a = str2;
        this.f5133c = str3;
        this.f5134d = str4;
        this.f5135e = str5;
        this.f = str6;
        this.g = str7;
    }

    public static c a(Context context) {
        ae aeVar = new ae(context);
        String strA = aeVar.a("google_app_id");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return new c(strA, aeVar.a("google_api_key"), aeVar.a("firebase_database_url"), aeVar.a("ga_trackingId"), aeVar.a("gcm_defaultSenderId"), aeVar.a("google_storage_bucket"), aeVar.a("project_id"));
    }

    public final String a() {
        return this.f5132b;
    }

    public final String b() {
        return this.f5135e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return y.a(this.f5132b, cVar.f5132b) && y.a(this.f5131a, cVar.f5131a) && y.a(this.f5133c, cVar.f5133c) && y.a(this.f5134d, cVar.f5134d) && y.a(this.f5135e, cVar.f5135e) && y.a(this.f, cVar.f) && y.a(this.g, cVar.g);
    }

    public final int hashCode() {
        return y.a(this.f5132b, this.f5131a, this.f5133c, this.f5134d, this.f5135e, this.f, this.g);
    }

    public final String toString() {
        return y.a(this).a("applicationId", this.f5132b).a("apiKey", this.f5131a).a("databaseUrl", this.f5133c).a("gcmSenderId", this.f5135e).a("storageBucket", this.f).a("projectId", this.g).toString();
    }
}
