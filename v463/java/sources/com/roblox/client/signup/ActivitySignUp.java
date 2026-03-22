package com.roblox.client.signup;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.roblox.client.ae.h;
import com.roblox.client.ae.k;
import com.roblox.client.captcha.SignUpCaptchaConfig;
import com.roblox.client.captcha.a;
import com.roblox.client.g.a;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.q;
import com.roblox.client.signup.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivitySignUp extends q implements a.InterfaceC0129a, a.b {
    com.roblox.client.g.a q;

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void n() {
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(o.g.activity_sign_up);
        a aVar = (a) j().a("signup_window");
        if (aVar == null) {
            j().a().a(o.f.sign_up_content_layout, a.aq(), "signup_window").c();
        } else {
            String str = "FragmentSignUp not null. isAdded=" + aVar.x() + ". isVisible=" + aVar.A() + ".";
            k.b("ActivitySignUp", str);
            com.roblox.client.analytics.d.a("UnexpectedError", str);
        }
        u();
    }

    @Override // com.roblox.client.r, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        if (com.roblox.client.b.by()) {
            context = h.a(context);
        }
        super.attachBaseContext(context);
    }

    @Override // com.roblox.client.q, androidx.fragment.app.c, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        k.b("ActivitySignUp", "onActivityResult: resultCode = " + i2);
        if (i != 10122) {
            return;
        }
        e(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        if (i == 0) {
            p.a("signup", "close");
        }
        setResult(i);
        finish();
        overridePendingTransition(0, o.a.slide_down_short);
    }

    private Fragment t() {
        return j().a("signup_window");
    }

    private void c(String str, String str2) {
        Fragment fragmentT = t();
        if (fragmentT != null) {
            ((a) fragmentT).a(false, str, str2);
        }
    }

    private void u() {
        if (com.roblox.client.b.ca()) {
            this.q = new com.roblox.client.y.a(this, new com.roblox.client.g.b());
        }
    }

    private void e(int i) {
        if (com.roblox.client.b.ca()) {
            if (i == -1) {
                k.c("ActivitySignUp", "SAVE: Credentials saved.");
                this.q.a();
            } else {
                k.b("ActivitySignUp", "SAVE: Canceled by user or NEVER was clicked. ResultCode: " + i);
                this.q.b();
            }
            d(102);
        }
    }

    public static void a(Activity activity) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) ActivitySignUp.class), 10109);
        activity.overridePendingTransition(o.a.slide_up_short, o.a.stay);
    }

    @Override // com.roblox.client.signup.a.b
    public void b(String str, String str2) {
        if (com.roblox.client.b.ca()) {
            this.q.a(this, 10122, new com.roblox.client.g.c(str, str2), new a.InterfaceC0146a() { // from class: com.roblox.client.signup.ActivitySignUp.1
                @Override // com.roblox.client.g.a.InterfaceC0146a
                public void c() {
                }

                @Override // com.roblox.client.g.a.InterfaceC0146a
                public void a() {
                    ActivitySignUp.this.d(102);
                }

                @Override // com.roblox.client.g.a.InterfaceC0146a
                public void b() {
                    ActivitySignUp.this.d(102);
                }
            });
        } else {
            d(102);
        }
    }

    @Override // com.roblox.client.signup.a.b
    public void q() {
        d(103);
    }

    @Override // com.roblox.client.signup.a.b
    public void r() {
        d(0);
    }

    @Override // com.roblox.client.signup.a.b
    public void s() {
        k.c("ActivitySignUp", "Try invisible captcha.");
        j().a().a(o.f.sign_up_captcha_content_layout, com.roblox.client.captcha.a.a(new SignUpCaptchaConfig()), "FragmentFunCaptcha").a((String) null).c();
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void a(String str, String str2) {
        k.c("ActivitySignUp", "Invisible captcha success. Sign up again.");
        j().c();
        c(str, str2);
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void p() {
        Fragment fragmentT;
        if (isFinishing() || (fragmentT = t()) == null) {
            return;
        }
        ((a) fragmentT).at();
    }
}
