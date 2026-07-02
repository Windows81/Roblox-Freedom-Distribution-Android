package com.roblox.client.login;

import android.os.Bundle;
import com.roblox.client.R;
import com.roblox.client.i.h;
import com.roblox.client.util.g;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f7419d = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<c> f7420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7422c;
    private final h.c e = new h.c() { // from class: com.roblox.client.login.b.1
        @Override // com.roblox.client.i.h.c
        public void a() {
            g.b("LoginHelper", "onLoginSuccess: Will finish the view as success...");
            b.this.b().d(104);
        }

        @Override // com.roblox.client.i.h.c
        public void a(String str, String str2, String str3) {
            b.this.b().a(str, str2, str3);
        }

        @Override // com.roblox.client.i.h.c
        public void b() {
            g.b("LoginHelper", "onPasswordResetRequested: ");
            b.this.b().k();
            b.this.b().l();
        }

        @Override // com.roblox.client.i.h.c
        public void a(Bundle bundle) {
            g.b("LoginHelper", "onPasswordResetRequired: params = " + bundle);
            b.this.b().k();
            b.this.b().a(bundle);
        }

        @Override // com.roblox.client.i.h.c
        public void a(int i, String str) {
            g.b("LoginHelper", "onLoginFailure: errorCode=" + i + ". ErrorMsg=" + str + ".");
            b.this.b().k();
            switch (i) {
                case -1008:
                    b.this.b().a(b.this.f7421b);
                    break;
                case -1007:
                    b.this.b().e(R.string.Authentication_Login_Response_SystemErrorTryLaterContactSupport);
                    break;
                case -1006:
                default:
                    b.this.b().e(R.string.CommonUI_Messages_Response_SystemErrorTryLater);
                    break;
                case -1005:
                    b.this.b().e(R.string.Authentication_Login_Response_UnableToLogIn);
                    break;
                case -1004:
                    b.this.b().e(R.string.Authentication_Login_Response_AccountIssueErrorContactSupport);
                    break;
                case -1003:
                    b.this.b().e(R.string.Authentication_Login_Response_LoginIssueErrorContactSupport);
                    break;
                case -1002:
                    b.this.b().m();
                    break;
                case -1001:
                    b.this.b().e(R.string.Authentication_Login_Response_MissingUsernamePasswordError);
                    break;
            }
        }
    };

    public static b a() {
        if (f7419d == null) {
            synchronized (b.class) {
                if (f7419d == null) {
                    f7419d = new b();
                }
            }
        }
        return f7419d;
    }

    b() {
        g.b("LoginHelper", "LoginHelper created.");
    }

    public void a(c cVar) {
        this.f7420a = new WeakReference<>(cVar);
    }

    void b(c cVar) {
        c cVar2;
        if (this.f7420a != null && (cVar2 = this.f7420a.get()) != null && cVar2 == cVar) {
            this.f7420a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c b() {
        if (this.f7420a == null || this.f7420a.get() == null) {
            this.f7420a = new WeakReference<>(new a());
        }
        return this.f7420a.get();
    }

    void a(String str, String str2) {
        g.b("LoginHelper", "login: username=" + str + ".");
        this.f7421b = str;
        this.f7422c = str2;
        h.a().a(this.f7421b, this.f7422c, this.e);
    }

    void a(long j) {
        g.b("LoginHelper", "on2SVCodeVerified: userId => " + j);
        h.a().b(j);
        b().d(104);
    }

    void a(int i) {
        g.b("LoginHelper", "onReCaptchaFinished: resultCode => " + i);
        if (i == -1) {
            h.a().a(this.f7421b, this.f7422c, this.e);
        } else {
            b().k();
        }
    }

    private static class a implements c {
        private a() {
        }

        @Override // com.roblox.client.login.c
        public void k() {
        }

        @Override // com.roblox.client.login.c
        public void d(int i) {
        }

        @Override // com.roblox.client.login.c
        public void a(String str, String str2, String str3) {
        }

        @Override // com.roblox.client.login.c
        public void l() {
        }

        @Override // com.roblox.client.login.c
        public void a(Bundle bundle) {
        }

        @Override // com.roblox.client.login.c
        public void m() {
        }

        @Override // com.roblox.client.login.c
        public void e(int i) {
        }

        @Override // com.roblox.client.login.c
        public void a(String str) {
        }
    }
}
