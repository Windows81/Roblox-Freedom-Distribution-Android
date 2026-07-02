package a.a.a.a;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static void a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }
}
