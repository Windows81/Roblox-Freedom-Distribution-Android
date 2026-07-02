package com.roblox.client;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.b;
import com.roblox.client.i.c;
import com.roblox.client.locale.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class k extends l {
    private static int m = 0;
    private android.support.v7.app.b p;
    private android.support.v7.app.b q;
    private android.support.v7.app.b r;
    private boolean s = false;

    public interface a {
        void a(boolean z, boolean z2);
    }

    @Override // com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        com.roblox.client.i.c.a().a(this, c.b.APP_INIT_TYPE_SHELL);
        com.roblox.client.i.e.a().a(this);
        if (RobloxApplication.b() == null) {
            com.roblox.client.b.c.a("Application.AppContext is null in Shell", false);
        }
        if (RobloxApplication.a() == null) {
            com.roblox.client.b.c.a("Application.Locale is null in Shell");
        }
        boolean zA = b.a();
        if (!zA) {
            b.b(this);
        }
        com.roblox.client.locale.a.a().b(this);
        super.onCreate(bundle);
        s();
        String simpleName = getClass().getSimpleName();
        com.roblox.client.i.a.a(this).a(simpleName);
        if (!zA && !j() && b.aw()) {
            com.roblox.client.util.g.b("RobloxActivity", "onCreate: no AppSettings in activity:" + simpleName + ". Finish self!");
            finish();
        }
        this.s = true;
    }

    protected boolean j() {
        return false;
    }

    @Override // com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        n();
        a(this.q);
    }

    @Override // com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (com.roblox.client.d.b.a() && RobloxSettings.needsRestart()) {
            com.roblox.client.util.g.d("RobloxActivity", "Alert: needs restart");
            q();
        }
        int i = m;
        m = i + 1;
        if (i == 0) {
            com.roblox.client.i.c.a().a(true);
            RobloxSettings.getKeyValues(this).edit().putBoolean("ROBLOXCrash", true).apply();
            if (!this.s) {
                l();
                k();
            }
        }
        startService(new Intent(this, (Class<?>) RobloxService.class));
        com.roblox.client.i.a.a(this).b(getClass().getSimpleName());
        this.s = false;
    }

    private void k() {
        if (b.s()) {
            new com.roblox.client.locale.c.a().a((Context) this, false);
        }
    }

    private void l() {
        com.roblox.client.util.g.b("rbx.locale", "mIsAppResumedFromColdStart: " + this.s + ", AndroidAppSettings.isInMultipleLocaleFetchApiRollOut()" + b.o());
        if (b.o()) {
            com.roblox.client.util.g.b("rbx.locale", "using new api on app resume");
            new com.roblox.client.locale.f().a(this, new f.b() { // from class: com.roblox.client.k.1
                @Override // com.roblox.client.locale.f.b
                public void a(boolean z) {
                    if (z) {
                        com.roblox.client.util.g.b("rbx.locale", "Recreating activity");
                        k.this.recreate();
                    } else {
                        com.roblox.client.util.g.b("rbx.locale", "Retrieved locale same as current locale");
                    }
                }
            });
        }
    }

    @Override // com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStop() {
        int i = m - 1;
        m = i;
        if (i == 0) {
            com.roblox.client.i.c.a().a(false);
            RobloxSettings.getKeyValues(this).edit().remove("ROBLOXCrash").apply();
            com.roblox.client.util.g.b("RobloxActivity", "The Shell is in background.");
            com.roblox.client.b.b.a().b();
        }
        super.onStop();
    }

    protected boolean o() {
        return RobloxSettings.getKeyValues(this).getBoolean("ROBLOXCrash", false);
    }

    @Override // com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (b.a()) {
            b.a(this);
        }
        com.roblox.client.remindernotification.a.b(this);
        com.roblox.client.remindernotification.a.a(getIntent());
    }

    @Override // android.support.v4.app.h, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        com.roblox.client.util.g.c("RobloxActivity", "onActivityResult: requestCode = " + i);
        if (this.o == null || !this.o.a(i, i2, intent)) {
            if (i == 10103) {
                if (i2 == -1) {
                    String packageName = intent.getComponent().getPackageName();
                    com.roblox.client.util.g.b("RobloxActivity", "Sharing with=" + packageName + ".");
                    startActivity(intent);
                    i.c(packageName);
                    com.roblox.client.i.f.a().a("Android-AppMain-GameShare-AppSelected");
                    return;
                }
                com.roblox.client.util.g.b("RobloxActivity", "Sharing dialog dismissed.");
                com.roblox.client.i.f.a().a("Android-AppMain-GameShare-ChooserDismissed");
                return;
            }
            super.onActivityResult(i, i2, intent);
            return;
        }
        com.roblox.client.util.g.c("RobloxActivity", "onActivityResult handled by Store Manager");
    }

    public boolean p() {
        boolean z = !p.e(this);
        if (z) {
            m();
        }
        return z;
    }

    private void m() {
        if (this.p == null) {
            this.p = p.a(this, getResources().getString(R.string.CommonUI_Messages_Response_ConnectionError));
            this.p.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.roblox.client.k.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    k.this.p = null;
                }
            });
        } else if (!this.p.isShowing()) {
            this.p.show();
        } else {
            com.roblox.client.util.g.c("RobloxActivity", "A network-disconnected alert already exists. Do nothing.");
        }
    }

    private void n() {
        a(this.p);
        this.p = null;
    }

    private void a(android.support.v7.app.b bVar) {
        if (bVar != null && bVar.isShowing()) {
            bVar.dismiss();
        }
    }

    protected void b(boolean z) {
        a(z, (a) null);
    }

    protected void a(boolean z, final a aVar) {
        a(this.p);
        a(this.r);
        final String packageName = getPackageName();
        String string = getString(R.string.Application_Upgrade_Response_UpgradeBodyString, new Object[]{com.roblox.client.util.h.a() ? getString(R.string.CommonUI_Features_Label_AmazonAppStore) : getString(R.string.CommonUI_Features_Label_GooglePlayStore)});
        if (z) {
            a(this.q);
            this.r = new b.a(this).a(R.string.Application_Upgrade_Response_Title).b(string).a(R.string.Application_Upgrade_Action_Upgrade, new DialogInterface.OnClickListener() { // from class: com.roblox.client.k.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    com.roblox.client.util.h.a(this, packageName);
                    if (aVar != null) {
                        aVar.a(true, false);
                    }
                }
            }).b();
        } else {
            this.r = new b.a(this).a(R.string.Application_Upgrade_Response_Title).b(string).a(R.string.Application_Upgrade_Action_Upgrade, new DialogInterface.OnClickListener() { // from class: com.roblox.client.k.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    com.roblox.client.util.h.a(this, packageName);
                    if (aVar != null) {
                        aVar.a(true, false);
                    }
                }
            }).b(R.string.Application_Upgrade_Action_NotNow, new DialogInterface.OnClickListener() { // from class: com.roblox.client.k.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (aVar != null) {
                        aVar.a(false, true);
                    }
                }
            }).b();
        }
        this.r.setCancelable(false);
        this.r.show();
    }

    protected void q() {
        n();
        if (this.q == null) {
            this.q = new b.a(this).a(R.string.CommonUI_Messages_Response_RestartRequiredTitle).b(R.string.CommonUI_Messages_Response_ClearAppAndRestart).a(false).b();
        }
        if (!this.q.isShowing()) {
            this.q.show();
        }
    }

    protected void r() {
        n();
        if (this.q == null) {
            this.q = new b.a(this).a(R.string.CommonUI_Messages_Response_RestartRequiredTitle).b(R.string.AppRestart_SettingsChanged_Message_OutOfSync).a(R.string.AppRestart_SettingsChanged_Action_RestartApp, new DialogInterface.OnClickListener() { // from class: com.roblox.client.k.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    com.roblox.client.util.k.a(k.this, 100L);
                    com.roblox.client.util.k.a();
                }
            }).a(false).b();
        }
        if (!this.q.isShowing()) {
            this.q.show();
        }
    }
}
