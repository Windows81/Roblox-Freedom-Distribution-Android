package com.roblox.client.login.mvp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Patterns;
import androidx.lifecycle.g;
import androidx.lifecycle.i;
import androidx.lifecycle.r;
import com.roblox.client.ae.k;
import com.roblox.client.captcha.LoginCaptchaConfig;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.g.a;
import com.roblox.client.login.mvp.b;
import com.roblox.client.o;
import com.roblox.client.u.a;
import com.roblox.client.u.h;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LoginPresenter implements i, b.InterfaceC0160b, a.InterfaceC0181a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final b.c f6551c = new b.c() { // from class: com.roblox.client.login.mvp.LoginPresenter.1
        @Override // com.roblox.client.login.mvp.b.c
        public void a(Bundle bundle) {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void a(LoginCaptchaConfig loginCaptchaConfig) {
        }

        @Override // com.roblox.client.u.b
        public void a(b.InterfaceC0160b interfaceC0160b) {
        }

        @Override // com.roblox.client.u.b
        public void a(a.InterfaceC0181a interfaceC0181a) {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void a(String str) {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void b(String str, String str2) {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void b(String str, String str2, String str3) {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void e(int i) {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void f(int i) {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void g(int i) {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void h(int i) {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void u() {
        }

        @Override // com.roblox.client.login.mvp.b.c
        public void v() {
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected b.a f6552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<b.c> f6553b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f6554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.s.f f6555e;
    private com.roblox.abtesting.a f;
    private com.roblox.client.g.a g;
    private boolean h;
    private boolean i;
    private final f j = new f() { // from class: com.roblox.client.login.mvp.LoginPresenter.5
        @Override // com.roblox.client.login.mvp.f
        public void a() {
            if (com.roblox.client.b.bZ()) {
                LoginPresenter.this.g();
            } else {
                LoginPresenter.this.f();
            }
        }

        @Override // com.roblox.client.login.mvp.f
        public void a(String str, String str2, String str3) {
            LoginPresenter.this.e().u();
            LoginPresenter.this.e().b(str, str2, str3);
            if (com.roblox.client.b.bZ()) {
                LoginPresenter.this.d();
            }
        }

        @Override // com.roblox.client.login.mvp.f
        public void b() {
            k.b("rbx.authlogin", "onPasswordResetRequested: ");
            LoginPresenter.this.e().u();
            LoginPresenter.this.e().v();
        }

        @Override // com.roblox.client.login.mvp.f
        public void c() {
            k.b("rbx.authlogin", "onTooManyFailedCredentials.");
            LoginPresenter.this.e().u();
            Bundle bundle = new Bundle();
            bundle.putInt("DialogTitle", o.j.Authentication_Login_Response_PleaseTryAgain);
            bundle.putInt("PositiveButton", o.j.Authentication_Login_Action_ForgotPassword);
            bundle.putInt("NegativeButton", o.j.CommonUI_Features_Action_Ok);
            int i = o.j.Authentication_Login_Response_TooManyAttemptsMessageForUsername;
            String strB = LoginPresenter.this.f6552a.b();
            if ("PhoneNumber".equals(strB)) {
                i = o.j.Authentication_Login_Response_TooManyAttemptsMessageForPhone;
            } else if (ContactRequestObject.JSON_FIELD_EMAIL.equals(strB)) {
                i = o.j.Authentication_Login_Response_TooManyAttemptsMessageForEmail;
            }
            bundle.putInt("DialogMessage", i);
            bundle.putString("CallContext", "WrongCredentialsForgotPassword");
            LoginPresenter.this.e().a(bundle);
        }

        @Override // com.roblox.client.login.mvp.f
        public void d() {
            k.b("rbx.authlogin", "onFloodCheck.");
            LoginPresenter.this.e().u();
            Bundle bundle = new Bundle();
            bundle.putInt("DialogTitle", o.j.CommonUI_Messages_Response_TooManyAttemptsText);
            bundle.putInt("PositiveButton", o.j.Authentication_ResetPassword_Label_ResetPassword);
            bundle.putInt("NegativeButton", o.j.CommonUI_Features_Action_Ok);
            bundle.putInt("DialogMessage", o.j.Authentication_Login_Response_TooManyAttemptsMessage);
            bundle.putString("CallContext", "FloodcheckedResetPassword");
            LoginPresenter.this.e().a(bundle);
        }

        @Override // com.roblox.client.login.mvp.f
        public void a(c cVar) {
            k.b("rbx.authlogin", "onLoginFailure: errorCode=" + cVar.f6576c + ".");
            LoginPresenter.this.a(cVar);
            int i = cVar.f6576c;
            if (i != -2021) {
                LoginPresenter.this.e().u();
            }
            switch (i) {
                case -2023:
                    LoginPresenter.this.e().g(o.j.Authentication_Login_Response_GlobalAppAccessError);
                    break;
                case -2022:
                    break;
                case -2021:
                    LoginPresenter.this.i();
                    break;
                case -2020:
                    LoginPresenter.this.e().g(o.j.Authentication_Login_Response_SystemErrorTryLaterContactSupport);
                    break;
                case -2019:
                default:
                    LoginPresenter.this.e().g(o.j.CommonUI_Messages_Response_SystemErrorTryLater);
                    break;
                case -2018:
                    LoginPresenter.this.e().g(o.j.Authentication_Login_Response_UnableToLogIn);
                    break;
                case -2017:
                    LoginPresenter.this.h = true;
                    int i2 = o.j.Authentication_Login_Response_ErrorLoginWithUsername;
                    if (ContactRequestObject.JSON_FIELD_EMAIL.equals(LoginPresenter.this.f6552a.b())) {
                        i2 = o.j.Authentication_Login_Response_UnverifiedEmailLoginWithUsername;
                    } else if ("PhoneNumber".equals(LoginPresenter.this.f6552a.b())) {
                        i2 = o.j.Authentication_Login_Response_UnverifiedEmailPhoneWithUsername;
                    }
                    LoginPresenter.this.e().h(i2);
                    break;
                case -2016:
                    LoginPresenter.this.h = true;
                    int i3 = o.j.Authentication_Login_Response_ErrorLoginWithUsername;
                    if (ContactRequestObject.JSON_FIELD_EMAIL.equals(LoginPresenter.this.f6552a.b())) {
                        i3 = o.j.Authentication_Login_Response_MultipleAccountEmailLoginWithUsername;
                    }
                    LoginPresenter.this.e().h(i3);
                    break;
                case -2015:
                    LoginPresenter.this.e().g(o.j.Authentication_Login_Response_AccountIssueErrorContactSupport);
                    break;
                case -2014:
                    LoginPresenter.this.e().g(o.j.Authentication_Login_Response_LoginIssueErrorContactSupport);
                    break;
                case -2013:
                    int i4 = o.j.Authentication_Login_Response_IncorrectUsernamePassword;
                    if (ContactRequestObject.JSON_FIELD_EMAIL.equals(LoginPresenter.this.f6552a.b())) {
                        i4 = o.j.Authentication_Login_Response_IncorrectEmailPassword;
                    } else if ("PhoneNumber".equals(LoginPresenter.this.f6552a.b())) {
                        i4 = o.j.Authentication_Login_Response_IncorrectPhonePassword;
                    }
                    LoginPresenter.this.g.a(LoginPresenter.this.h());
                    LoginPresenter.this.e().f(i4);
                    break;
                case -2012:
                    LoginPresenter.this.h = true;
                    LoginPresenter.this.e().g(o.j.Authentication_Login_Response_ErrorLoginWithUsername);
                    break;
                case -2011:
                    LoginPresenter.this.e().g(o.j.Authentication_Login_Response_MissingUsernamePasswordError);
                    break;
            }
        }
    };

    @Override // com.roblox.client.u.a.InterfaceC0181a
    public void a(h hVar, com.roblox.client.u.c cVar) {
    }

    LoginPresenter(b.c cVar, com.roblox.client.s.f fVar, b.a aVar, g gVar, com.roblox.abtesting.a aVar2, com.roblox.client.g.a aVar3) {
        this.f6553b = new WeakReference<>(cVar);
        this.f6552a = aVar;
        this.f6554d = gVar;
        this.f6555e = fVar;
        this.f = aVar2;
        this.g = aVar3;
        gVar.a(this);
        e().a(this);
        e().a((a.InterfaceC0181a) this);
        this.h = false;
        this.i = false;
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0160b
    public void a(boolean z, String str, String str2) {
        if (z) {
            this.i = true;
            b.a aVar = this.f6552a;
            aVar.a(aVar.a(), this.f6552a.b(), this.f6552a.c(), str, str2, this.j);
            return;
        }
        e().u();
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0160b
    public void a(String str, String str2) {
        String strA = a(str);
        if (this.f.k() && !this.i) {
            this.f6552a.a(strA, str, str2);
            i();
        } else {
            this.f6552a.a(str, strA, str2, null, null, this.j);
        }
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0160b
    public void a(long j) {
        k.b("rbx.authlogin", "on2SVCodeVerified: userId => " + j);
        this.f6552a.d();
        f();
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0160b
    public void a() {
        this.f6552a.e();
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0160b
    public void b() {
        this.g.a();
        f();
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0160b
    public void a(Intent intent) {
        this.g.c();
        a(this.g.a(intent));
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0160b
    public void c() {
        this.g.d();
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0160b
    public void a(Activity activity) {
        this.g.a(activity, 10121, new a.b() { // from class: com.roblox.client.login.mvp.LoginPresenter.2
            @Override // com.roblox.client.g.a.b
            public void a(com.roblox.client.g.c cVar) {
                LoginPresenter.this.a(cVar);
            }
        });
    }

    @Override // com.roblox.client.login.mvp.b.InterfaceC0160b
    public void a(int i) {
        if (i == -1) {
            this.g.a();
        } else {
            this.g.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.g.c cVar) {
        String str = cVar.f6208a;
        String str2 = cVar.f6209b;
        this.f6552a.a(a(str), str, str2);
        e().b(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.g.a((Activity) e(), 10119, h(), new a.InterfaceC0146a() { // from class: com.roblox.client.login.mvp.LoginPresenter.3
            @Override // com.roblox.client.g.a.InterfaceC0146a
            public void c() {
            }

            @Override // com.roblox.client.g.a.InterfaceC0146a
            public void a() {
                LoginPresenter.this.f();
            }

            @Override // com.roblox.client.g.a.InterfaceC0146a
            public void b() {
                LoginPresenter.this.f();
            }
        });
    }

    protected void d() {
        this.g.a((Activity) e(), 10120, h(), new a.InterfaceC0146a() { // from class: com.roblox.client.login.mvp.LoginPresenter.4
            @Override // com.roblox.client.g.a.InterfaceC0146a
            public void a() {
            }

            @Override // com.roblox.client.g.a.InterfaceC0146a
            public void b() {
            }

            @Override // com.roblox.client.g.a.InterfaceC0146a
            public void c() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.g.c h() {
        return new com.roblox.client.g.c(this.f6552a.a(), this.f6552a.c());
    }

    protected void a(c cVar) {
        this.f6555e.a(cVar.f6574a, cVar.f6575b, cVar.f6577d);
    }

    protected String a(String str) {
        return this.h ? "Username" : (com.roblox.client.b.aO() && str.contains("@")) ? ContactRequestObject.JSON_FIELD_EMAIL : (com.roblox.client.b.aN() && Patterns.PHONE.matcher(str).matches()) ? "PhoneNumber" : "Username";
    }

    protected b.c e() {
        if (this.f6553b.get() != null) {
            return this.f6553b.get();
        }
        return f6551c;
    }

    protected void f() {
        k.b("rbx.authlogin", "onLoginSuccess: Will finish the view as success...");
        this.f6555e.w();
        e().e(104);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void i() {
        /*
            r4 = this;
            com.roblox.client.login.mvp.b$a r0 = r4.f6552a
            java.lang.String r0 = r0.b()
            int r1 = r0.hashCode()
            r2 = -201069322(0xfffffffff403ecf6, float:-4.18089E31)
            r3 = 1
            if (r1 == r2) goto L2f
            r2 = 67066748(0x3ff5b7c, float:1.5008557E-36)
            if (r1 == r2) goto L25
            r2 = 474898999(0x1c4e6237, float:6.828662E-22)
            if (r1 == r2) goto L1b
            goto L39
        L1b:
            java.lang.String r1 = "PhoneNumber"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L39
            r0 = 1
            goto L3a
        L25:
            java.lang.String r1 = "Email"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L39
            r0 = 0
            goto L3a
        L2f:
            java.lang.String r1 = "Username"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L39
            r0 = 2
            goto L3a
        L39:
            r0 = -1
        L3a:
            if (r0 == 0) goto L44
            if (r0 == r3) goto L41
            com.roblox.client.captcha.LoginCaptchaConfig$a r0 = com.roblox.client.captcha.LoginCaptchaConfig.a.USERNAME
            goto L46
        L41:
            com.roblox.client.captcha.LoginCaptchaConfig$a r0 = com.roblox.client.captcha.LoginCaptchaConfig.a.PHONE_NUMBER
            goto L46
        L44:
            com.roblox.client.captcha.LoginCaptchaConfig$a r0 = com.roblox.client.captcha.LoginCaptchaConfig.a.EMAIL
        L46:
            com.roblox.client.login.mvp.b$c r1 = r4.e()
            com.roblox.client.captcha.LoginCaptchaConfig r2 = new com.roblox.client.captcha.LoginCaptchaConfig
            com.roblox.client.login.mvp.b$a r3 = r4.f6552a
            java.lang.String r3 = r3.a()
            r2.<init>(r0, r3)
            r1.a(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.login.mvp.LoginPresenter.i():void");
    }

    @r(a = g.a.ON_RESUME)
    void setStoreCredentialValue() {
        e().a(this.f6552a.a());
    }

    @r(a = g.a.ON_DESTROY)
    void cleanup() {
        this.f6554d.b(this);
    }
}
