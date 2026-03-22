package com.roblox.client;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.Toast;
import androidx.appcompat.app.b;
import androidx.lifecycle.g;
import com.roblox.client.o;
import com.roblox.engine.jni.locale.NativeLocaleJavaInterface;
import com.roblox.engine.jni.reporter.SessionReporterJavaInterface;
import java.util.IllegalFormatException;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class r extends androidx.appcompat.app.c {
    protected static int n;
    protected static int o;
    private boolean k;
    protected com.roblox.client.p.a p = new com.roblox.client.p.a();

    static {
        System.loadLibrary("fmod");
        System.loadLibrary("roblox");
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        com.roblox.client.locale.f fVarA = com.roblox.client.locale.b.a().a(context);
        com.roblox.client.locale.f fVarB = com.roblox.client.locale.b.a().b();
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" -> Locale: base = ");
        sb.append(configuration.locale);
        sb.append("; default = ");
        sb.append(fVarA.b());
        sb.append("; user = ");
        sb.append(fVarB != null ? fVarB.b() : "null");
        com.roblox.client.ae.k.c("rbx.locale", sb.toString());
        Locale localeA = com.roblox.client.locale.b.a(fVarB != null ? fVarB.b() : fVarA.b());
        configuration.setLocale(localeA);
        configuration.setLayoutDirection(localeA);
        super.attachBaseContext(context.createConfigurationContext(configuration));
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        u.b(this);
        com.roblox.client.http.b.a(this);
        super.onCreate(bundle);
        int i = n;
        n = i + 1;
        if (i == 0) {
            NativeLocaleJavaInterface.setImplementation(new com.roblox.client.q.a());
            SessionReporterJavaInterface.setImplementation(new com.roblox.client.q.b(this));
            com.roblox.client.w.a.a();
            com.roblox.client.w.a.a("SessionReporterState_ApplicationStart", 0L);
        }
        com.roblox.client.ad.c.a().o();
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        int i = n - 1;
        n = i;
        if (i == 0) {
            com.roblox.client.w.a.a("SessionReporterState_ApplicationTerminate", 0L);
        }
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        o++;
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        com.roblox.client.http.b.b();
        super.onStop();
        o--;
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    protected void onPause() {
        this.k = false;
        com.roblox.client.http.b.a(getCacheDir(), u.f7518b.getString("webview_url", ""));
        setIntent(null);
        super.onPause();
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    protected void onNewIntent(Intent intent) {
        setIntent(intent);
        super.onNewIntent(intent);
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.k = true;
        com.roblox.client.http.b.a();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        com.roblox.client.ae.k.d("RobloxBaseActivity", "onTrimMemory: in " + getClass().getSimpleName() + ", level = " + i);
        super.onTrimMemory(i);
        RobloxApplication.a("RobloxBaseActivity", i);
    }

    protected void I() {
        if (u.k()) {
            return;
        }
        setRequestedOrientation(u.j() ? 7 : 6);
    }

    public static boolean J() {
        return o > 0;
    }

    public boolean K() {
        return this.k;
    }

    public void d(String str) {
        b(str, null);
    }

    public void c(int i) {
        b(getString(i), null);
    }

    public void e(String str) {
        b(str, null);
    }

    public void a(String str, DialogInterface.OnDismissListener onDismissListener) {
        b(str, onDismissListener);
    }

    public void a(int i, Object... objArr) {
        String string;
        if (isDestroyed()) {
            return;
        }
        String string2 = getString(i);
        try {
            string = String.format(Locale.ROOT, string2, objArr);
        } catch (IllegalFormatException unused) {
            com.roblox.client.ae.k.e("RobloxBaseActivity", "Bad format: format=" + string2 + ". args=" + objArr + ".");
            string = getString(o.j.CommonUI_Messages_Response_SystemErrorTryLater);
        }
        b(string, null);
    }

    private void b(String str, DialogInterface.OnDismissListener onDismissListener) {
        if (isDestroyed()) {
            return;
        }
        b.a aVar = new b.a(this);
        aVar.c(o.j.CommonUI_Features_Action_Ok, (DialogInterface.OnClickListener) null);
        aVar.b(str);
        if (onDismissListener != null) {
            aVar.a(onDismissListener);
        }
        aVar.b().show();
    }

    public void a(int i, int i2) {
        Toast.makeText(this, i, i2).show();
    }

    public void a(String str, int i) {
        Toast.makeText(this, str, i).show();
    }

    @Override // android.app.Activity
    public boolean isDestroyed() {
        return g.b.DESTROYED == g().a();
    }

    public com.roblox.client.p.a L() {
        return this.p;
    }
}
