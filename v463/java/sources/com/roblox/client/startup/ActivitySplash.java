package com.roblox.client.startup;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.roblox.client.ae.k;
import com.roblox.client.analytics.g;
import com.roblox.client.analytics.i;
import com.roblox.client.components.LoadingBar;
import com.roblox.client.l;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.q;
import com.roblox.client.s.f;
import com.roblox.client.s.h;
import com.roblox.client.signup.multiscreen.ActivityWelcome;
import com.roblox.client.startup.b;
import com.roblox.client.u;
import com.roblox.engine.jni.NativeReportingInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivitySplash extends q implements b.a, d {
    private static boolean r = true;
    private boolean A;
    private LoadingBar q;
    private Runnable s;
    private long t;
    private Handler u = new Handler();
    private boolean v = false;
    private Intent w;
    private boolean x;
    private boolean y;
    private e z;

    @Override // com.roblox.client.q
    protected boolean m() {
        return true;
    }

    @Override // com.roblox.client.startup.d
    public void p() {
    }

    public static Intent a(Context context, e eVar) {
        Intent intent = new Intent(context, (Class<?>) ActivitySplash.class);
        k.b("rbx.splash", "buildIntent for: " + eVar);
        intent.putExtra("STARTED_FOR_INTENT_KEY", eVar);
        return intent;
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.t = SystemClock.elapsedRealtime();
        this.w = getIntent();
        i.a();
        i.a("LaunchApp");
        NativeReportingInterface.initAppShellReporter();
        e eVar = (e) this.w.getSerializableExtra("STARTED_FOR_INTENT_KEY");
        this.z = eVar;
        if (eVar == null) {
            this.z = e.SYSTEM;
        }
        k.c("rbx.splash", "Started for: " + this.z);
        this.x = this.z == e.SHELL_PROCESS_RESTART_FOR_RESULT || this.z == e.AFTER_LOGIN_FOR_RESULT;
        this.y = this.z == e.AFTER_SIGN_UP;
        k.b("rbx.splash", "onCreate: startedForResult=" + this.x + ", appRestarted=" + (this.z == e.APP_RESTART));
        setContentView(o.g.activity_splash);
        this.q = (LoadingBar) findViewById(o.f.loading_progress_view);
        if (com.roblox.client.i.b.a()) {
            String strC = u.c();
            if (!TextUtils.isEmpty(strC)) {
                Toast.makeText(this, "Using " + strC, 1).show();
            }
        }
        com.roblox.client.b.d();
        this.v = C();
        if (bundle == null) {
            com.roblox.client.s.c.d().a(this);
            f.b().d();
        }
        if (com.roblox.client.i.b.a() && u.ax()) {
            k.d("rbx.splash", "Alert: needs restart");
            F();
        } else {
            c.a((Context) this).a(this.z);
            c.a((Context) this).a((d) this);
        }
    }

    @Override // com.roblox.client.q, androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 10116) {
            return;
        }
        com.roblox.abtesting.a aVarA = com.roblox.abtesting.a.a();
        if (aVarA.m() || com.roblox.client.ad.c.a().i()) {
            f.b().a("Android-VAppSignupB-HomeScreenLoaded");
        } else if (aVarA.n()) {
            f.b().a("Android-VAppSignupC-HomeScreenLoaded");
        }
        Intent intentB = l.a().b(this);
        if (this.y) {
            intentB.putExtra("loginAfterSignup", true);
        }
        if (this.w.getExtras() != null) {
            intentB.putExtras(this.w.getExtras());
        }
        startActivity(intentB);
        finish();
    }

    @Override // com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        k.b("rbx.splash", "onNewIntent: intent=" + intent);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        k.b("rbx.splash", "onDestroy: unset the activity from InitHelper.");
        c.a((Context) this).b(this);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        p.b("splash");
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        k.c("rbx.splash", "onResume:");
        A();
        n();
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onPause() {
        super.onPause();
        k.c("rbx.splash", "onPause: isFinishing = " + isFinishing());
        w();
        if (this.A) {
            return;
        }
        g.a().d();
    }

    @Override // com.roblox.client.q
    protected com.roblox.client.p.b o() {
        return new com.roblox.client.p.d();
    }

    private void n() {
        k.b("rbx.splash", "startup:");
        a(true);
        c.a((Context) this).c();
    }

    private void a(boolean z) {
        if (z) {
            if (r) {
                r = false;
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.t;
                if (jElapsedRealtime >= 5000) {
                    this.q.setVisibility(0);
                    return;
                }
                this.u = new Handler();
                Runnable runnable = new Runnable() { // from class: com.roblox.client.startup.ActivitySplash.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ActivitySplash.this.s = null;
                        ActivitySplash.this.q.setVisibility(0);
                    }
                };
                this.s = runnable;
                this.u.postDelayed(runnable, 5000 - jElapsedRealtime);
                return;
            }
            this.q.setVisibility(0);
            return;
        }
        w();
        this.q.setVisibility(8);
    }

    private void w() {
        Runnable runnable = this.s;
        if (runnable != null) {
            this.u.removeCallbacks(runnable);
            this.s = null;
        }
    }

    private void x() {
        if (this.x) {
            if (h.a().d()) {
                setResult(103);
            } else {
                setResult(102);
            }
            finish();
            return;
        }
        boolean z = this.z == e.PROTOCOL_LAUNCH;
        if (l.a().h().d()) {
            if (!h.a().d()) {
                k.b("rbx.splash", "User is not logged in. Delay external game launch.");
                c(z);
                return;
            } else {
                d(z);
                return;
            }
        }
        if (h.a().d()) {
            if (com.roblox.client.pushnotification.l.a().b()) {
                c(this.w);
                return;
            } else {
                d(z);
                return;
            }
        }
        c(z);
    }

    private void c(Intent intent) {
        com.roblox.client.analytics.d.a("AppLaunch", "PushNotification", com.roblox.client.pushnotification.l.a().d());
        Intent intentB = l.a().b(this);
        intentB.setFlags(268435456);
        startActivity(intentB);
        finish();
    }

    private void c(boolean z) {
        com.roblox.client.analytics.d.a("AppLaunch", z ? "ProtocolLaunch" : "Start", "ActivityStartMVP");
        i.a("LaunchActivityStartMVP");
        Intent intentA = l.a().a((Context) this);
        intentA.setFlags(65536);
        intentA.putExtra("ANIMATE_BUTTONS_EXTRA", true);
        startActivity(intentA);
        finish();
        overridePendingTransition(0, 0);
    }

    private void d(boolean z) {
        com.roblox.client.analytics.d.a("AppLaunch", z ? "ProtocolLaunch" : "Start", "ActivityNativeMain");
        i.a("LaunchActivityNativeMain");
        g.a().e();
        if (isFinishing()) {
            k.b("rbx.splash", "isFinishing");
            return;
        }
        k.b("rbx.splash", "launchMainActivity");
        com.roblox.abtesting.a aVarA = com.roblox.abtesting.a.a();
        if ((aVarA.m() || aVarA.n()) && this.y) {
            startActivityForResult(ActivityWelcome.b(this), 10116);
            overridePendingTransition(o.a.slide_up_short, o.a.stay);
            return;
        }
        Intent intentB = l.a().b(this);
        if (z) {
            p.a("protocolLaunch");
        }
        if (this.y) {
            intentB.putExtra("loginAfterSignup", true);
        }
        if (this.w.getExtras() != null) {
            intentB.putExtras(this.w.getExtras());
        }
        startActivity(intentB);
        overridePendingTransition(0, 0);
        finish();
    }

    private void d(int i) {
        k.b("rbx.splash", "showRetryFragment: ");
        b bVarB = B();
        if (bVarB != null) {
            k.b("rbx.splash", "showRetryFragment: Found an existing Retry fragment.");
            bVarB.a((CharSequence) getString(i));
        } else {
            k.b("rbx.splash", "showRetryFragment: Create a new FragmentRetry...");
            b.d(i).a(j(), "FragmentRetry");
        }
    }

    private void A() {
        b bVarB = B();
        if (bVarB != null) {
            k.b("rbx.splash", "Dismiss the existing Retry UI...");
            bVarB.b();
        }
    }

    private b B() {
        Fragment fragmentA = j().a("FragmentRetry");
        if (fragmentA instanceof b) {
            return (b) fragmentA;
        }
        return null;
    }

    private void M() {
        com.roblox.client.n.d dVarA = com.roblox.client.n.d.a();
        dVarA.a(com.roblox.client.b.W());
        dVarA.a(u.M());
    }

    @Override // com.roblox.client.startup.d
    public void q() {
        f.b().a(this.v);
        if (!this.x && this.v) {
            k.c("rbx.splash", "The app appears to crash in the last run. Check if we need to upload crash dump...");
            com.roblox.client.analytics.b.a().a(this);
        }
        M();
        if (com.roblox.client.x.c.h() && K()) {
            k.b("rbx.splash", "updateViewAppSettingsLoaded: (NEW_STARTUP) launch the Main activity now...");
            this.A = true;
            c.a((Context) this).b(this);
            d(this.z == e.PROTOCOL_LAUNCH);
            finish();
        }
    }

    @Override // com.roblox.client.startup.d
    public void r() {
        a(false);
        if (K()) {
            d(o.j.CommonUI_Messages_Response_ConnectionError);
        }
    }

    @Override // com.roblox.client.startup.d
    public void s() {
        a(false);
        if (K()) {
            d(o.j.CommonUI_Messages_Response_SSLHandshakeException);
        }
    }

    @Override // com.roblox.client.startup.d
    public void t() {
        a(false);
        if (K()) {
            d(o.j.CommonUI_Messages_Response_ServiceNotAvailable);
        }
    }

    @Override // com.roblox.client.startup.d
    public void u() {
        i.a("NavigateToLandingScreen");
        if (K()) {
            x();
        }
    }

    @Override // com.roblox.client.startup.d
    public void v() {
        i.a("NavigateToLandingScreen");
        if (K()) {
            d(false);
        }
    }

    @Override // com.roblox.client.startup.b.a
    public void y() {
        n();
    }

    @Override // com.roblox.client.startup.b.a
    public void z() {
        n();
    }
}
