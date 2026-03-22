package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f4677e = 11;
    private static final int f = 12;
    private static final int g = 16;
    private static final int h = 26;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f4673a = new int[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long[] f4674b = new long[0];
    private static final float[] i = new float[0];
    private static final double[] j = new double[0];
    private static final boolean[] k = new boolean[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f4675c = new String[0];
    private static final byte[][] l = new byte[0][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f4676d = new byte[0];

    public static final int a(c cVar, int i2) throws IOException {
        int i3 = cVar.i();
        cVar.b(i2);
        int i4 = 1;
        while (cVar.a() == i2) {
            cVar.b(i2);
            i4++;
        }
        cVar.b(i3, i2);
        return i4;
    }
}
