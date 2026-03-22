package com.google.android.gms.common.b;

import android.util.Log;
import com.google.android.gms.common.internal.n;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n f3687c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3688d;

    private a(String str, String str2) {
        this.f3686b = str2;
        this.f3685a = str;
        this.f3687c = new n(str);
        int i = 2;
        while (7 >= i && !Log.isLoggable(this.f3685a, i)) {
            i++;
        }
        this.f3688d = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(String str, String... strArr) {
        String string;
        if (strArr.length == 0) {
            string = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str2 : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str2);
            }
            sb.append(']');
            sb.append(' ');
            string = sb.toString();
        }
        this(str, string);
    }

    public void a(String str, Object... objArr) {
        if (a(3)) {
            Log.d(this.f3685a, c(str, objArr));
        }
    }

    public boolean a(int i) {
        return this.f3688d <= i;
    }

    public void b(String str, Object... objArr) {
        Log.e(this.f3685a, c(str, objArr));
    }

    protected String c(String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f3686b.concat(str);
    }
}
