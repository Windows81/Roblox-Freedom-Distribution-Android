package com.google.android.gms.internal.ads;

import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class zd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ze f5726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f5727b;

    static final class a extends ze {
        a() {
        }

        @Override // com.google.android.gms.internal.ads.ze
        public final void a(Throwable th, PrintWriter printWriter) {
            th.printStackTrace(printWriter);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001d A[Catch: Throwable -> 0x002e, TRY_ENTER, TryCatch #0 {Throwable -> 0x002e, blocks: (B:5:0x0008, B:7:0x0010, B:13:0x001d, B:17:0x0028, B:22:0x006a), top: B:28:0x0008 }] */
    static {
        /*
            r2 = 1
            r1 = 0
            java.lang.Integer r0 = a()     // Catch: java.lang.Throwable -> L75
            if (r0 == 0) goto L1d
            int r1 = r0.intValue()     // Catch: java.lang.Throwable -> L2e
            r3 = 19
            if (r1 < r3) goto L1d
            com.google.android.gms.internal.ads.zi r1 = new com.google.android.gms.internal.ads.zi     // Catch: java.lang.Throwable -> L2e
            r1.<init>()     // Catch: java.lang.Throwable -> L2e
        L15:
            com.google.android.gms.internal.ads.zd.f5726a = r1
            if (r0 != 0) goto L70
            r0 = r2
        L1a:
            com.google.android.gms.internal.ads.zd.f5727b = r0
            return
        L1d:
            java.lang.String r1 = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"
            boolean r1 = java.lang.Boolean.getBoolean(r1)     // Catch: java.lang.Throwable -> L2e
            if (r1 != 0) goto L68
            r1 = r2
        L26:
            if (r1 == 0) goto L6a
            com.google.android.gms.internal.ads.zh r1 = new com.google.android.gms.internal.ads.zh     // Catch: java.lang.Throwable -> L2e
            r1.<init>()     // Catch: java.lang.Throwable -> L2e
            goto L15
        L2e:
            r1 = move-exception
        L2f:
            java.io.PrintStream r3 = java.lang.System.err
            java.lang.Class<com.google.android.gms.internal.ads.zd$a> r4 = com.google.android.gms.internal.ads.zd.a.class
            java.lang.String r4 = r4.getName()
            java.lang.String r5 = java.lang.String.valueOf(r4)
            int r5 = r5.length()
            int r5 = r5 + 132
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r5)
            java.lang.String r5 = "An error has occured when initializing the try-with-resources desuguring strategy. The default strategy "
            java.lang.StringBuilder r5 = r6.append(r5)
            java.lang.StringBuilder r4 = r5.append(r4)
            java.lang.String r5 = "will be used. The error is: "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.println(r4)
            java.io.PrintStream r3 = java.lang.System.err
            r1.printStackTrace(r3)
            com.google.android.gms.internal.ads.zd$a r1 = new com.google.android.gms.internal.ads.zd$a
            r1.<init>()
            goto L15
        L68:
            r1 = 0
            goto L26
        L6a:
            com.google.android.gms.internal.ads.zd$a r1 = new com.google.android.gms.internal.ads.zd$a     // Catch: java.lang.Throwable -> L2e
            r1.<init>()     // Catch: java.lang.Throwable -> L2e
            goto L15
        L70:
            int r0 = r0.intValue()
            goto L1a
        L75:
            r0 = move-exception
            r7 = r0
            r0 = r1
            r1 = r7
            goto L2f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zd.<clinit>():void");
    }

    private static Integer a() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }

    public static void a(Throwable th, PrintWriter printWriter) {
        f5726a.a(th, printWriter);
    }
}
