package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Pair<String, String>, com.google.android.gms.f.g<String>> f5275a = new androidx.c.a();

    s() {
    }

    final synchronized com.google.android.gms.f.g<String> a(String str, String str2, u uVar) {
        final Pair<String, String> pair = new Pair<>(str, str2);
        com.google.android.gms.f.g<String> gVar = this.f5275a.get(pair);
        if (gVar != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(pair);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 29);
                sb.append("Joining ongoing request for: ");
                sb.append(strValueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            return gVar;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String strValueOf2 = String.valueOf(pair);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 24);
            sb2.append("Making new request for: ");
            sb2.append(strValueOf2);
            Log.d("FirebaseInstanceId", sb2.toString());
        }
        com.google.android.gms.f.g gVarB = uVar.a().b(ak.a(), new com.google.android.gms.f.a(this, pair) { // from class: com.google.firebase.iid.t

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final s f5276a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Pair f5277b;

            {
                this.f5276a = this;
                this.f5277b = pair;
            }

            @Override // com.google.android.gms.f.a
            public final Object a(com.google.android.gms.f.g gVar2) {
                return this.f5276a.a(this.f5277b, gVar2);
            }
        });
        this.f5275a.put(pair, (com.google.android.gms.f.g<String>) gVarB);
        return gVarB;
    }

    final /* synthetic */ com.google.android.gms.f.g a(Pair pair, com.google.android.gms.f.g gVar) throws Exception {
        synchronized (this) {
            this.f5275a.remove(pair);
        }
        return gVar;
    }
}
