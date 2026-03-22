package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.appsflyer.AppsFlyerProperties;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ar implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.b f5233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f5234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f5235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f5236d;

    ar(com.google.firebase.b bVar, p pVar, Executor executor) {
        this(bVar, pVar, executor, new v(bVar.a(), pVar));
    }

    @Override // com.google.firebase.iid.b
    public final boolean a() {
        return true;
    }

    private ar(com.google.firebase.b bVar, p pVar, Executor executor, v vVar) {
        this.f5233a = bVar;
        this.f5234b = pVar;
        this.f5235c = vVar;
        this.f5236d = executor;
    }

    @Override // com.google.firebase.iid.b
    public final boolean b() {
        return this.f5234b.a() != 0;
    }

    @Override // com.google.firebase.iid.b
    public final com.google.android.gms.f.g<Void> a(String str, String str2) {
        return com.google.android.gms.f.j.a((Object) null);
    }

    @Override // com.google.firebase.iid.b
    public final com.google.android.gms.f.g<String> a(String str, String str2, String str3, String str4) {
        return b(a(str, str3, str4, new Bundle()));
    }

    @Override // com.google.firebase.iid.b
    public final com.google.android.gms.f.g<Void> a(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String strValueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", strValueOf.length() != 0 ? "/topics/".concat(strValueOf) : new String("/topics/"));
        String strValueOf2 = String.valueOf(str3);
        return a(b(a(str, str2, strValueOf2.length() != 0 ? "/topics/".concat(strValueOf2) : new String("/topics/"), bundle)));
    }

    @Override // com.google.firebase.iid.b
    public final com.google.android.gms.f.g<Void> b(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String strValueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", strValueOf.length() != 0 ? "/topics/".concat(strValueOf) : new String("/topics/"));
        bundle.putString("delete", "1");
        String strValueOf2 = String.valueOf(str3);
        return a(b(a(str, str2, strValueOf2.length() != 0 ? "/topics/".concat(strValueOf2) : new String("/topics/"), bundle)));
    }

    private final com.google.android.gms.f.g<Bundle> a(String str, String str2, String str3, final Bundle bundle) {
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString(AppsFlyerProperties.APP_ID, str);
        bundle.putString("gmp_app_id", this.f5233a.c().a());
        bundle.putString("gmsv", Integer.toString(this.f5234b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f5234b.b());
        bundle.putString("app_ver_name", this.f5234b.c());
        bundle.putString("cliv", "fiid-12451000");
        final com.google.android.gms.f.h hVar = new com.google.android.gms.f.h();
        this.f5236d.execute(new Runnable(this, bundle, hVar) { // from class: com.google.firebase.iid.as

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ar f5237a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Bundle f5238b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final com.google.android.gms.f.h f5239c;

            {
                this.f5237a = this;
                this.f5238b = bundle;
                this.f5239c = hVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5237a.a(this.f5238b, this.f5239c);
            }
        });
        return hVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String a(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("unregistered");
        if (string2 != null) {
            return string2;
        }
        String string3 = bundle.getString("error");
        if ("RST".equals(string3)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string3 != null) {
            throw new IOException(string3);
        }
        String strValueOf = String.valueOf(bundle);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 21);
        sb.append("Unexpected response: ");
        sb.append(strValueOf);
        Log.w("FirebaseInstanceId", sb.toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    private final <T> com.google.android.gms.f.g<Void> a(com.google.android.gms.f.g<T> gVar) {
        return gVar.a(ak.a(), new at(this));
    }

    private final com.google.android.gms.f.g<String> b(com.google.android.gms.f.g<Bundle> gVar) {
        return gVar.a(this.f5236d, new au(this));
    }

    final /* synthetic */ void a(Bundle bundle, com.google.android.gms.f.h hVar) {
        try {
            hVar.a(this.f5235c.a(bundle));
        } catch (IOException e2) {
            hVar.a((Exception) e2);
        }
    }
}
