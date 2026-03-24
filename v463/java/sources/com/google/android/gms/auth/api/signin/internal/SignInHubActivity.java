package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.f.a.a;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SignInHubActivity extends androidx.fragment.app.c {
    private static boolean k = false;
    private boolean l = false;
    private SignInConfiguration m;
    private boolean n;
    private int o;
    private Intent p;

    private class a implements a.InterfaceC0039a<Void> {
        private a() {
        }

        @Override // androidx.f.a.a.InterfaceC0039a
        public final androidx.f.b.c<Void> a(int i, Bundle bundle) {
            return new f(SignInHubActivity.this, com.google.android.gms.common.api.f.a());
        }

        @Override // androidx.f.a.a.InterfaceC0039a
        public final void a(androidx.f.b.c<Void> cVar) {
        }

        @Override // androidx.f.a.a.InterfaceC0039a
        public final /* synthetic */ void a(androidx.f.b.c<Void> cVar, Void r3) {
            SignInHubActivity signInHubActivity = SignInHubActivity.this;
            signInHubActivity.setResult(signInHubActivity.o, SignInHubActivity.this.p);
            SignInHubActivity.this.finish();
        }
    }

    private final void a() {
        l().a(0, null, new a());
        k = false;
    }

    private final void c(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        k = false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.l) {
            return;
        }
        setResult(0);
        if (i != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && signInAccount.a() != null) {
                GoogleSignInAccount googleSignInAccountA = signInAccount.a();
                m.a(this).a(this.m.a(), googleSignInAccountA);
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", googleSignInAccountA);
                this.n = true;
                this.o = i2;
                this.p = intent;
                a();
                return;
            }
            if (intent.hasExtra("errorCode")) {
                c(intent.getIntExtra("errorCode", 8));
                return;
            }
        }
        c(8);
    }

    @Override // androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        if ("com.google.android.gms.auth.NO_IMPL".equals(action)) {
            c(12500);
            return;
        }
        if (!action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            String strValueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", strValueOf.length() != 0 ? "Unknown action: ".concat(strValueOf) : new String("Unknown action: "));
            finish();
            return;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) intent.getBundleExtra("config").getParcelable("config");
        this.m = signInConfiguration;
        if (signInConfiguration == null) {
            Log.e("AuthSignInClient", "Activity started with invalid configuration.");
            setResult(0);
            finish();
            return;
        }
        if (!(bundle == null)) {
            boolean z = bundle.getBoolean("signingInGoogleApiClients");
            this.n = z;
            if (z) {
                this.o = bundle.getInt("signInResultCode");
                this.p = (Intent) bundle.getParcelable("signInResultData");
                a();
                return;
            }
            return;
        }
        if (k) {
            setResult(0);
            c(12502);
            return;
        }
        k = true;
        Intent intent2 = new Intent(action);
        intent2.setPackage(action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") ? "com.google.android.gms" : getPackageName());
        intent2.putExtra("config", this.m);
        try {
            startActivityForResult(intent2, 40962);
        } catch (ActivityNotFoundException unused) {
            this.l = true;
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            c(17);
        }
    }

    @Override // androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.n);
        if (this.n) {
            bundle.putInt("signInResultCode", this.o);
            bundle.putParcelable("signInResultData", this.p);
        }
    }
}
