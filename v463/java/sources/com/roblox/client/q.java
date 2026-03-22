package com.roblox.client;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.b;
import androidx.appcompat.widget.Toolbar;
import com.roblox.client.ab.d;
import com.roblox.client.components.RobloxToolbar;
import com.roblox.client.locale.i;
import com.roblox.client.o;
import com.roblox.client.s.c;
import com.roblox.client.w;
import com.roblox.engine.jni.NativeReportingInterface;
import com.roblox.engine.jni.memstorage.MemStorage;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class q extends r implements d.a {
    public static int k;
    protected Toolbar l;
    protected com.roblox.client.ab.d m;
    private androidx.appcompat.app.b q;
    private androidx.appcompat.app.b r;
    private androidx.appcompat.app.b s;
    private ProgressDialog t;
    private boolean u = false;
    private com.roblox.client.p.b v = o();
    private com.roblox.client.d.a w = new com.roblox.client.d.a();

    public interface a {
        void a(boolean z, boolean z2);
    }

    protected boolean m() {
        return false;
    }

    protected com.roblox.client.p.b o() {
        return new com.roblox.client.p.b();
    }

    @Override // com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        com.roblox.client.s.c.d().a(this, c.b.APP_INIT_TYPE_SHELL);
        if (RobloxApplication.b() == null) {
            com.roblox.client.analytics.d.a("Application.AppContext is null in Shell", false);
        }
        if (RobloxApplication.a() == null) {
            com.roblox.client.analytics.d.a("Application.Locale is null in Shell");
        }
        boolean zA = b.a();
        if (!zA) {
            com.roblox.client.ae.k.b("RobloxActivity", "onCreate ... settingsLoaded = false. Load from preferences!!!");
            b.b(this);
        }
        com.roblox.client.locale.b.a().b(this);
        com.roblox.client.s.e.a().a(this);
        super.onCreate(bundle);
        I();
        if (b.bO()) {
            H();
        }
        String simpleName = getClass().getSimpleName();
        com.roblox.client.s.a.a(this).a(simpleName);
        if (!zA && !m() && b.V()) {
            com.roblox.client.ae.k.b("RobloxActivity", "onCreate: no AppSettings in activity:" + simpleName + ". Finish self!");
            finish();
        }
        this.u = true;
        com.roblox.client.ab.d dVar = new com.roblox.client.ab.d(this);
        this.m = dVar;
        dVar.a(this);
    }

    @Override // androidx.appcompat.app.c
    public void a(Toolbar toolbar) {
        super.a(toolbar);
        this.l = toolbar;
    }

    public void a(com.roblox.client.ab.e eVar) {
        int color;
        com.roblox.client.ae.k.c("rbx.theme", getClass().getSimpleName() + ".onThemeChanged() " + eVar);
        Toolbar toolbar = this.l;
        if (toolbar instanceof RobloxToolbar) {
            ((RobloxToolbar) toolbar).a(eVar);
        }
        if (this.v != null) {
            int i = AnonymousClass7.f6897a[eVar.ordinal()];
            if (i == 1) {
                color = getResources().getColor(o.c.lightThemeToolbar);
            } else if (i == 2) {
                color = getResources().getColor(o.c.RbxBlue3);
            } else {
                color = getResources().getColor(o.c.darkThemeToolbar);
            }
            this.v.a(color);
        }
        if (b.bO()) {
            b(eVar);
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.q$7, reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6897a;

        static {
            int[] iArr = new int[com.roblox.client.ab.e.values().length];
            f6897a = iArr;
            try {
                iArr[com.roblox.client.ab.e.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6897a[com.roblox.client.ab.e.CLASSIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6897a[com.roblox.client.ab.e.DARK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        r();
        a(this.r);
    }

    @Override // com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (com.roblox.client.i.b.a() && u.ax()) {
            com.roblox.client.ae.k.d("RobloxActivity", "Alert: needs restart");
            F();
        }
        int i = k;
        k = i + 1;
        if (i == 0) {
            org.greenrobot.eventbus.c.a().a(com.roblox.client.s.b.a());
            com.roblox.client.s.c.d().a(true);
            NativeReportingInterface.applicationForegrounded();
            u.a(this).edit().putBoolean("ROBLOXCrash", true).apply();
            if (!this.u) {
                p();
                n();
            }
        }
        com.roblox.client.s.a.a(this).b(getClass().getSimpleName());
        this.u = false;
    }

    private void n() {
        if (b.n()) {
            new com.roblox.client.locale.d.a().a((Context) this, false);
        }
    }

    private void p() {
        com.roblox.client.ae.k.b("rbx.locale", "using new api on app resume. mIsAppResumedFromColdStart: " + this.u);
        new com.roblox.client.locale.i().a(this, new i.b() { // from class: com.roblox.client.q.1
            @Override // com.roblox.client.locale.i.b
            public void a(boolean z) {
                if (z) {
                    com.roblox.client.ae.k.b("rbx.locale", "(OnAppResume) Recreating activity due to Locale change.");
                    q.this.recreate();
                } else {
                    com.roblox.client.ae.k.b("rbx.locale", "Retrieved locale same as current locale");
                }
            }
        });
    }

    @Override // com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        int i = k - 1;
        k = i;
        if (i == 0) {
            org.greenrobot.eventbus.c.a().b(com.roblox.client.s.b.a());
            com.roblox.client.s.c.d().a(false);
            NativeReportingInterface.applicationBackgrounded();
            u.a(this).edit().remove("ROBLOXCrash").apply();
            com.roblox.client.ae.k.b("RobloxActivity", "The Shell is in background.");
            com.roblox.client.analytics.c.a().c();
            com.roblox.client.analytics.c.a().d();
        }
        super.onStop();
    }

    protected boolean C() {
        return u.a(this).getBoolean("ROBLOXCrash", false);
    }

    @Override // com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (b.a()) {
            b.a(this);
        }
        com.roblox.client.pushnotification.l.a().e(this);
        com.roblox.client.remindernotification.a.b(this);
        com.roblox.client.remindernotification.a.a(getIntent());
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        com.roblox.client.ae.k.c("RobloxActivity", "onActivityResult: requestCode = " + i);
        com.roblox.client.purchase.google.b bVarA = com.roblox.client.purchase.google.b.a(this);
        if (bVarA != null && bVarA.a(i, i2, intent)) {
            com.roblox.client.ae.k.c("RobloxActivity", "onActivityResult handled by Store Manager");
            return;
        }
        if (i != 10103) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        if (i2 == -1) {
            String packageName = intent.getComponent().getPackageName();
            com.roblox.client.ae.k.b("RobloxActivity", "Sharing with=" + packageName + ".");
            startActivity(intent);
            p.d(packageName);
            com.roblox.client.s.f.b().a("Android-AppMain-GameShare-AppSelected");
            return;
        }
        com.roblox.client.ae.k.b("RobloxActivity", "Sharing dialog dismissed.");
        com.roblox.client.s.f.b().a("Android-AppMain-GameShare-ChooserDismissed");
    }

    public boolean D() {
        boolean z = !x.c(this);
        if (z) {
            q();
        }
        return z;
    }

    public void a(Context context) {
        String string = getString(o.j.Authentication_Logout_Label_LoggingOut);
        String string2 = getString(o.j.Authentication_Logout_Label_LoggingOutOfAccount);
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setTitle(string);
        progressDialog.setMessage(string2);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setCanceledOnTouchOutside(false);
        progressDialog.setOnCancelListener(null);
        this.t = progressDialog;
        progressDialog.show();
    }

    public void E() {
        ProgressDialog progressDialog = this.t;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.t.dismiss();
        this.t = null;
    }

    public void a(c.e eVar) {
        com.roblox.client.ae.k.b("RobloxActivity", "navigateToPostLogoutUI: logoutType = " + eVar + ", foreground = " + K());
        if (com.roblox.client.x.c.h()) {
            com.roblox.client.ae.k.b("RobloxActivity", "navigateToPostLogoutUI: [New Startup] Launch Main activity...");
            startActivity(l.a().b(this));
            if (eVar != c.e.LOGOUT_BY_USER_IN_LUA) {
                com.roblox.client.ae.k.b("RobloxActivity", "navigateToPostLogoutUI: notify Lua about this 401 logout condition");
                MemStorage.fire("NativeShellEvent", "NETWORK_ERROR_401");
                return;
            }
            return;
        }
        com.roblox.client.ae.k.b("RobloxActivity", "navigateToPostLogoutUI: [Old Startup] Launch Start activity...");
        Intent intentA = l.a().a((Context) this);
        intentA.setFlags(268468224);
        startActivity(intentA);
    }

    private void q() {
        androidx.appcompat.app.b bVar = this.q;
        if (bVar == null) {
            androidx.appcompat.app.b bVarA = x.a(this, getResources().getString(o.j.CommonUI_Messages_Response_ConnectionError));
            this.q = bVarA;
            bVarA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.roblox.client.q.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    q.this.q = null;
                }
            });
        } else if (!bVar.isShowing()) {
            this.q.show();
        } else {
            com.roblox.client.ae.k.c("RobloxActivity", "A network-disconnected alert already exists. Do nothing.");
        }
    }

    private void r() {
        a(this.q);
        this.q = null;
    }

    private void a(androidx.appcompat.app.b bVar) {
        if (bVar == null || !bVar.isShowing()) {
            return;
        }
        bVar.dismiss();
    }

    protected void b(boolean z) {
        a(z, (a) null);
    }

    protected void a(boolean z, final a aVar) {
        String string;
        a(this.q);
        a(this.s);
        final String packageName = getPackageName();
        final w.c cVarC = w.a().c();
        String string2 = getString(com.roblox.client.ae.l.a() ? o.j.CommonUI_Features_Label_AmazonAppStore : o.j.CommonUI_Features_Label_GooglePlayStore);
        if (com.roblox.client.ae.l.b()) {
            string = getString(o.j.Application_Upgrade_Response_UpgradeBodyString);
        } else {
            string = getString(o.j.Application_Upgrade_Response_UpgradeBodyString, new Object[]{string2});
        }
        if (z) {
            a(this.r);
            if (com.roblox.client.d.a.a(getIntent())) {
                com.roblox.client.d.a.a(this, true, cVarC);
                return;
            }
            this.s = new b.a(this).a(o.j.Application_Upgrade_Response_Title).b(string).a(o.j.Application_Upgrade_Action_Upgrade, new DialogInterface.OnClickListener() { // from class: com.roblox.client.q.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    com.roblox.client.ae.l.a(this, packageName);
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a(true, false);
                    }
                }
            }).b();
        } else {
            this.s = new b.a(this).a(o.j.Application_Upgrade_Response_Title).b(string).a(o.j.Application_Upgrade_Action_Upgrade, new DialogInterface.OnClickListener() { // from class: com.roblox.client.q.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    com.roblox.client.ae.l.a(this, packageName);
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a(true, false);
                    }
                }
            }).b(o.j.Application_Upgrade_Action_NotNow, new DialogInterface.OnClickListener() { // from class: com.roblox.client.q.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a(false, true);
                    }
                }
            }).b();
        }
        this.s.setCancelable(false);
        this.s.show();
    }

    protected void F() {
        r();
        if (this.r == null) {
            this.r = new b.a(this).a(o.j.CommonUI_Messages_Response_RestartRequiredTitle).b(o.j.CommonUI_Messages_Response_ClearAppAndRestart).a(false).b();
        }
        if (this.r.isShowing()) {
            return;
        }
        this.r.show();
    }

    protected void G() {
        r();
        if (this.r == null) {
            this.r = new b.a(this).a(o.j.CommonUI_Messages_Response_RestartRequiredTitle).b(o.j.AppRestart_SettingsChanged_Message_OutOfSync).a(o.j.AppRestart_SettingsChanged_Action_RestartApp, new DialogInterface.OnClickListener() { // from class: com.roblox.client.q.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    com.roblox.client.ae.o.a(q.this, 100L);
                    com.roblox.client.ae.o.a();
                }
            }).a(false).b();
        }
        if (this.r.isShowing()) {
            return;
        }
        this.r.show();
    }

    public void b(com.roblox.client.ab.e eVar) {
        int color;
        boolean z = eVar != com.roblox.client.ab.e.LIGHT;
        if (Build.VERSION.SDK_INT >= 23) {
            int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility();
            getWindow().getDecorView().setSystemUiVisibility(z ? systemUiVisibility & (-8193) : systemUiVisibility | 8192);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            if (u.k()) {
                if (AnonymousClass7.f6897a[eVar.ordinal()] == 1) {
                    color = getResources().getColor(o.c.lightThemeToolbar);
                } else {
                    color = getResources().getColor(o.c.darkThemeToolbar);
                }
                getWindow().setStatusBarColor(color);
            }
            getWindow().setNavigationBarColor(getResources().getColor(o.c.darkNavigationBarColor));
        }
    }

    protected void H() {
        View decorView = getWindow().getDecorView();
        decorView.setSystemUiVisibility(1280);
        this.p.a(decorView);
    }

    @Override // androidx.appcompat.app.c, android.app.Activity
    public void setContentView(int i) {
        if (b.bO()) {
            d(i);
        } else {
            super.setContentView(i);
        }
    }

    @Override // androidx.appcompat.app.c, android.app.Activity
    public void setContentView(View view) {
        if (b.bO()) {
            a(view, (ViewGroup.LayoutParams) null);
        } else {
            super.setContentView(view);
        }
    }

    @Override // androidx.appcompat.app.c, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        if (b.bO()) {
            a(view, layoutParams);
        } else {
            super.setContentView(view, layoutParams);
        }
    }

    private void d(int i) {
        s();
        LayoutInflater.from(this).inflate(i, this.v.a());
    }

    private void a(View view, ViewGroup.LayoutParams layoutParams) {
        s();
        this.v.a().addView(view, layoutParams);
    }

    private void s() {
        super.setContentView(this.v.a(LayoutInflater.from(this), this));
    }
}
