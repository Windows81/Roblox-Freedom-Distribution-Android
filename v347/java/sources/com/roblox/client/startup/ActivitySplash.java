package com.roblox.client.startup;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.widget.Toast;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.LoadingBar;
import com.roblox.client.f.f;
import com.roblox.client.i;
import com.roblox.client.i.h;
import com.roblox.client.k;
import com.roblox.client.landing.ActivityStartMVP;
import com.roblox.client.startup.a;
import com.roblox.client.util.g;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class ActivitySplash extends k implements a.InterfaceC0130a, c {
    private static boolean p = true;
    private LoadingBar m;
    private Runnable q;
    private long r;
    private Handler s = new Handler();
    private boolean t = false;
    private Intent u;
    private boolean v;
    private boolean w;
    private e x;

    public static Intent a(Context context, e eVar) {
        Intent intent = new Intent(context, (Class<?>) ActivitySplash.class);
        g.b("ActivitySplash", "buildIntent for: " + eVar);
        intent.putExtra("STARTED_FOR_INTENT_KEY", eVar);
        return intent;
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.r = SystemClock.elapsedRealtime();
        this.u = getIntent();
        this.x = (e) this.u.getSerializableExtra("STARTED_FOR_INTENT_KEY");
        if (this.x == null) {
            this.x = e.SYSTEM;
        }
        this.v = this.x == e.SHELL_PROCESS_RESTART_FOR_RESULT || this.x == e.AFTER_LOGIN_FOR_RESULT;
        this.w = this.x == e.AFTER_SIGN_UP;
        g.b("ActivitySplash", "onCreate: startedForResult=" + this.v + ", appRestarted=" + (this.x == e.APP_RESTART));
        setContentView(R.layout.activity_splash);
        this.m = (LoadingBar) findViewById(R.id.loading_progress_view);
        if (com.roblox.client.d.b.a()) {
            String baseUrlValue = RobloxSettings.getBaseUrlValue();
            if (!TextUtils.isEmpty(baseUrlValue)) {
                Toast.makeText(this, "Using " + baseUrlValue, 1).show();
            }
        }
        com.roblox.client.b.c();
        this.t = o();
        if (bundle == null) {
            com.roblox.client.i.c.a().a(this);
        }
        if (com.roblox.client.d.b.a() && RobloxSettings.needsRestart()) {
            g.d("ActivitySplash", "Alert: needs restart");
            q();
        } else {
            b.a((Context) this).a((c) this);
        }
    }

    @Override // com.roblox.client.k
    protected boolean j() {
        return true;
    }

    @Override // com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        g.b("ActivitySplash", "onNewIntent: intent=" + intent);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g.b("ActivitySplash", "onDestroy: unset the activity from InitHelper.");
        b.a((Context) this).b(this);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        i.b("splash");
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onResume() {
        super.onResume();
        g.c("ActivitySplash", "onResume:");
        B();
        y();
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onPause() {
        super.onPause();
        g.c("ActivitySplash", "onPause:");
        z();
        com.roblox.client.b.d.a().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        g.b("ActivitySplash", "startup:");
        d(true);
        b.a((Context) this).a(this.x);
    }

    private void d(boolean z) {
        if (z) {
            if (p) {
                p = false;
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.r;
                if (jElapsedRealtime >= 5000) {
                    this.m.setVisibility(0);
                    return;
                }
                this.s = new Handler();
                this.q = new Runnable() { // from class: com.roblox.client.startup.ActivitySplash.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ActivitySplash.this.q = null;
                        ActivitySplash.this.m.setVisibility(0);
                    }
                };
                this.s.postDelayed(this.q, 5000 - jElapsedRealtime);
                return;
            }
            this.m.setVisibility(0);
            return;
        }
        z();
        this.m.setVisibility(8);
    }

    private void z() {
        if (this.q != null) {
            this.s.removeCallbacks(this.q);
            this.q = null;
        }
    }

    private void A() {
        if (this.v) {
            if (h.a().d()) {
                setResult(103);
            } else {
                setResult(102);
            }
            finish();
            return;
        }
        com.roblox.client.game.a aVarA = com.roblox.client.game.a.a(this.u.getBundleExtra("game_init_params"));
        boolean z = this.x == e.PROTOCOL_LAUNCH;
        if (aVarA == null) {
            aVarA = com.roblox.client.game.b.a().c();
        }
        if (aVarA != null) {
            if (!h.a().d() && !com.roblox.abtesting.a.a().j()) {
                g.b("ActivitySplash", "Guest mode not enabled. Stopping external launch until signing up.");
                com.roblox.client.game.b.a().a(aVarA);
                e(z);
                return;
            } else {
                com.roblox.client.game.b.a().a((com.roblox.client.game.a) null);
                a(z, aVarA);
                return;
            }
        }
        if (h.a().d()) {
            if (this.u.getStringExtra("EXTRA_NOTIFICATION_TYPE") != null) {
                c(this.u);
                return;
            } else {
                a(z, (com.roblox.client.game.a) null);
                return;
            }
        }
        e(z);
    }

    private void c(Intent intent) {
        com.roblox.client.b.c.a("AppLaunch", "PushNotification", intent.getStringExtra("EXTRA_NOTIFICATION_TYPE"));
        Intent intentA = ActivityNativeMain.a(this, (com.roblox.client.game.a) null);
        intentA.putExtras(intent.getExtras());
        intentA.setFlags(268435456);
        startActivity(intentA);
        finish();
    }

    private void e(boolean z) {
        com.roblox.client.b.c.a("AppLaunch", z ? "ProtocolLaunch" : "Start", "ActivityStartMVP");
        Intent intent = new Intent(this, (Class<?>) ActivityStartMVP.class);
        intent.setFlags(65536);
        intent.putExtra("ANIMATE_BUTTONS_EXTRA", true);
        startActivity(intent);
        finish();
        overridePendingTransition(0, 0);
    }

    private void a(boolean z, com.roblox.client.game.a aVar) {
        com.roblox.client.b.c.a("AppLaunch", z ? "ProtocolLaunch" : "Start", "ActivityNativeMain");
        com.roblox.client.b.d.a().f();
        Intent intentA = ActivityNativeMain.a(this, aVar);
        if (z) {
            i.a("protocolLaunch");
        }
        if (this.w) {
            intentA.putExtra("loginAfterSignup", true);
        }
        startActivity(intentA);
        finish();
    }

    private void d(int i) {
        g.b("ActivitySplash", "showRetryFragment: ");
        a aVarC = C();
        if (aVarC != null) {
            g.b("ActivitySplash", "showRetryFragment: Found an existing Retry fragment.");
            aVarC.a(getString(i));
        } else {
            g.b("ActivitySplash", "showRetryFragment: Create a new FragmentRetry...");
            a.a(i).show(e(), "FragmentRetry");
        }
    }

    private void B() {
        a aVarC = C();
        if (aVarC != null) {
            g.b("ActivitySplash", "Dismiss the existing Retry UI...");
            aVarC.dismiss();
        }
    }

    private a C() {
        Fragment fragmentA = e().a("FragmentRetry");
        if (fragmentA instanceof a) {
            return (a) fragmentA;
        }
        return null;
    }

    private void D() {
        f fVarA = f.a();
        fVarA.a(com.roblox.client.b.ax());
        fVarA.a(RobloxSettings.homeUrl());
    }

    private void E() {
        com.roblox.client.c.a.a().a(com.roblox.client.b.ao(), com.roblox.client.b.ap(), com.roblox.client.b.aq(), com.roblox.client.b.ar(), TimeUnit.MINUTES.toMillis(com.roblox.client.b.am()), com.roblox.client.b.as());
    }

    @Override // com.roblox.client.startup.c
    public void k() {
    }

    @Override // com.roblox.client.startup.c
    public void l() {
        com.roblox.client.i.f.a().a(this.t);
        E();
        D();
    }

    @Override // com.roblox.client.startup.c
    public void m() {
        d(false);
        if (u()) {
            d(R.string.CommonUI_Messages_Response_ConnectionError);
        }
    }

    @Override // com.roblox.client.startup.c
    public void n() {
        d(false);
        if (u()) {
            d(R.string.CommonUI_Messages_Response_ServiceNotAvailable);
        }
    }

    @Override // com.roblox.client.startup.c
    public void c(boolean z) {
        g.b("ActivitySplash", "showUpgradeUI: required = " + z);
        if (u()) {
            d(false);
            B();
            a(z, new k.a() { // from class: com.roblox.client.startup.ActivitySplash.2
                @Override // com.roblox.client.k.a
                public void a(boolean z2, boolean z3) {
                    g.b("ActivitySplash", "showUpgradeUI::onButtonClicked: upgradeClicked = " + z2 + ", notNowClicked = " + z3);
                    if (z3) {
                        ActivitySplash.this.y();
                    }
                }
            });
        }
    }

    @Override // com.roblox.client.startup.c
    public void v() {
        if (u()) {
            A();
        }
    }

    @Override // com.roblox.client.startup.a.InterfaceC0130a
    public void w() {
        y();
    }

    @Override // com.roblox.client.startup.a.InterfaceC0130a
    public void x() {
        y();
    }
}
