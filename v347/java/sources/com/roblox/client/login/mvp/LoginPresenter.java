package com.roblox.client.login.mvp;

import android.arch.lifecycle.d;
import android.arch.lifecycle.m;
import android.os.Bundle;
import android.util.Patterns;
import com.roblox.client.R;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.l.a;
import com.roblox.client.l.h;
import com.roblox.client.login.mvp.b;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class LoginPresenter implements android.arch.lifecycle.f, a.InterfaceC0114a, b.InterfaceC0122b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b.c f7451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b.a f7452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private android.arch.lifecycle.d f7453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.i.f f7454d;
    private boolean e;
    private final f f = new f() { // from class: com.roblox.client.login.mvp.LoginPresenter.1
        @Override // com.roblox.client.login.mvp.f
        public void a() {
            LoginPresenter.this.b();
        }

        @Override // com.roblox.client.login.mvp.f
        public void a(String str, String str2, String str3) {
            LoginPresenter.this.f7451a.k();
            LoginPresenter.this.f7451a.a(str, str2, str3);
        }

        @Override // com.roblox.client.login.mvp.f
        public void b() {
            g.b("rbx.authlogin", "onPasswordResetRequested: ");
            LoginPresenter.this.f7451a.k();
            LoginPresenter.this.f7451a.l();
        }

        @Override // com.roblox.client.login.mvp.f
        public void c() {
            g.b("rbx.authlogin", "onTooManyFailedCredentials.");
            LoginPresenter.this.f7451a.k();
            Bundle bundle = new Bundle();
            bundle.putInt("DialogTitle", R.string.Authentication_Login_Response_PleaseTryAgain);
            bundle.putInt("PositiveButton", R.string.Authentication_Login_Action_ForgotPassword);
            bundle.putInt("NegativeButton", R.string.CommonUI_Features_Action_Ok);
            bundle.putString("CallContext", "WrongCredentialsForgotPassword");
            int i = R.string.Authentication_Login_Response_IncorrectUsernameOrPasswordMessage;
            String strB = LoginPresenter.this.f7452b.b();
            if ("PhoneNumber".equals(strB)) {
                i = R.string.Authentication_Login_Response_IncorrectPhoneOrPasswordMessage;
            } else if (ContactRequestObject.JSON_FIELD_EMAIL.equals(strB)) {
                i = R.string.Authentication_Login_Response_IncorrectEmailOrPasswordMessage;
            }
            bundle.putInt("DialogMessage", i);
            LoginPresenter.this.f7451a.a(bundle);
        }

        @Override // com.roblox.client.login.mvp.f
        public void d() {
            g.b("rbx.authlogin", "onTooManyFailedCredentials.");
            LoginPresenter.this.f7451a.k();
            Bundle bundle = new Bundle();
            bundle.putInt("DialogTitle", R.string.CommonUI_Messages_Response_TooManyAttemptsText);
            bundle.putInt("PositiveButton", R.string.Authentication_ResetPassword_Label_ResetPassword);
            bundle.putInt("NegativeButton", R.string.CommonUI_Features_Action_Ok);
            bundle.putString("CallContext", "FloodcheckedResetPassword");
            int i = R.string.Authentication_Login_Response_TooManyAttemptsMessageForUsername;
            String strB = LoginPresenter.this.f7452b.b();
            if ("PhoneNumber".equals(strB)) {
                i = R.string.Authentication_Login_Response_TooManyAttemptsMessageForPhone;
            } else if (ContactRequestObject.JSON_FIELD_EMAIL.equals(strB)) {
                i = R.string.Authentication_Login_Response_TooManyAttemptsMessageForEmail;
            }
            bundle.putInt("DialogMessage", i);
            LoginPresenter.this.f7451a.a(bundle);
        }

        @Override // com.roblox.client.login.mvp.f
        public void a(c cVar) {
            int i = R.string.Authentication_Login_Response_ErrorLoginWithUsername;
            g.b("rbx.authlogin", "onLoginFailure: errorCode=" + cVar.f7472c + ".");
            LoginPresenter.this.a(cVar);
            LoginPresenter.this.f7451a.k();
            switch (cVar.f7472c) {
                case -2022:
                    break;
                case -2021:
                    LoginPresenter.this.f7451a.a(LoginPresenter.this.f7452b.c());
                    break;
                case -2020:
                    LoginPresenter.this.f7451a.f(R.string.Authentication_Login_Response_SystemErrorTryLaterContactSupport);
                    break;
                case -2019:
                default:
                    LoginPresenter.this.f7451a.f(R.string.CommonUI_Messages_Response_SystemErrorTryLater);
                    break;
                case -2018:
                    LoginPresenter.this.f7451a.f(R.string.Authentication_Login_Response_UnableToLogIn);
                    break;
                case -2017:
                    LoginPresenter.this.e = true;
                    if (ContactRequestObject.JSON_FIELD_EMAIL.equals(LoginPresenter.this.f7452b.b())) {
                        i = R.string.Authentication_Login_Response_UnverifiedEmailLoginWithUsername;
                    } else if ("PhoneNumber".equals(LoginPresenter.this.f7452b.b())) {
                        i = R.string.Authentication_Login_Response_UnverifiedEmailPhoneWithUsername;
                    }
                    LoginPresenter.this.f7451a.g(i);
                    break;
                case -2016:
                    LoginPresenter.this.e = true;
                    if (ContactRequestObject.JSON_FIELD_EMAIL.equals(LoginPresenter.this.f7452b.b())) {
                        i = R.string.Authentication_Login_Response_MultipleAccountEmailLoginWithUsername;
                    }
                    LoginPresenter.this.f7451a.g(i);
                    break;
                case -2015:
                    LoginPresenter.this.f7451a.f(R.string.Authentication_Login_Response_AccountIssueErrorContactSupport);
                    break;
                case -2014:
                    LoginPresenter.this.f7451a.f(R.string.Authentication_Login_Response_LoginIssueErrorContactSupport);
                    break;
                case -2013:
                    int i2 = R.string.Authentication_Login_Response_IncorrectUsernamePassword;
                    if (ContactRequestObject.JSON_FIELD_EMAIL.equals(LoginPresenter.this.f7452b.b())) {
                        i2 = R.string.Authentication_Login_Response_IncorrectEmailPassword;
                    } else if ("PhoneNumber".equals(LoginPresenter.this.f7452b.b())) {
                        i2 = R.string.Authentication_Login_Response_IncorrectPhonePassword;
                    }
                    LoginPresenter.this.f7451a.e(i2);
                    break;
                case -2012:
                    LoginPresenter.this.e = true;
                    LoginPresenter.this.f7451a.f(R.string.Authentication_Login_Response_ErrorLoginWithUsername);
                    break;
                case -2011:
                    LoginPresenter.this.f7451a.f(R.string.Authentication_Login_Response_MissingUsernamePasswordError);
                    break;
            }
        }
    };

    LoginPresenter(b.c cVar, com.roblox.client.i.f fVar, b.a aVar, android.arch.lifecycle.d dVar) {
        this.f7451a = cVar;
        this.f7452b = aVar;
        this.f7453c = dVar;
        this.f7454d = fVar;
        this.f7453c.a(this);
        this.f7451a.a(this);
        this.f7451a.a((a.InterfaceC0114a) this);
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0122b
    public void a(int i) {
        g.b("rbx.authlogin", "onReCaptchaFinished: resultCode => " + i);
        if (i == -1) {
            this.f7452b.a(this.f7452b.a(), this.f7452b.b(), this.f7452b.d(), this.f);
        } else {
            this.f7451a.k();
        }
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0122b
    public void a(String str, String str2) {
        this.f7452b.a(str, a(str), str2, this.f);
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0122b
    public void a(long j) {
        g.b("rbx.authlogin", "on2SVCodeVerified: userId => " + j);
        this.f7452b.e();
        b();
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0122b
    public void a() {
        this.f7452b.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar) {
        this.f7454d.a(cVar.f7470a, cVar.f7471b, cVar.f7473d);
    }

    private String a(String str) {
        if (this.e) {
            return "Username";
        }
        if (com.roblox.client.b.bM() && str.contains("@")) {
            return ContactRequestObject.JSON_FIELD_EMAIL;
        }
        if (com.roblox.client.b.bL() && Patterns.PHONE.matcher(str).matches()) {
            return "PhoneNumber";
        }
        return "Username";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        g.b("rbx.authlogin", "onLoginSuccess: Will finish the view as success...");
        this.f7454d.u();
        this.f7451a.d(104);
    }

    @m(a = d.a.ON_RESUME)
    void setStoreCredentialValue() {
        this.f7451a.b(this.f7452b.a());
    }

    @m(a = d.a.ON_DESTROY)
    void cleanup() {
        this.f7453c.b(this);
    }

    @Override // com.roblox.client.l.a.InterfaceC0114a
    public void a(h hVar, com.roblox.client.l.c cVar) {
    }
}
