package com.roblox.client.login.mvp;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.b;
import android.widget.Button;
import android.widget.LinearLayout;
import com.roblox.client.R;
import com.roblox.client.ReCaptchaActivity;
import com.roblox.client.RobloxSettings;
import com.roblox.client.i;
import com.roblox.client.l.a;
import com.roblox.client.login.mvp.a;
import com.roblox.client.login.mvp.b;
import com.roblox.client.n;
import com.roblox.client.p.a;
import com.roblox.client.resetpassword.ResetPasswordActivity;
import com.roblox.client.resetpassword.a;
import com.roblox.client.util.g;
import com.roblox.client.util.m;

/* JADX INFO: loaded from: classes.dex */
public class ActivityLoginMVP extends com.roblox.client.l.f implements a.InterfaceC0121a, b.c, a.InterfaceC0123a, a.InterfaceC0128a {
    private b.InterfaceC0122b p;

    @Override // com.roblox.client.l.f, com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        g.b("rbx.authlogin", "onCreate:");
        setContentView(R.layout.activity_login);
        w();
        this.p = new LoginPresenter(this, com.roblox.client.i.f.a(), new e(new d(com.roblox.client.q.d.a(), com.roblox.client.q.c.a(), m.a(getApplicationContext()))), getLifecycle());
    }

    @Override // android.support.v4.app.h, android.app.Activity
    public void onBackPressed() {
        if (e().e() > 0) {
            super.onBackPressed();
        } else {
            i.b("login", "close");
            h(0);
        }
    }

    @Override // com.roblox.client.k, android.support.v4.app.h, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        g.b("rbx.authlogin", "onActivityResult: resultCode = " + i2);
        if (i == 10105) {
            this.p.a(i2);
        } else if (i == 10113) {
            A();
        }
    }

    private void w() {
        a aVarY = y();
        if (aVarY == null) {
            g.b("rbx.authlogin", "Create a new FragmentLoginMVP...");
            aVarY = a.a();
        }
        e().a().b(R.id.login_content_layout, aVarY, "login_window_mvp").c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a y() {
        Fragment fragmentA = e().a("login_window_mvp");
        if (fragmentA instanceof a) {
            return (a) fragmentA;
        }
        return null;
    }

    private void b(String str, String str2, String str3) {
        e().a().a(R.anim.slide_up_short, 0, 0, R.anim.slide_down_short).b(R.id.login_content_layout, com.roblox.client.p.a.a(str, str2, str3), "Fragment2SV").a((String) null).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        g.b("rbx.authlogin", "showResetPassword:");
        i.b("login", "forgot_password");
        if (com.roblox.client.b.bh()) {
            startActivityForResult(new Intent(this, (Class<?>) ResetPasswordActivity.class), 10113);
        } else {
            e().a().a(R.anim.slide_up_short, 0, 0, R.anim.slide_down_short).b(R.id.login_content_layout, com.roblox.client.resetpassword.a.a(), "reset_password_window").a((String) null).c();
        }
    }

    private void h(int i) {
        setResult(i);
        finish();
        overridePendingTransition(0, R.anim.slide_down_short);
    }

    private void A() {
        g.b("rbx.authlogin", "onResetPasswordClosed.");
        this.p.a();
        a aVarY = y();
        if (aVarY != null) {
            aVarY.c();
        }
    }

    public static void a(Activity activity) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) ActivityLoginMVP.class), 10111);
        activity.overridePendingTransition(R.anim.slide_up_short, R.anim.stay);
    }

    @Override // com.roblox.client.l.b
    public void a(b.InterfaceC0122b interfaceC0122b) {
        this.p = interfaceC0122b;
    }

    @Override // com.roblox.client.l.b
    public void a(a.InterfaceC0114a interfaceC0114a) {
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void k() {
        a aVarY = y();
        if (aVarY != null) {
            aVarY.b();
        }
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void d(int i) {
        g.b("rbx.authlogin", "finishViewWithResult: resultCode = " + i);
        h(i);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void a(String str, String str2, String str3) {
        g.b("rbx.authlogin", "showTwoStepVerificationUI: username = " + str3);
        b(str, str2, str3);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void l() {
        if (!isDestroyed()) {
            g.b("rbx.authlogin", "showPasswordResetRequestedAlert:");
            new b.a(this).b(getString(R.string.Authentication_ResetPassword_Response_ResetPasswordStarted)).a(R.string.CommonUI_Features_Action_Ok, new DialogInterface.OnClickListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    n nVar = new n();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("USING_LOGIN_WEB_URL", true);
                    nVar.setArguments(bundle);
                    nVar.a(new n.a() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.1.1
                        @Override // com.roblox.client.n.a
                        public void a() {
                            ActivityLoginMVP.this.e("password_reset_requested");
                        }
                    });
                    if (RobloxSettings.isTablet()) {
                        nVar.setStyle(0, R.style.Theme_Roblox_Fullscreen);
                    } else {
                        nVar.setStyle(0, R.style.Theme_Roblox_WebDialogNoTitle);
                    }
                    nVar.c(RobloxSettings.passwordResetUrl());
                    nVar.show(ActivityLoginMVP.this.e(), "password_reset_requested");
                }
            }).a(false).b().show();
        }
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void a(Bundle bundle) {
        g.b("rbx.authlogin", "showForgotPasswordAlert:");
        b(bundle);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void e(int i) {
        g.b("rbx.authlogin", "showInvalidCredentialsAlert:");
        a(i, new DialogInterface.OnDismissListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                a aVarY = ActivityLoginMVP.this.y();
                if (aVarY != null) {
                    aVarY.c();
                }
            }
        });
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void f(int i) {
        c(i);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void a(String str) {
        g.b("rbx.authlogin", "showReCaptchaUI: username = " + str);
        ReCaptchaActivity.a(this, str, 1);
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void g(int i) {
        a(i, new DialogInterface.OnDismissListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                a aVarY = ActivityLoginMVP.this.y();
                if (aVarY != null) {
                    aVarY.d();
                }
            }
        });
    }

    @Override // com.roblox.client.login.mvp.b.c
    public void b(String str) {
        a aVarY = y();
        if (aVarY != null) {
            aVarY.a(str);
        }
    }

    @Override // com.roblox.client.login.mvp.a.InterfaceC0121a
    public void a(String str, String str2) {
        g.b("rbx.authlogin", "onLoginClicked:");
        this.p.a(str, str2);
    }

    @Override // com.roblox.client.login.mvp.a.InterfaceC0121a
    public void m() {
        g.b("rbx.authlogin", "onCancelClicked:");
        i.b("login", "close");
        h(0);
    }

    @Override // com.roblox.client.login.mvp.a.InterfaceC0121a
    public void n() {
        g.b("rbx.authlogin", "onSignUpClicked:");
        i.b("login", "signup");
        h(105);
    }

    @Override // com.roblox.client.login.mvp.a.InterfaceC0121a
    public void v() {
        g.b("rbx.authlogin", "onForgotPasswordClicked:");
        z();
    }

    @Override // com.roblox.client.p.a.InterfaceC0123a
    public void a(long j) {
        g.b("rbx.authlogin", "onCodeVerified: userId => " + j);
        this.p.a(j);
    }

    @Override // com.roblox.client.resetpassword.a.InterfaceC0128a
    public void x() {
        g.b("rbx.authlogin", "onResetPasswordClose.");
        e().c();
        A();
    }

    private void b(final Bundle bundle) {
        if (!isDestroyed()) {
            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    switch (i) {
                        case -2:
                            dialogInterface.dismiss();
                            a aVarY = ActivityLoginMVP.this.y();
                            if (aVarY != null) {
                                aVarY.c();
                            }
                            break;
                        case -1:
                            ActivityLoginMVP.this.d(bundle.getString("CallContext", ""));
                            ActivityLoginMVP.this.z();
                            break;
                    }
                }
            };
            android.support.v7.app.b bVarB = new b.a(this).a(bundle.getInt("DialogTitle")).b(bundle.getInt("DialogMessage")).a(bundle.getInt("PositiveButton"), onClickListener).b(bundle.getInt("NegativeButton"), onClickListener).a(false).b();
            bVarB.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.5
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    Button buttonA = ((android.support.v7.app.b) dialogInterface).a(-2);
                    Button buttonA2 = ((android.support.v7.app.b) dialogInterface).a(-1);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 2.0f);
                    buttonA.setLayoutParams(layoutParams);
                    buttonA2.setLayoutParams(layoutParams);
                    buttonA.invalidate();
                    buttonA2.invalidate();
                }
            });
            bVarB.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        String str2 = null;
        if (str.equals("WrongCredentialsForgotPassword")) {
            str2 = "Android-AppLogin-ForgotPassword-Pressed";
        } else if (str.equals("FloodcheckedResetPassword")) {
            str2 = "Android-AppLogin-ResetPassword-Pressed";
        }
        if (str2 != null) {
            com.roblox.client.i.f.a().a(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        Fragment fragmentA = e().a(str);
        if (fragmentA != null) {
            e().a().a(fragmentA).d();
        }
        new b.a(this).b(getString(R.string.Authentication_ResetPassword_Response_CheckEmailToResetPassword)).a(R.string.CommonUI_Features_Action_Ok, new DialogInterface.OnClickListener() { // from class: com.roblox.client.login.mvp.ActivityLoginMVP.7
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
