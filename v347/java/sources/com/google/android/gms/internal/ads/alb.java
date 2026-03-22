package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
@TargetApi(14)
public final class alb extends Thread {
    private final akw e;
    private final ck f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4151a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4152b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4153c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f4154d = new Object();
    private final int h = ((Integer) aoo.f().a(aro.R)).intValue();
    private final int i = ((Integer) aoo.f().a(aro.S)).intValue();
    private final int j = ((Integer) aoo.f().a(aro.T)).intValue();
    private final int k = ((Integer) aoo.f().a(aro.U)).intValue();
    private final int l = ((Integer) aoo.f().a(aro.X)).intValue();
    private final int m = ((Integer) aoo.f().a(aro.Z)).intValue();
    private final int n = ((Integer) aoo.f().a(aro.aa)).intValue();
    private final int g = ((Integer) aoo.f().a(aro.V)).intValue();
    private final String o = (String) aoo.f().a(aro.ac);
    private final boolean p = ((Boolean) aoo.f().a(aro.ae)).booleanValue();

    public alb(akw akwVar, ck ckVar) {
        this.e = akwVar;
        this.f = ckVar;
        setName("ContentFetchTask");
    }

    private final alf a(View view, akv akvVar) {
        boolean z;
        int i = 0;
        if (view == null) {
            return new alf(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new alf(this, 0, 0);
            }
            akvVar.b(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new alf(this, 1, 0);
        }
        if ((view instanceof WebView) && !(view instanceof qd)) {
            akvVar.g();
            WebView webView = (WebView) view;
            if (com.google.android.gms.common.util.n.g()) {
                akvVar.g();
                webView.post(new ald(this, akvVar, webView, globalVisibleRect));
                z = true;
            } else {
                z = false;
            }
            return z ? new alf(this, 0, 1) : new alf(this, 0, 0);
        }
        if (!(view instanceof ViewGroup)) {
            return new alf(this, 0, 0);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i2 = 0;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            alf alfVarA = a(viewGroup.getChildAt(i3), akvVar);
            i2 += alfVarA.f4162a;
            i += alfVarA.f4163b;
        }
        return new alf(this, i2, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        if (r0.importance != 100) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        if (r1.inKeyguardRestrictedInputMode() != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
    
        r0 = (android.os.PowerManager) r3.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
    
        if (r0 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0059, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005a, code lost:
    
        if (r0 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
    
        r0 = r0.isScreenOn();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean e() {
        /*
            r2 = 0
            com.google.android.gms.internal.ads.akx r0 = com.google.android.gms.ads.internal.aw.h()     // Catch: java.lang.Throwable -> L65
            android.content.Context r3 = r0.b()     // Catch: java.lang.Throwable -> L65
            if (r3 != 0) goto Ld
            r0 = r2
        Lc:
            return r0
        Ld:
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r3.getSystemService(r0)     // Catch: java.lang.Throwable -> L65
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Throwable -> L65
            java.lang.String r1 = "keyguard"
            java.lang.Object r1 = r3.getSystemService(r1)     // Catch: java.lang.Throwable -> L65
            android.app.KeyguardManager r1 = (android.app.KeyguardManager) r1     // Catch: java.lang.Throwable -> L65
            if (r0 == 0) goto L21
            if (r1 != 0) goto L23
        L21:
            r0 = r2
            goto Lc
        L23:
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L65
            if (r0 != 0) goto L2b
            r0 = r2
            goto Lc
        L2b:
            java.util.Iterator r4 = r0.iterator()     // Catch: java.lang.Throwable -> L65
        L2f:
            boolean r0 = r4.hasNext()     // Catch: java.lang.Throwable -> L65
            if (r0 == 0) goto L63
            java.lang.Object r0 = r4.next()     // Catch: java.lang.Throwable -> L65
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: java.lang.Throwable -> L65
            int r5 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L65
            int r6 = r0.pid     // Catch: java.lang.Throwable -> L65
            if (r5 != r6) goto L2f
            int r0 = r0.importance     // Catch: java.lang.Throwable -> L65
            r4 = 100
            if (r0 != r4) goto L63
            boolean r0 = r1.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> L65
            if (r0 != 0) goto L63
            java.lang.String r0 = "power"
            java.lang.Object r0 = r3.getSystemService(r0)     // Catch: java.lang.Throwable -> L65
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: java.lang.Throwable -> L65
            if (r0 != 0) goto L5e
            r0 = r2
        L5a:
            if (r0 == 0) goto L63
            r0 = 1
            goto Lc
        L5e:
            boolean r0 = r0.isScreenOn()     // Catch: java.lang.Throwable -> L65
            goto L5a
        L63:
            r0 = r2
            goto Lc
        L65:
            r0 = move-exception
            com.google.android.gms.internal.ads.in r1 = com.google.android.gms.ads.internal.aw.i()
            java.lang.String r3 = "ContentFetchTask.isInForeground"
            r1.a(r0, r3)
            r0 = r2
            goto Lc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.alb.e():boolean");
    }

    private final void f() {
        synchronized (this.f4154d) {
            this.f4152b = true;
            jd.b(new StringBuilder(42).append("ContentFetchThread: paused, mPause = ").append(this.f4152b).toString());
        }
    }

    public final void a() {
        synchronized (this.f4154d) {
            if (this.f4151a) {
                jd.b("Content hash thread already started, quiting...");
            } else {
                this.f4151a = true;
                start();
            }
        }
    }

    final void a(View view) {
        try {
            akv akvVar = new akv(this.h, this.i, this.j, this.k, this.l, this.m, this.n);
            Context contextB = com.google.android.gms.ads.internal.aw.h().b();
            if (contextB != null && !TextUtils.isEmpty(this.o)) {
                String str = (String) view.getTag(contextB.getResources().getIdentifier((String) aoo.f().a(aro.ab), "id", contextB.getPackageName()));
                if (str != null && str.equals(this.o)) {
                    return;
                }
            }
            alf alfVarA = a(view, akvVar);
            akvVar.h();
            if (alfVarA.f4162a == 0 && alfVarA.f4163b == 0) {
                return;
            }
            if (alfVarA.f4163b == 0 && akvVar.j() == 0) {
                return;
            }
            if (alfVarA.f4163b == 0 && this.e.a(akvVar)) {
                return;
            }
            this.e.c(akvVar);
        } catch (Exception e) {
            jd.b("Exception in fetchContentOnUIThread", e);
            this.f.a(e, "ContentFetchTask.fetchContent");
        }
    }

    final void a(akv akvVar, WebView webView, String str, boolean z) {
        akvVar.f();
        try {
            if (!TextUtils.isEmpty(str)) {
                String strOptString = new JSONObject(str).optString("text");
                if (this.p || TextUtils.isEmpty(webView.getTitle())) {
                    akvVar.a(strOptString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    akvVar.a(new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(strOptString).length()).append(title).append("\n").append(strOptString).toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (akvVar.a()) {
                this.e.b(akvVar);
            }
        } catch (JSONException e) {
            jd.b("Json string may be malformed.");
        } catch (Throwable th) {
            jd.a("Failed to get webview content.", th);
            this.f.a(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final akv b() {
        return this.e.a();
    }

    public final void c() {
        synchronized (this.f4154d) {
            this.f4152b = false;
            this.f4154d.notifyAll();
            jd.b("ContentFetchThread: wakeup");
        }
    }

    public final boolean d() {
        return this.f4152b;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                try {
                    if (e()) {
                        Activity activityA = com.google.android.gms.ads.internal.aw.h().a();
                        if (activityA == null) {
                            jd.b("ContentFetchThread: no activity. Sleeping.");
                            f();
                        } else if (activityA != null) {
                            View viewFindViewById = null;
                            try {
                                if (activityA.getWindow() != null && activityA.getWindow().getDecorView() != null) {
                                    viewFindViewById = activityA.getWindow().getDecorView().findViewById(R.id.content);
                                }
                            } catch (Exception e) {
                                com.google.android.gms.ads.internal.aw.i().a(e, "ContentFetchTask.extractContent");
                                jd.b("Failed getting root view of activity. Content not extracted.");
                            }
                            if (viewFindViewById != null && viewFindViewById != null) {
                                viewFindViewById.post(new alc(this, viewFindViewById));
                            }
                        }
                    } else {
                        jd.b("ContentFetchTask: sleeping");
                        f();
                    }
                    Thread.sleep(this.g * 1000);
                } catch (InterruptedException e2) {
                    jd.b("Error in ContentFetchTask", e2);
                }
            } catch (Exception e3) {
                jd.b("Error in ContentFetchTask", e3);
                this.f.a(e3, "ContentFetchTask.run");
            }
            synchronized (this.f4154d) {
                while (this.f4152b) {
                    try {
                        jd.b("ContentFetchTask: waiting");
                        this.f4154d.wait();
                    } catch (InterruptedException e4) {
                    }
                }
            }
        }
    }
}
