package com.roblox.client.signup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
interface f {

    public interface a {
    }

    public interface b {
        void a(boolean z, String str);
    }

    public interface d extends com.roblox.client.l.a<b> {
        void a(boolean z);

        void b();

        void c();
    }

    public enum c implements com.roblox.client.l.h {
        SIGN_UP(1),
        CANCEL(2),
        SWITCH_TO_LOGIN(3),
        BIRTH_DAY_SELECTED(4),
        BIRTH_MONTH_SELECTED(5),
        BIRTH_YEAR_SELECTED(6),
        USERNAME_ENTERED(7),
        PASSWORD_ENTERED(8),
        PASSWORD_CONFIRMATION_ENTERED(9),
        GENDER_SELECTED(10),
        TERMS_OF_PRIVACY_CHECK_CHANGED(11),
        GET_USERNAME_SUGGESTION(12);

        private int m;

        c(int i) {
            this.m = i;
        }
    }
}
