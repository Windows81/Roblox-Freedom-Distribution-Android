package com.roblox.client.jni;

import android.content.Context;
import b.ac;
import com.roblox.client.b.c;
import com.roblox.client.i.h;
import com.roblox.engine.jni.SessionReporterJavaInterface;
import com.roblox.platform.g;
import com.roblox.platform.http.postbody.SessionReportPostBody;
import d.d;
import d.l;

/* JADX INFO: loaded from: classes.dex */
public class b implements SessionReporterJavaInterface.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f7263a;

    public b(Context context) {
        f7263a = context.getFilesDir().getAbsolutePath();
    }

    @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
    public void a(String str, String str2, String str3, long j) {
        boolean z;
        try {
            Long.parseLong(str3);
            z = true;
        } catch (NumberFormatException e) {
            z = false;
        }
        if (z && !com.roblox.client.b.ca()) {
            c.a(str, str2);
        } else {
            c.a(str, str2, str3, Long.valueOf(j));
        }
    }

    @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
    public void a(String str, long j) {
        g.a().a().a(new SessionReportPostBody(str, j)).a(new d<ac>() { // from class: com.roblox.client.jni.b.1
            @Override // d.d
            public void a(d.b<ac> bVar, l<ac> lVar) {
                com.roblox.client.util.g.c("rbx.jni", "sendSessionReport() success:" + lVar.c());
            }

            @Override // d.d
            public void a(d.b<ac> bVar, Throwable th) {
            }
        });
    }

    @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
    public String a() {
        return f7263a;
    }

    @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
    public String b() {
        return "2.347.225742";
    }

    @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
    public String c() {
        return com.roblox.client.q.d.a().f();
    }

    @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
    public String d() {
        return Long.toString(h.a().b());
    }
}
