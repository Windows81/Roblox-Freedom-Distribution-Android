package com.roblox.client.q;

import android.content.Context;
import c.ad;
import com.roblox.client.ae.k;
import com.roblox.client.analytics.d;
import com.roblox.client.s.h;
import com.roblox.platform.http.postbody.SessionReportPostBody;
import com.roblox.platform.i;
import e.l;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements com.roblox.engine.jni.reporter.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f6898a;

    @Override // com.roblox.engine.jni.reporter.a
    public String b() {
        return "2.463.417712";
    }

    public b(Context context) {
        f6898a = context.getFilesDir().getAbsolutePath();
    }

    @Override // com.roblox.engine.jni.reporter.a
    public void a(String str, String str2, String str3, long j) {
        boolean z;
        try {
            Long.parseLong(str3);
            z = true;
        } catch (NumberFormatException unused) {
            z = false;
        }
        if (z && !com.roblox.client.b.bh()) {
            d.a(str, str2);
        } else {
            d.a(str, str2, str3, Long.valueOf(j));
        }
    }

    @Override // com.roblox.engine.jni.reporter.a
    public void a(String str, String str2) {
        long j;
        try {
            j = Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            k.d("rbx.jni", "sendSessionReport() could not parse placeId");
            j = -1;
        }
        i.a().a().a(new SessionReportPostBody(str, j)).a(new e.d<ad>() { // from class: com.roblox.client.q.b.1
            @Override // e.d
            public void a(e.b<ad> bVar, Throwable th) {
            }

            @Override // e.d
            public void a(e.b<ad> bVar, l<ad> lVar) {
                k.c("rbx.jni", "sendSessionReport() success:" + lVar.d());
            }
        });
    }

    @Override // com.roblox.engine.jni.reporter.a
    public String a() {
        return f6898a;
    }

    @Override // com.roblox.engine.jni.reporter.a
    public String c() {
        return com.roblox.client.ad.c.a().e();
    }

    @Override // com.roblox.engine.jni.reporter.a
    public String d() {
        return Long.toString(h.a().b());
    }
}
