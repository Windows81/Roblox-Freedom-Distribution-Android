package com.google.android.gms.c;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.google.android.gms.c.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0080a extends com.google.android.gms.internal.d.b implements a {

        /* JADX INFO: renamed from: com.google.android.gms.c.a$a$a, reason: collision with other inner class name */
        public static class C0081a extends com.google.android.gms.internal.d.a implements a {
            C0081a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
            }
        }

        public AbstractBinderC0080a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new C0081a(iBinder);
        }
    }
}
