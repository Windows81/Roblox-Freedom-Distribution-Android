package a.a.a.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object[] f1a = new Object[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class<?>[] f2b = new Class[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f3c = new String[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long[] f4d = new long[0];
    public static final Long[] e = new Long[0];
    public static final int[] f = new int[0];
    public static final Integer[] g = new Integer[0];
    public static final short[] h = new short[0];
    public static final Short[] i = new Short[0];
    public static final byte[] j = new byte[0];
    public static final Byte[] k = new Byte[0];
    public static final double[] l = new double[0];
    public static final Double[] m = new Double[0];
    public static final float[] n = new float[0];
    public static final Float[] o = new Float[0];
    public static final boolean[] p = new boolean[0];
    public static final Boolean[] q = new Boolean[0];
    public static final char[] r = new char[0];
    public static final Character[] s = new Character[0];

    public static int a(Object[] objArr, Object obj) {
        return a(objArr, obj, 0);
    }

    public static int a(Object[] objArr, Object obj, int i2) {
        if (objArr == null) {
            return -1;
        }
        int i3 = i2 < 0 ? 0 : i2;
        if (obj == null) {
            while (i3 < objArr.length) {
                if (objArr[i3] != null) {
                    i3++;
                } else {
                    return i3;
                }
            }
        } else if (objArr.getClass().getComponentType().isInstance(obj)) {
            while (i3 < objArr.length) {
                if (!obj.equals(objArr[i3])) {
                    i3++;
                } else {
                    return i3;
                }
            }
        }
        return -1;
    }

    public static boolean b(Object[] objArr, Object obj) {
        return a(objArr, obj) != -1;
    }
}
