package android.support.v4.b;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {
    static float[] a(float[] fArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        int iMin = Math.min(i3, length - i);
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, iMin);
        return fArr2;
    }

    public static Path a(String str) {
        Path path = new Path();
        C0017b[] c0017bArrB = b(str);
        if (c0017bArrB != null) {
            try {
                C0017b.a(c0017bArrB, path);
                return path;
            } catch (RuntimeException e) {
                throw new RuntimeException("Error in parsing " + str, e);
            }
        }
        return null;
    }

    public static C0017b[] b(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int iA = a(str, i);
            String strTrim = str.substring(i2, iA).trim();
            if (strTrim.length() > 0) {
                a((ArrayList<C0017b>) arrayList, strTrim.charAt(0), c(strTrim));
            }
            i = iA + 1;
            i2 = iA;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            a((ArrayList<C0017b>) arrayList, str.charAt(i2), new float[0]);
        }
        return (C0017b[]) arrayList.toArray(new C0017b[arrayList.size()]);
    }

    public static C0017b[] a(C0017b[] c0017bArr) {
        if (c0017bArr == null) {
            return null;
        }
        C0017b[] c0017bArr2 = new C0017b[c0017bArr.length];
        for (int i = 0; i < c0017bArr.length; i++) {
            c0017bArr2[i] = new C0017b(c0017bArr[i]);
        }
        return c0017bArr2;
    }

    public static boolean a(C0017b[] c0017bArr, C0017b[] c0017bArr2) {
        if (c0017bArr == null || c0017bArr2 == null || c0017bArr.length != c0017bArr2.length) {
            return false;
        }
        for (int i = 0; i < c0017bArr.length; i++) {
            if (c0017bArr[i].f856a != c0017bArr2[i].f856a || c0017bArr[i].f857b.length != c0017bArr2[i].f857b.length) {
                return false;
            }
        }
        return true;
    }

    public static void b(C0017b[] c0017bArr, C0017b[] c0017bArr2) {
        for (int i = 0; i < c0017bArr2.length; i++) {
            c0017bArr[i].f856a = c0017bArr2[i].f856a;
            for (int i2 = 0; i2 < c0017bArr2[i].f857b.length; i2++) {
                c0017bArr[i].f857b[i2] = c0017bArr2[i].f857b[i2];
            }
        }
    }

    private static int a(String str, int i) {
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (((cCharAt - 'A') * (cCharAt - 'Z') <= 0 || (cCharAt - 'a') * (cCharAt - 'z') <= 0) && cCharAt != 'e' && cCharAt != 'E') {
                break;
            }
            i++;
        }
        return i;
    }

    private static void a(ArrayList<C0017b> arrayList, char c2, float[] fArr) {
        arrayList.add(new C0017b(c2, fArr));
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f854a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f855b;

        a() {
        }
    }

    private static float[] c(String str) {
        int i;
        int i2 = 0;
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            a aVar = new a();
            int length = str.length();
            int i3 = 1;
            while (i3 < length) {
                a(str, i3, aVar);
                int i4 = aVar.f854a;
                if (i3 < i4) {
                    i = i2 + 1;
                    fArr[i2] = Float.parseFloat(str.substring(i3, i4));
                } else {
                    i = i2;
                }
                if (aVar.f855b) {
                    i3 = i4;
                    i2 = i;
                } else {
                    i3 = i4 + 1;
                    i2 = i;
                }
            }
            return a(fArr, 0, i2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    private static void a(String str, int i, a aVar) {
        aVar.f855b = false;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = i; i2 < str.length(); i2++) {
            switch (str.charAt(i2)) {
                case ' ':
                case ',':
                    z = false;
                    z3 = true;
                    break;
                case '-':
                    if (i2 == i || z) {
                        z = false;
                    } else {
                        aVar.f855b = true;
                        z = false;
                        z3 = true;
                    }
                    break;
                case '.':
                    if (z2) {
                        aVar.f855b = true;
                        z = false;
                        z3 = true;
                    } else {
                        z = false;
                        z2 = true;
                    }
                    break;
                case 'E':
                case 'e':
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z3) {
                aVar.f854a = i2;
            }
        }
        aVar.f854a = i2;
    }

    /* JADX INFO: renamed from: android.support.v4.b.b$b, reason: collision with other inner class name */
    public static class C0017b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public char f856a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float[] f857b;

        C0017b(char c2, float[] fArr) {
            this.f856a = c2;
            this.f857b = fArr;
        }

        C0017b(C0017b c0017b) {
            this.f856a = c0017b.f856a;
            this.f857b = b.a(c0017b.f857b, 0, c0017b.f857b.length);
        }

        public static void a(C0017b[] c0017bArr, Path path) {
            float[] fArr = new float[6];
            char c2 = 'm';
            for (int i = 0; i < c0017bArr.length; i++) {
                a(path, fArr, c2, c0017bArr[i].f856a, c0017bArr[i].f857b);
                c2 = c0017bArr[i].f856a;
            }
        }

        public void a(C0017b c0017b, C0017b c0017b2, float f) {
            for (int i = 0; i < c0017b.f857b.length; i++) {
                this.f857b[i] = (c0017b.f857b[i] * (1.0f - f)) + (c0017b2.f857b[i] * f);
            }
        }

        private static void a(Path path, float[] fArr, char c2, char c3, float[] fArr2) {
            int i;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13 = fArr[0];
            float f14 = fArr[1];
            float f15 = fArr[2];
            float f16 = fArr[3];
            float f17 = fArr[4];
            float f18 = fArr[5];
            switch (c3) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                    i = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f17, f18);
                    f16 = f18;
                    f15 = f17;
                    f14 = f18;
                    f13 = f17;
                    i = 2;
                    break;
                default:
                    i = 2;
                    break;
            }
            int i2 = 0;
            float f19 = f18;
            float f20 = f17;
            float f21 = f14;
            float f22 = f13;
            while (i2 < fArr2.length) {
                switch (c3) {
                    case 'A':
                        a(path, f22, f21, fArr2[i2 + 5], fArr2[i2 + 6], fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                        float f23 = fArr2[i2 + 5];
                        float f24 = fArr2[i2 + 6];
                        f = f19;
                        f2 = f20;
                        f3 = f23;
                        f4 = f24;
                        f5 = f23;
                        f6 = f24;
                        break;
                    case 'C':
                        path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        float f25 = fArr2[i2 + 4];
                        float f26 = fArr2[i2 + 5];
                        f3 = fArr2[i2 + 2];
                        f4 = f26;
                        f5 = f25;
                        f = f19;
                        f2 = f20;
                        f6 = fArr2[i2 + 3];
                        break;
                    case 'H':
                        path.lineTo(fArr2[i2 + 0], f21);
                        f = f19;
                        f3 = f15;
                        f4 = f21;
                        f5 = fArr2[i2 + 0];
                        f6 = f16;
                        f2 = f20;
                        break;
                    case 'L':
                        path.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f27 = fArr2[i2 + 0];
                        f3 = f15;
                        f4 = fArr2[i2 + 1];
                        f5 = f27;
                        f = f19;
                        f2 = f20;
                        f6 = f16;
                        break;
                    case 'M':
                        f2 = fArr2[i2 + 0];
                        f = fArr2[i2 + 1];
                        if (i2 > 0) {
                            path.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f3 = f15;
                            f4 = f;
                            f5 = f2;
                            f = f19;
                            f2 = f20;
                            f6 = f16;
                        } else {
                            path.moveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f3 = f15;
                            f4 = f;
                            f5 = f2;
                            f6 = f16;
                        }
                        break;
                    case 'Q':
                        path.quadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f28 = fArr2[i2 + 0];
                        float f29 = fArr2[i2 + 1];
                        float f30 = fArr2[i2 + 2];
                        f3 = f28;
                        f4 = fArr2[i2 + 3];
                        f5 = f30;
                        f = f19;
                        f2 = f20;
                        f6 = f29;
                        break;
                    case 'S':
                        if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                            f9 = (2.0f * f22) - f15;
                            f10 = (2.0f * f21) - f16;
                        } else {
                            f10 = f21;
                            f9 = f22;
                        }
                        path.cubicTo(f9, f10, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f31 = fArr2[i2 + 0];
                        float f32 = fArr2[i2 + 1];
                        float f33 = fArr2[i2 + 2];
                        f3 = f31;
                        f4 = fArr2[i2 + 3];
                        f5 = f33;
                        f = f19;
                        f2 = f20;
                        f6 = f32;
                        break;
                    case 'T':
                        if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                            f22 = (2.0f * f22) - f15;
                            f21 = (2.0f * f21) - f16;
                        }
                        path.quadTo(f22, f21, fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f34 = fArr2[i2 + 0];
                        f6 = f21;
                        f3 = f22;
                        f4 = fArr2[i2 + 1];
                        f5 = f34;
                        f = f19;
                        f2 = f20;
                        break;
                    case 'V':
                        path.lineTo(f22, fArr2[i2 + 0]);
                        f2 = f20;
                        f3 = f15;
                        f4 = fArr2[i2 + 0];
                        f5 = f22;
                        f6 = f16;
                        f = f19;
                        break;
                    case 'a':
                        a(path, f22, f21, fArr2[i2 + 5] + f22, fArr2[i2 + 6] + f21, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                        float f35 = f22 + fArr2[i2 + 5];
                        float f36 = fArr2[i2 + 6] + f21;
                        f = f19;
                        f2 = f20;
                        f3 = f35;
                        f4 = f36;
                        f5 = f35;
                        f6 = f36;
                        break;
                    case 'c':
                        path.rCubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        float f37 = f22 + fArr2[i2 + 2];
                        float f38 = fArr2[i2 + 3] + f21;
                        float f39 = f22 + fArr2[i2 + 4];
                        f3 = f37;
                        f4 = fArr2[i2 + 5] + f21;
                        f5 = f39;
                        f = f19;
                        f2 = f20;
                        f6 = f38;
                        break;
                    case 'h':
                        path.rLineTo(fArr2[i2 + 0], 0.0f);
                        f = f19;
                        f3 = f15;
                        f4 = f21;
                        f5 = f22 + fArr2[i2 + 0];
                        f6 = f16;
                        f2 = f20;
                        break;
                    case 'l':
                        path.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f40 = f22 + fArr2[i2 + 0];
                        f3 = f15;
                        f4 = fArr2[i2 + 1] + f21;
                        f5 = f40;
                        f = f19;
                        f2 = f20;
                        f6 = f16;
                        break;
                    case 'm':
                        f2 = f22 + fArr2[i2 + 0];
                        f = fArr2[i2 + 1] + f21;
                        if (i2 > 0) {
                            path.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f3 = f15;
                            f4 = f;
                            f5 = f2;
                            f = f19;
                            f2 = f20;
                            f6 = f16;
                        } else {
                            path.rMoveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f3 = f15;
                            f4 = f;
                            f5 = f2;
                            f6 = f16;
                        }
                        break;
                    case 'q':
                        path.rQuadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f41 = f22 + fArr2[i2 + 0];
                        float f42 = fArr2[i2 + 1] + f21;
                        float f43 = f22 + fArr2[i2 + 2];
                        f3 = f41;
                        f4 = fArr2[i2 + 3] + f21;
                        f5 = f43;
                        f = f19;
                        f2 = f20;
                        f6 = f42;
                        break;
                    case 's':
                        if (c2 != 'c' && c2 != 's' && c2 != 'C' && c2 != 'S') {
                            f12 = 0.0f;
                            f11 = 0.0f;
                        } else {
                            f11 = f22 - f15;
                            f12 = f21 - f16;
                        }
                        path.rCubicTo(f11, f12, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f44 = f22 + fArr2[i2 + 0];
                        float f45 = fArr2[i2 + 1] + f21;
                        float f46 = f22 + fArr2[i2 + 2];
                        f3 = f44;
                        f4 = fArr2[i2 + 3] + f21;
                        f5 = f46;
                        f = f19;
                        f2 = f20;
                        f6 = f45;
                        break;
                    case 't':
                        if (c2 != 'q' && c2 != 't' && c2 != 'Q' && c2 != 'T') {
                            f8 = 0.0f;
                            f7 = 0.0f;
                        } else {
                            f7 = f22 - f15;
                            f8 = f21 - f16;
                        }
                        path.rQuadTo(f7, f8, fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f47 = f22 + fArr2[i2 + 0];
                        f3 = f22 + f7;
                        f4 = fArr2[i2 + 1] + f21;
                        f5 = f47;
                        f = f19;
                        f2 = f20;
                        f6 = f8 + f21;
                        break;
                    case 'v':
                        path.rLineTo(0.0f, fArr2[i2 + 0]);
                        f2 = f20;
                        f3 = f15;
                        f4 = fArr2[i2 + 0] + f21;
                        f5 = f22;
                        f6 = f16;
                        f = f19;
                        break;
                    default:
                        f = f19;
                        f2 = f20;
                        f3 = f15;
                        f4 = f21;
                        f5 = f22;
                        f6 = f16;
                        break;
                }
                i2 += i;
                f19 = f;
                f20 = f2;
                f21 = f4;
                f22 = f5;
                c2 = c3;
                f16 = f6;
                f15 = f3;
            }
            fArr[0] = f22;
            fArr[1] = f21;
            fArr[2] = f15;
            fArr[3] = f16;
            fArr[4] = f20;
            fArr[5] = f19;
        }

        private static void a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d2;
            double d3;
            double radians = Math.toRadians(f7);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d4 = ((((double) f) * dCos) + (((double) f2) * dSin)) / ((double) f5);
            double d5 = ((((double) (-f)) * dSin) + (((double) f2) * dCos)) / ((double) f6);
            double d6 = ((((double) f3) * dCos) + (((double) f4) * dSin)) / ((double) f5);
            double d7 = ((((double) (-f3)) * dSin) + (((double) f4) * dCos)) / ((double) f6);
            double d8 = d4 - d6;
            double d9 = d5 - d7;
            double d10 = (d4 + d6) / 2.0d;
            double d11 = (d5 + d7) / 2.0d;
            double d12 = (d8 * d8) + (d9 * d9);
            if (d12 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d13 = (1.0d / d12) - 0.25d;
            if (d13 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d12);
                float fSqrt = (float) (Math.sqrt(d12) / 1.99999d);
                a(path, f, f2, f3, f4, f5 * fSqrt, f6 * fSqrt, f7, z, z2);
                return;
            }
            double dSqrt = Math.sqrt(d13);
            double d14 = d8 * dSqrt;
            double d15 = d9 * dSqrt;
            if (z == z2) {
                d2 = d10 - d15;
                d3 = d14 + d11;
            } else {
                d2 = d15 + d10;
                d3 = d11 - d14;
            }
            double dAtan2 = Math.atan2(d5 - d3, d4 - d2);
            double dAtan22 = Math.atan2(d7 - d3, d6 - d2) - dAtan2;
            if (z2 != (dAtan22 >= 0.0d)) {
                if (dAtan22 > 0.0d) {
                    dAtan22 -= 6.283185307179586d;
                } else {
                    dAtan22 += 6.283185307179586d;
                }
            }
            double d16 = ((double) f5) * d2;
            double d17 = d3 * ((double) f6);
            a(path, (d16 * dCos) - (d17 * dSin), (d16 * dSin) + (d17 * dCos), f5, f6, f, f2, radians, dAtan2, dAtan22);
        }

        private static void a(Path path, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
            int iCeil = (int) Math.ceil(Math.abs((4.0d * d10) / 3.141592653589793d));
            double dCos = Math.cos(d8);
            double dSin = Math.sin(d8);
            double dCos2 = Math.cos(d9);
            double dSin2 = Math.sin(d9);
            double d11 = (((-d4) * dCos) * dSin2) - ((d5 * dSin) * dCos2);
            double d12 = d10 / ((double) iCeil);
            int i = 0;
            double d13 = (dSin2 * (-d4) * dSin) + (dCos2 * d5 * dCos);
            double d14 = d11;
            while (i < iCeil) {
                double d15 = d9 + d12;
                double dSin3 = Math.sin(d15);
                double dCos3 = Math.cos(d15);
                double d16 = (((d4 * dCos) * dCos3) + d2) - ((d5 * dSin) * dSin3);
                double d17 = (d5 * dCos * dSin3) + (d4 * dSin * dCos3) + d3;
                double d18 = (((-d4) * dCos) * dSin3) - ((d5 * dSin) * dCos3);
                double d19 = (dCos3 * d5 * dCos) + (dSin3 * (-d4) * dSin);
                double dTan = Math.tan((d15 - d9) / 2.0d);
                double dSqrt = ((Math.sqrt((dTan * (3.0d * dTan)) + 4.0d) - 1.0d) * Math.sin(d15 - d9)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d14 * dSqrt) + d6), (float) (d7 + (d13 * dSqrt)), (float) (d16 - (dSqrt * d18)), (float) (d17 - (dSqrt * d19)), (float) d16, (float) d17);
                i++;
                d14 = d18;
                d9 = d15;
                d7 = d17;
                d6 = d16;
                d13 = d19;
            }
        }
    }
}
