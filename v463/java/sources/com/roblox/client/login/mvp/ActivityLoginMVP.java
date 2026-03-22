package com.roblox.client.login.mvp;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.app.b;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.g;
import com.roblox.client.ac.a;
import com.roblox.client.ae.h;
import com.roblox.client.ae.k;
import com.roblox.client.ae.s;
import com.roblox.client.captcha.LoginCaptchaConfig;
import com.roblox.client.captcha.a;
import com.roblox.client.login.mvp.a;
import com.roblox.client.login.mvp.b;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.resetpassword.ResetPasswordActivity;
import com.roblox.client.u;
import com.roblox.client.u.a;
import com.roblox.client.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityLoginMVP extends com.roblox.client.u.f implements a.InterfaceC0119a, a.InterfaceC0129a, a.InterfaceC0159a, b.c {
    protected b.InterfaceC0160b q;
    protected DialogInterface.OnDismissListener r = new DialogInterface.OnDismissListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.2
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            a aVarA = ActivityLoginMVP.this.A();
            if (aVarA != null) {
                aVarA.as();
            }
        }
    };
    private DialogInterface.OnDismissListener t = new DialogInterface.OnDismissListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.3
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            a aVarA = ActivityLoginMVP.this.A();
            if (aVarA != null) {
                aVarA.at();
            }
        }
    };

    @Override // com.roblox.client.u.b
    public void a(a.InterfaceC0181a interfaceC0181a) {
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void n() {
    }

    @Override // com.roblox.client.u.f, com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        k.b("rbx.authlogin", "onCreate:");
        setContentView(o.g.activity_login);
        r();
        this.q = q();
    }

    public LoginPresenter q() {
        return new LoginPresenter(this, com.roblox.client.s.f.b(), new e(new d(com.roblox.client.ad.c.a(), com.roblox.client.ad.b.a(), s.a(getApplicationContext()))), g(), com.roblox.abtesting.a.a(), new com.roblox.client.y.a(this, new com.roblox.client.g.b()));
    }

    @Override // com.roblox.client.r, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        if (com.roblox.client.b.by()) {
            context = h.a(context);
        }
        super.attachBaseContext(context);
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    public void onBackPressed() {
        if (j().e() > 0) {
            super.onBackPressed();
        } else {
            p.a("login", "close");
            d(0);
        }
    }

    @Override // com.roblox.client.q, androidx.fragment.app.c, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        k.b("rbx.authlogin", "onActivityResult: resultCode = " + i2);
        if (i == 10113) {
            t();
        }
        switch (i) {
            case 10119:
            case 10120:
                b(i, i2);
                break;
            case 10121:
                a(i2, intent);
                break;
        }
    }

    private void a(int i, Intent intent) {
        k.c("rbx.authlogin", "Result code: " + i);
        if (i == -1) {
            this.q.a(intent);
        } else {
            this.q.c();
        }
    }

    private void b(int i, int i2) {
        this.q.a(i2);
        if (i != 10119) {
            if (i == 10120) {
                if (i2 == -1) {
                    k.c("rbx.authlogin", "SAVE: Credentials saved.");
                    return;
                } else {
                    k.b("rbx.authlogin", "SAVE: Canceled by user or NEVER was clicked.");
                    return;
                }
            }
            return;
        }
        if (i2 == -1) {
            k.c("rbx.authlogin", "SAVE: Credentials saved.");
        } else {
            k.b("rbx.authlogin", "SAVE: Canceled by user or NEVER was clicked. ResultCode: " + i2);
        }
        this.q.b();
    }

    private void a(boolean z, String str, String str2) {
        k.b("rbx.authlogin", "onCaptchaCallback: success => " + z);
        this.q.a(z, str, str2);
    }

    protected void r() {
        a aVarA = A();
        if (aVarA == null) {
            k.b("rbx.authlogin", "Create a new FragmentLoginMVP...");
            aVarA = a.aq();
        }
        j().a().b(o.f.login_content_layout, aVarA, "login_window_mvp").c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a A() {
        Fragment fragmentA = j().a("login_window_mvp");
        if (fragmentA instanceof a) {
            return (a) fragmentA;
        }
        return null;
    }

    protected void a(String str, String str2, String str3) {
        j().a().a(o.a.slide_up_short, 0, 0, o.a.slide_down_short).b(o.f.login_content_layout, com.roblox.client.ac.a.a(str, str2, str3), "Fragment2SV").a((String) null).c();
    }

    protected void s() {
        k.b("rbx.authlogin", "showResetPassword:");
        p.a("login", "forgot_password");
        startActivityForResult(new Intent(this, (Class<?>) ResetPasswordActivity.class), 10113);
    }

    protected void d(int i) {
        setResult(i);
        finish();
        overridePendingTransition(0, o.a.slide_down_short);
    }

    protected void t() {
        k.b("rbx.authlogin", "onResetPasswordClosed.");
        this.q.a();
        a aVarA = A();
        if (aVarA != null) {
            aVarA.as();
        }
    }

    public static void a(Activity activity) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) ActivityLoginMVP.class), 10111);
        activity.overridePendingTransition(o.a.slide_up_short, o.a.stay);
    }

    @Override // com.roblox.client.u.b
    public void a(b.InterfaceC0160b interfaceC0160b) {
        this.q = interfaceC0160b;
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void u() {
        a aVarA = A();
        if (aVarA != null) {
            aVarA.ar();
        }
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void e(int i) {
        k.b("rbx.authlogin", "finishViewWithResult: resultCode = " + i);
        d(i);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void b(String str, String str2, String str3) {
        k.b("rbx.authlogin", "showTwoStepVerificationUI: username = " + str3);
        a(str, str2, str3);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void v() {
        if (isDestroyed()) {
            return;
        }
        k.b("rbx.authlogin", "showPasswordResetRequestedAlert:");
        new b.a(this).b(com.roblox.client.locale.a.a.a(this, o.j.Authentication_ResetPassword_Response_ResetPasswordStarted, new Object[0])).a(com.roblox.client.locale.a.a.a(this, o.j.CommonUI_Features_Action_Ok, new Object[0]), new DialogInterface.OnClickListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                v vVar = new v();
                Bundle bundle = new Bundle();
                bundle.putBoolean("USING_LOGIN_WEB_URL", true);
                vVar.g(bundle);
                vVar.a(new v.b() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.1.1
                    @Override // com.roblox.client.v.b
                    public void a() {
                        ActivityLoginMVP.this.c("password_reset_requested");
                    }
                });
                if (u.i()) {
                    vVar.a(0, o.k.Theme_Roblox_Fullscreen);
                } else {
                    vVar.a(0, o.k.Theme_Roblox_WebDialogNoTitle);
                }
                vVar.f(u.af());
                vVar.a(ActivityLoginMVP.this.j(), "password_reset_requested");
            }
        }).a(false).b().show();
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void a(Bundle bundle) {
        k.b("rbx.authlogin", "showForgotPasswordAlert:");
        b(bundle);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void f(int i) {
        k.b("rbx.authlogin", "showInvalidCredentialsAlert:");
        a(com.roblox.client.locale.a.a.a(this, i, new Object[0]), this.r);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void g(int i) {
        e(com.roblox.client.locale.a.a.a(this, i, new Object[0]));
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void a(LoginCaptchaConfig loginCaptchaConfig) {
        if (g.b.RESUMED == g().a()) {
            k.b("rbx.authlogin", "showCaptchaUI: config = " + loginCaptchaConfig);
            j().a().a(o.f.login_captcha_content_layout, com.roblox.client.captcha.a.a(loginCaptchaConfig), "FragmentFunCaptcha").a((String) null).c();
            return;
        }
        if (com.roblox.client.b.bQ()) {
            u();
        }
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void h(int i) {
        a(com.roblox.client.locale.a.a.a(this, i, new Object[0]), this.t);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void a(String str) {
        a aVarA = A();
        if (aVarA != null) {
            aVarA.d(str);
        }
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void b(String str, String str2) {
        a aVarA = A();
        if (aVarA != null) {
            aVarA.b(str, str2);
        }
    }

    @Override // com.roblox.client.login.mvp.a.InterfaceC0159a
    public void c(String str, String str2) {
        k.b("rbx.authlogin", "onLoginClicked:");
        this.q.a(str, str2);
    }

    @Override // com.roblox.client.login.mvp.a.InterfaceC0159a
    public void w() {
        k.b("rbx.authlogin", "onCancelClicked:");
        p.a("login", "close");
        d(0);
    }

    @Override // com.roblox.client.login.mvp.a.InterfaceC0159a
    public void x() {
        k.b("rbx.authlogin", "onSignUpClicked:");
        p.a("login", "signup");
        d(105);
    }

    @Override // com.roblox.client.login.mvp.a.InterfaceC0159a
    public void y() {
        k.b("rbx.authlogin", "onForgotPasswordClicked:");
        s();
    }

    @Override // com.roblox.client.login.mvp.a.InterfaceC0159a
    public void z() {
        this.q.a(this);
    }

    @Override // com.roblox.client.ac.a.InterfaceC0119a
    public void a(long j) {
        k.b("rbx.authlogin", "onCodeVerified: userId => " + j);
        this.q.a(j);
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void a(String str, String str2) {
        j().c();
        a(true, str, str2);
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void p() {
        if (isFinishing()) {
            return;
        }
        a(false, (String) null, (String) null);
    }

    protected void b(final Bundle bundle) {
        if (isDestroyed()) {
            return;
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i != -2) {
                    if (i != -1) {
                        return;
                    }
                    ActivityLoginMVP.this.b(bundle.getString("CallContext", ""));
                    ActivityLoginMVP.this.s();
                    return;
                }
                dialogInterface.dismiss();
                a aVarA = ActivityLoginMVP.this.A();
                if (aVarA != null) {
                    aVarA.as();
                }
            }
        };
        androidx.appcompat.app.b bVarB = new b.a(this).a(com.roblox.client.locale.a.a.a(this, bundle.getInt("DialogTitle"), new Object[0])).b(com.roblox.client.locale.a.a.a(this, bundle.getInt("DialogMessage"), new Object[0])).a(com.roblox.client.locale.a.a.a(this, bundle.getInt("PositiveButton"), new Object[0]), onClickListener).b(com.roblox.client.locale.a.a.a(this, bundle.getInt("NegativeButton"), new Object[0]), onClickListener).a(false).b();
        bVarB.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.5
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                androidx.appcompat.app.b bVar = (androidx.appcompat.app.b) dialogInterface;
                Button buttonA = bVar.a(-2);
                Button buttonA2 = bVar.a(-1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 2.0f);
                buttonA.setLayoutParams(layoutParams);
                buttonA2.setLayoutParams(layoutParams);
                buttonA.invalidate();
                buttonA2.invalidate();
            }
        });
        bVarB.show();
    }

    protected void b(String str) {
        String str2;
        if (str.equals("WrongCredentialsForgotPassword")) {
            str2 = "Android-AppLogin-ForgotPassword-Pressed";
        } else {
            str2 = str.equals("FloodcheckedResetPassword") ? "Android-AppLogin-ResetPassword-Pressed" : null;
        }
        if (str2 != null) {
            com.roblox.client.s.f.b().a(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        Fragment fragmentA = j().a(str);
        if (fragmentA != null) {
            j().a().a(fragmentA).d();
        }
        new b.a(this).b(com.roblox.client.locale.a.a.a(this, o.j.Authentication_ResetPassword_Response_CheckEmailToResetPassword, new Object[0])).a(com.roblox.client.locale.a.a.a(this, o.j.CommonUI_Features_Action_Ok, new Object[0]), new DialogInterface.OnClickListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).a(new DialogInterface.OnCancelListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.6
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                dialogInterface.dismiss();
            }
        }).a(true).b().show();
    }
}
