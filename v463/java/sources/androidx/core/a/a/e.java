package androidx.core.a.a;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f1263a = !e.class.desiredAssertionStatus();

    public static int a(int i) {
        if (i <= 4) {
            return 8;
        }
        return i * 2;
    }

    public static <T> T[] a(T[] tArr, int i, T t) {
        if (!f1263a && i > tArr.length) {
            throw new AssertionError();
        }
        if (i + 1 > tArr.length) {
            Object[] objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), a(i));
            System.arraycopy(tArr, 0, objArr, 0, i);
            tArr = (T[]) objArr;
        }
        tArr[i] = t;
        return tArr;
    }

    public static int[] a(int[] iArr, int i, int i2) {
        if (!f1263a && i > iArr.length) {
            throw new AssertionError();
        }
        if (i + 1 > iArr.length) {
            int[] iArr2 = new int[a(i)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr = iArr2;
        }
        iArr[i] = i2;
        return iArr;
    }

    private e() {
    }
}
