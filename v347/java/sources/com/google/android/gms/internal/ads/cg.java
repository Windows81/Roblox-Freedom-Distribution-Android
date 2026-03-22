package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.roblox.client.RobloxSettings;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class cg implements ck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f4896a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ck f4897b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ck f4898c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f4899d;
    private final Context e;
    private final WeakHashMap<Thread, Boolean> f;
    private final ExecutorService g;
    private final zzang h;

    private cg(Context context) {
        this(context, zzang.a());
    }

    private cg(Context context, zzang zzangVar) {
        this.f4899d = new Object();
        this.f = new WeakHashMap<>();
        this.g = Executors.newCachedThreadPool();
        this.e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.h = zzangVar;
    }

    private final Uri.Builder a(String str, String str2, String str3, int i) {
        boolean zA = false;
        try {
            zA = com.google.android.gms.common.c.c.b(this.e).a();
        } catch (Throwable th) {
            mj.b("Error fetching instant app info", th);
        }
        String packageName = "unknown";
        try {
            packageName = this.e.getPackageName();
        } catch (Throwable th2) {
            mj.e("Cannot obtain package name, proceeding.");
        }
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(zA)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter(RobloxSettings.API_SUB_DOMAIN, String.valueOf(Build.VERSION.SDK_INT));
        String str4 = Build.MANUFACTURER;
        String string = Build.MODEL;
        if (!string.startsWith(str4)) {
            string = new StringBuilder(String.valueOf(str4).length() + 1 + String.valueOf(string).length()).append(str4).append(" ").append(string).toString();
        }
        return builderAppendQueryParameter.appendQueryParameter("device", string).appendQueryParameter("js", this.h.f5784a).appendQueryParameter("appid", packageName).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", aro.a())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "193400285").appendQueryParameter("rc", "dev").appendQueryParameter("session_id", aoo.c()).appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(aoo.f().a(aro.dj)));
    }

    public static ck a(Context context) {
        synchronized (f4896a) {
            if (f4897b == null) {
                if (((Boolean) aoo.f().a(aro.f4400b)).booleanValue()) {
                    f4897b = new cg(context);
                } else {
                    f4897b = new cl();
                }
            }
        }
        return f4897b;
    }

    public static ck a(Context context, zzang zzangVar) {
        synchronized (f4896a) {
            if (f4898c == null) {
                if (((Boolean) aoo.f().a(aro.f4400b)).booleanValue()) {
                    cg cgVar = new cg(context, zzangVar);
                    Thread thread = Looper.getMainLooper().getThread();
                    if (thread != null) {
                        synchronized (cgVar.f4899d) {
                            cgVar.f.put(thread, true);
                        }
                        thread.setUncaughtExceptionHandler(new ci(cgVar, thread.getUncaughtExceptionHandler()));
                    }
                    Thread.setDefaultUncaughtExceptionHandler(new ch(cgVar, Thread.getDefaultUncaughtExceptionHandler()));
                    f4898c = cgVar;
                } else {
                    f4898c = new cl();
                }
            }
        }
        return f4898c;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void a(java.lang.Thread r11, java.lang.Throwable r12) {
        /*
            r10 = this;
            r1 = 1
            r3 = 0
            if (r12 == 0) goto L48
            r2 = r3
            r0 = r3
            r5 = r12
        L7:
            if (r5 == 0) goto L3a
            java.lang.StackTraceElement[] r6 = r5.getStackTrace()
            int r7 = r6.length
            r4 = r3
        Lf:
            if (r4 >= r7) goto L34
            r8 = r6[r4]
            java.lang.String r9 = r8.getClassName()
            boolean r9 = com.google.android.gms.internal.ads.ly.b(r9)
            if (r9 == 0) goto L1e
            r0 = r1
        L1e:
            java.lang.Class r9 = r10.getClass()
            java.lang.String r9 = r9.getName()
            java.lang.String r8 = r8.getClassName()
            boolean r8 = r9.equals(r8)
            if (r8 == 0) goto L31
            r2 = r1
        L31:
            int r4 = r4 + 1
            goto Lf
        L34:
            java.lang.Throwable r4 = r5.getCause()
            r5 = r4
            goto L7
        L3a:
            if (r0 == 0) goto L48
            if (r2 != 0) goto L48
        L3e:
            if (r1 == 0) goto L47
            java.lang.String r0 = ""
            r1 = 1065353216(0x3f800000, float:1.0)
            r10.a(r12, r0, r1)
        L47:
            return
        L48:
            r1 = r3
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cg.a(java.lang.Thread, java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.ck
    public final void a(Throwable th, String str) {
        a(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.ck
    public final void a(Throwable th, String str, float f) {
        if (ly.a(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        zd.a(th, new PrintWriter(stringWriter));
        String string = stringWriter.toString();
        boolean z = Math.random() < ((double) f);
        int i = f > 0.0f ? (int) (1.0f / f) : 1;
        if (z) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(a(name, string, str, i).toString());
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                this.g.submit(new cj(this, new mk(), (String) obj));
            }
        }
    }
}
