package android.arch.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f37a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f38b;

    public a(String str, Object[] objArr) {
        this.f37a = str;
        this.f38b = objArr;
    }

    public a(String str) {
        this(str, null);
    }

    @Override // android.arch.b.a.e
    public String a() {
        return this.f37a;
    }

    @Override // android.arch.b.a.e
    public void a(d dVar) {
        a(dVar, this.f38b);
    }

    public static void a(d dVar, Object[] objArr) {
        if (objArr != null) {
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                a(dVar, i + 1, objArr[i]);
            }
        }
    }

    private static void a(d dVar, int i, Object obj) {
        if (obj == null) {
            dVar.a(i);
            return;
        }
        if (obj instanceof byte[]) {
            dVar.a(i, (byte[]) obj);
            return;
        }
        if (obj instanceof Float) {
            dVar.a(i, ((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            dVar.a(i, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Long) {
            dVar.a(i, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof Integer) {
            dVar.a(i, ((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Short) {
            dVar.a(i, ((Short) obj).shortValue());
        } else if (obj instanceof Byte) {
            dVar.a(i, ((Byte) obj).byteValue());
        } else {
            if (obj instanceof String) {
                dVar.a(i, (String) obj);
                return;
            }
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
        }
    }
}
