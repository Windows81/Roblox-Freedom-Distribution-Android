package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
@TargetApi(21)
final class hw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, String> f5091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<String> f5093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final hj f5094d;

    static {
        HashMap map = new HashMap();
        if (com.google.android.gms.common.util.n.i()) {
            map.put("android.webkit.resource.AUDIO_CAPTURE", "android.permission.RECORD_AUDIO");
            map.put("android.webkit.resource.VIDEO_CAPTURE", "android.permission.CAMERA");
        }
        f5091a = map;
    }

    hw(Context context, List<String> list, hj hjVar) {
        this.f5092b = context;
        this.f5093c = list;
        this.f5094d = hjVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.List<java.lang.String> a(java.lang.String[] r11) {
        /*
            r10 = this;
            r2 = 1
            r1 = 0
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            int r5 = r11.length
            r3 = r1
        L9:
            if (r3 >= r5) goto L7f
            r6 = r11[r3]
            java.util.List<java.lang.String> r0 = r10.f5093c
            java.util.Iterator r7 = r0.iterator()
        L13:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto L6f
            java.lang.Object r0 = r7.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r8 = r0.equals(r6)
            if (r8 == 0) goto L4d
            r0 = r2
        L26:
            if (r0 == 0) goto L79
            java.util.Map<java.lang.String, java.lang.String> r0 = com.google.android.gms.internal.ads.hw.f5091a
            boolean r0 = r0.containsKey(r6)
            if (r0 == 0) goto L43
            com.google.android.gms.ads.internal.aw.e()
            android.content.Context r7 = r10.f5092b
            java.util.Map<java.lang.String, java.lang.String> r0 = com.google.android.gms.internal.ads.hw.f5091a
            java.lang.Object r0 = r0.get(r6)
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = com.google.android.gms.internal.ads.jm.a(r7, r0)
            if (r0 == 0) goto L71
        L43:
            r0 = r2
        L44:
            if (r0 == 0) goto L73
            r4.add(r6)
        L49:
            int r0 = r3 + 1
            r3 = r0
            goto L9
        L4d:
            java.lang.String r8 = "android.webkit.resource."
            java.lang.String r8 = java.lang.String.valueOf(r8)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r9 = r0.length()
            if (r9 == 0) goto L69
            java.lang.String r0 = r8.concat(r0)
        L61:
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L13
            r0 = r2
            goto L26
        L69:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r8)
            goto L61
        L6f:
            r0 = r1
            goto L26
        L71:
            r0 = r1
            goto L44
        L73:
            com.google.android.gms.internal.ads.hj r0 = r10.f5094d
            r0.c(r6)
            goto L49
        L79:
            com.google.android.gms.internal.ads.hj r0 = r10.f5094d
            r0.b(r6)
            goto L49
        L7f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.hw.a(java.lang.String[]):java.util.List");
    }
}
