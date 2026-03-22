package com.roblox.client.landing;

import com.roblox.client.u.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
interface c {

    public interface a {
        void a();

        void b();
    }

    /* JADX INFO: renamed from: com.roblox.client.landing.c$c, reason: collision with other inner class name */
    public interface InterfaceC0155c extends com.roblox.client.u.a<a> {
        void a(boolean z);

        void c(boolean z);

        void n();

        void p();

        void q();
    }

    public enum b implements h {
        SIGN_UP(1),
        LOGIN(3),
        ABOUT(5),
        SWITCH_TO_LOGIN(6);


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f6450e;

        b(int i) {
            this.f6450e = i;
        }
    }
}
