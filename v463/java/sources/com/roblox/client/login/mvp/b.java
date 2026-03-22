package com.roblox.client.login.mvp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.roblox.client.captcha.LoginCaptchaConfig;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    interface a {
        String a();

        void a(String str, String str2, String str3);

        void a(String str, String str2, String str3, String str4, String str5, f fVar);

        String b();

        String c();

        void d();

        void e();
    }

    /* JADX INFO: renamed from: com.roblox.client.login.mvp.b$b, reason: collision with other inner class name */
    interface InterfaceC0160b {
        void a();

        void a(int i);

        void a(long j);

        void a(Activity activity);

        void a(Intent intent);

        void a(String str, String str2);

        void a(boolean z, String str, String str2);

        void b();

        void c();
    }

    interface c extends com.roblox.client.u.b<InterfaceC0160b> {
        void a(Bundle bundle);

        void a(LoginCaptchaConfig loginCaptchaConfig);

        void a(String str);

        void b(String str, String str2);

        void b(String str, String str2, String str3);

        void e(int i);

        void f(int i);

        void g(int i);

        void h(int i);

        void u();

        void v();
    }
}
