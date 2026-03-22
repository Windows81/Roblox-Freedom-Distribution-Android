package com.roblox.client.landing;

import com.roblox.client.l.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
interface d {

    public interface a {
        void a();

        void b();
    }

    public interface c extends com.roblox.client.l.a<a> {
        void c(boolean z);

        void d(boolean z);

        void k();

        void l();

        void m();

        void n();
    }

    public enum b implements h {
        SIGN_UP(1),
        SIGN_UP_FROM_GUEST_DIALOG(2),
        LOGIN(3),
        PLAY_NOW(4),
        ABOUT(5),
        SWITCH_TO_LOGIN(6);

        private int g;

        b(int i) {
            this.g = i;
        }
    }
}
