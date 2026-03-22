package com.google.android.gms.common.api;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("sAllClients")
    private static final Set<f> f3332a = Collections.newSetFromMap(new WeakHashMap());

    public interface a {
        void a(int i);

        void a(Bundle bundle);
    }

    public interface b {
        void a(ConnectionResult connectionResult);
    }
}
