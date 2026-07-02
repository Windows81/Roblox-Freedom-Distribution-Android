package com.roblox.client;

import android.arch.lifecycle.d;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.b;
import android.widget.Toast;
import com.roblox.engine.jni.SessionReporterJavaInterface;
import java.util.IllegalFormatException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class l extends android.support.v7.app.c {
    protected static int n = 0;
    private boolean m;
    protected com.roblox.client.purchase.google.b o = null;

    static {
        System.loadLibrary("fmod");
        System.loadLibrary("roblox");
        System.loadLibrary("shell-lib");
    }

    @Override // android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        RobloxSettings.updateDeviceType(this);
        super.onCreate(bundle);
        com.roblox.client.http.b.a(this);
        int i = n;
        n = i + 1;
        if (i == 0) {
            SessionReporterJavaInterface.setImplementation(new com.roblox.client.jni.b(this));
            com.roblox.client.m.a.a();
            if (!getClass().getSimpleName().equals(ActivityGlView.class.getSimpleName())) {
                com.roblox.client.m.a.a("SessionReporterState_ApplicationStart", 0L);
            }
        }
    }

    @Override // android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        int i = n - 1;
        n = i;
        if (i == 0 && !getClass().getSimpleName().equals(ActivityGlView.class.getSimpleName())) {
            com.roblox.client.m.a.a("SessionReporterState_ApplicationTerminate", 0L);
        }
    }

    @Override // android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.o = com.roblox.client.purchase.google.b.a(this);
    }

    @Override // android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStop() {
        com.roblox.client.http.b.b();
        super.onStop();
    }

    @Override // android.support.v4.app.h, android.app.Activity
    protected void onPause() {
        this.m = false;
        com.roblox.client.http.b.a(getCacheDir(), RobloxSettings.mKeyValues.getString("webview_url", ""));
        setIntent(null);
        super.onPause();
    }

    @Override // android.support.v4.app.h, android.app.Activity
    protected void onNewIntent(Intent intent) {
        setIntent(intent);
        super.onNewIntent(intent);
    }

    @Override // android.support.v4.app.h, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.m = true;
        com.roblox.client.http.b.a();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        RobloxApplication.a("RobloxBaseActivity", i);
    }

    protected void s() {
        if (!RobloxSettings.isChrome()) {
            setRequestedOrientation(RobloxSettings.isPhone() ? 7 : 6);
        }
    }

    public com.roblox.client.purchase.google.b t() {
        return this.o;
    }

    public boolean u() {
        return this.m;
    }

    public void c(String str) {
        a(str, (DialogInterface.OnDismissListener) null);
    }

    public void c(int i) {
        a(getString(i), (DialogInterface.OnDismissListener) null);
    }

    public void a(int i, DialogInterface.OnDismissListener onDismissListener) {
        a(getString(i), onDismissListener);
    }

    public void a(int i, Object... objArr) {
        String string;
        if (!isDestroyed()) {
            String string2 = getString(i);
            try {
                string = String.format(Locale.ROOT, string2, objArr);
            } catch (IllegalFormatException e) {
                com.roblox.client.util.g.e("RobloxBaseActivity", "Bad format: format=" + string2 + ". args=" + objArr + ".");
                string = getString(R.string.CommonUI_Messages_Response_SystemErrorTryLater);
            }
            a(string, (DialogInterface.OnDismissListener) null);
        }
    }

    private void a(String str, DialogInterface.OnDismissListener onDismissListener) {
        if (!isDestroyed()) {
            b.a aVar = new b.a(this);
            aVar.c(R.string.CommonUI_Features_Action_Ok, null);
            aVar.b(str);
            if (onDismissListener != null) {
                aVar.a(onDismissListener);
            }
            aVar.b().show();
        }
    }

    public void a(int i, int i2) {
        Toast.makeText(this, i, i2).show();
    }

    @Override // android.app.Activity
    public boolean isDestroyed() {
        return d.b.DESTROYED == getLifecycle().a();
    }
}
