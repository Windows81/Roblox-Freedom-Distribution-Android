package com.google.android.gms.b;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.google.android.gms.b.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0065a extends com.google.android.gms.internal.c.b implements a {

        /* JADX INFO: renamed from: com.google.android.gms.b.a$a$a, reason: collision with other inner class name */
        public static class C0066a extends com.google.android.gms.internal.c.a implements a {
            C0066a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
            }
        }

        public AbstractBinderC0065a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new C0066a(iBinder);
        }
    }
}
