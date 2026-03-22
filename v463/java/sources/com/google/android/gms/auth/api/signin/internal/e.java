package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.aa;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.google.android.gms.common.b.a f3403a = new com.google.android.gms.common.b.a("RevokeAccessOperation", new String[0]);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.common.api.internal.n f3405c;

    private e(String str) {
        aa.a(str);
        this.f3404b = str;
        this.f3405c = new com.google.android.gms.common.api.internal.n(null);
    }

    public static com.google.android.gms.common.api.g<Status> a(String str) {
        if (str == null) {
            return com.google.android.gms.common.api.h.a(new Status(4), null);
        }
        e eVar = new e(str);
        new Thread(eVar).start();
        return eVar.f3405c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.f3438c;
        try {
            String strValueOf = String.valueOf(this.f3404b);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strValueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(strValueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f3436a;
            } else {
                f3403a.b("Unable to revoke access!", new Object[0]);
            }
            com.google.android.gms.common.b.a aVar = f3403a;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Response Code: ");
            sb.append(responseCode);
            aVar.a(sb.toString(), new Object[0]);
        } catch (IOException e2) {
            com.google.android.gms.common.b.a aVar2 = f3403a;
            String strValueOf2 = String.valueOf(e2.toString());
            aVar2.b(strValueOf2.length() != 0 ? "IOException when revoking access: ".concat(strValueOf2) : new String("IOException when revoking access: "), new Object[0]);
        } catch (Exception e3) {
            com.google.android.gms.common.b.a aVar3 = f3403a;
            String strValueOf3 = String.valueOf(e3.toString());
            aVar3.b(strValueOf3.length() != 0 ? "Exception when revoking access: ".concat(strValueOf3) : new String("Exception when revoking access: "), new Object[0]);
        }
        this.f3405c.b(status);
    }
}
