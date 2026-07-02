package com.roblox.client.login;

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
import com.roblox.client.i.f;
import com.roblox.client.k;
import com.roblox.client.login.a;
import com.roblox.client.n;
import com.roblox.client.p.a;
import com.roblox.client.resetpassword.ResetPasswordActivity;
import com.roblox.client.resetpassword.a;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class ActivityLogin extends k implements a.InterfaceC0118a, c, a.InterfaceC0123a, a.InterfaceC0128a {
    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        g.b("ActivityLogin", "onCreate:");
        setContentView(R.layout.activity_login);
        y();
        b.a().a(this);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g.b("ActivityLogin", "onDestroy: unset the activity from LoginHelper.");
        b.a().b(this);
    }

    @Override // android.support.v4.app.h, android.app.Activity
    public void onBackPressed() {
        if (e().e() > 0) {
            super.onBackPressed();
        } else {
            i.b("login", "close");
            f(0);
        }
    }

    @Override // com.roblox.client.k, android.support.v4.app.h, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        g.b("ActivityLogin", "onActivityResult: resultCode = " + i2);
        if (i == 10105) {
            b.a().a(i2);
        }
    }

    private void y() {
        a aVarZ = z();
        if (aVarZ == null) {
            g.b("ActivityLogin", "Create a new FragmentLogin...");
            aVarZ = a.a();
        }
        e().a().b(R.id.login_content_layout, aVarZ, "login_window").c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a z() {
        Fragment fragmentA = e().a("login_window");
        if (fragmentA instanceof a) {
            return (a) fragmentA;
        }
        return null;
    }

    private void b(String str, String str2, String str3) {
        a aVarZ = z();
        if (aVarZ != null) {
            aVarZ.b();
        }
        e().a().a(R.anim.slide_up_short, 0, 0, R.anim.slide_down_short).b(R.id.login_content_layout, com.roblox.client.p.a.a(str, str2, str3), "Fragment2SV").a((String) null).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        g.b("ActivityLogin", "showResetPassword:");
        i.b("login", "forgot_password");
        if (com.roblox.client.b.bh()) {
            startActivity(new Intent(this, (Class<?>) ResetPasswordActivity.class));
        } else {
            e().a().a(R.anim.slide_up_short, 0, 0, R.anim.slide_down_short).b(R.id.login_content_layout, com.roblox.client.resetpassword.a.a(), "reset_password_window").a((String) null).c();
        }
    }

    private void f(int i) {
        setResult(i);
        finish();
        overridePendingTransition(0, R.anim.slide_down_short);
    }

    public static void a(Activity activity) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) ActivityLogin.class), 10111);
        activity.overridePendingTransition(R.anim.slide_up_short, R.anim.stay);
    }

    @Override // com.roblox.client.login.c
    public void k() {
        a aVarZ = z();
        if (aVarZ != null) {
            aVarZ.b();
        }
    }

    @Override // com.roblox.client.login.c
    public void d(int i) {
        g.b("ActivityLogin", "finishViewWithResult: resultCode = " + i);
        f(i);
    }

    @Override // com.roblox.client.login.c
    public void a(String str, String str2, String str3) {
        g.b("ActivityLogin", "showTwoStepVerificationUI: username = " + str3);
        b(str, str2, str3);
    }

    @Override // com.roblox.client.login.c
    public void l() {
        g.b("ActivityLogin", "showPasswordResetRequestedAlert:");
        new b.a(this).b(getString(R.string.Authentication_ResetPassword_Response_ResetPasswordStarted)).a(R.string.CommonUI_Features_Action_Ok, new DialogInterface.OnClickListener() { // from class: com.roblox.client.login.ActivityLogin.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                n nVar = new n();
                Bundle bundle = new Bundle();
                bundle.putBoolean("USING_LOGIN_WEB_URL", true);
                nVar.setArguments(bundle);
                nVar.a(new n.a() { // from class: com.roblox.client.login.ActivityLogin.1.1
                    @Override // com.roblox.client.n.a
                    public void a() {
                        ActivityLogin.this.d("password_reset_requested");
                    }
                });
                if (RobloxSettings.isTablet()) {
                    nVar.setStyle(0, R.style.Theme_Roblox_Fullscreen);
                } else {
                    nVar.setStyle(0, R.style.Theme_Roblox_WebDialogNoTitle);
                }
                nVar.c(RobloxSettings.passwordResetUrl());
                nVar.show(ActivityLogin.this.e(), "password_reset_requested");
            }
        }).a(false).b().show();
    }

    @Override // com.roblox.client.login.c
    public void a(Bundle bundle) {
        g.b("ActivityLogin", "showForgotPasswordAlert:");
        b(bundle);
    }

    @Override // com.roblox.client.login.c
    public void m() {
        g.b("ActivityLogin", "showInvalidCredentialsAlert:");
        a(R.string.Authentication_Login_Response_IncorrectUsernamePassword, new DialogInterface.OnDismissListener() { // from class: com.roblox.client.login.ActivityLogin.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                a aVarZ = ActivityLogin.this.z();
                if (aVarZ != null) {
                    aVarZ.c();
                }
            }
        });
    }

    @Override // com.roblox.client.login.c
    public void e(int i) {
        c(i);
    }

    @Override // com.roblox.client.login.c
    public void a(String str) {
        g.b("ActivityLogin", "showReCaptchaUI: username = " + str);
        ReCaptchaActivity.a(this, str, 1);
    }

    @Override // com.roblox.client.login.a.InterfaceC0118a
    public void a(String str, String str2) {
        g.b("ActivityLogin", "onLoginClicked:");
        b.a().a(str, str2);
    }

    @Override // com.roblox.client.login.a.InterfaceC0118a
    public void n() {
        g.b("ActivityLogin", "onCancelClicked:");
        i.b("login", "close");
        f(0);
    }

    @Override // com.roblox.client.login.a.InterfaceC0118a
    public void v() {
        g.b("ActivityLogin", "onSignUpClicked:");
        i.b("login", "signup");
        f(105);
    }

    @Override // com.roblox.client.login.a.InterfaceC0118a
    public void w() {
        g.b("ActivityLogin", "onForgotPasswordClicked:");
        A();
    }

    @Override // com.roblox.client.p.a.InterfaceC0123a
    public void a(long j) {
        g.b("ActivityLogin", "onCodeVerified: userId => " + j);
        b.a().a(j);
    }

    @Override // com.roblox.client.resetpassword.a.InterfaceC0128a
    public void x() {
        g.b("ActivityLogin", "onResetPasswordClose:");
        e().c();
    }

    private void b(final Bundle bundle) {
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.roblox.client.login.ActivityLogin.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                switch (i) {
                    case -2:
                        dialogInterface.dismiss();
                        break;
                    case -1:
                        ActivityLogin.this.b(bundle.getString("CallContext", ""));
                        ActivityLogin.this.A();
                        break;
                }
            }
        };
        android.support.v7.app.b bVarB = new b.a(this).a(bundle.getInt("DialogTitle")).b(bundle.getInt("DialogMessage")).a(bundle.getInt("PositiveButton"), onClickListener).b(bundle.getInt("NegativeButton"), onClickListener).a(false).b();
        bVarB.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.roblox.client.login.ActivityLogin.4
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

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        String str2 = null;
        if (str.equals("WrongCredentialsForgotPassword")) {
            str2 = "Android-AppLogin-ForgotPassword-Pressed";
        } else if (str.equals("FloodcheckedResetPassword")) {
            str2 = "Android-AppLogin-ResetPassword-Pressed";
        }
        if (str2 != null) {
            f.a().a(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        Fragment fragmentA = e().a(str);
        if (fragmentA != null) {
            e().a().a(fragmentA).d();
        }
        new b.a(this).b(getString(R.string.Authentication_ResetPassword_Response_CheckEmailToResetPassword)).a(R.string.CommonUI_Features_Action_Ok, new DialogInterface.OnClickListener() { // from class: com.roblox.client.login.ActivityLogin.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).a(new DialogInterface.OnCancelListener() { // from class: com.roblox.client.login.ActivityLogin.5
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                dialogInterface.dismiss();
            }
        }).a(true).b().show();
    }
}
