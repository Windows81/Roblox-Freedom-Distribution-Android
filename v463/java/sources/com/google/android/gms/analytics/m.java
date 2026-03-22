package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class m implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Uri f3279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LogPrinter f3280b = new LogPrinter(4, "GA/LogCatTransport");

    static {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("local");
        f3279a = builder.build();
    }

    @Override // com.google.android.gms.analytics.w
    public final Uri a() {
        return f3279a;
    }

    @Override // com.google.android.gms.analytics.w
    public final void a(o oVar) {
        ArrayList arrayList = new ArrayList(oVar.b());
        Collections.sort(arrayList, new n(this));
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            String string = ((q) obj).toString();
            if (!TextUtils.isEmpty(string)) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(string);
            }
        }
        this.f3280b.println(sb.toString());
    }
}
