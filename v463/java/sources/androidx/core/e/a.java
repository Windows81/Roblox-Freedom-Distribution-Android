package androidx.core.e;

import android.util.Base64;
import androidx.core.g.e;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f1367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<List<byte[]>> f1368d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1369e = 0;
    private final String f;

    public a(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f1365a = (String) e.a(str);
        this.f1366b = (String) e.a(str2);
        this.f1367c = (String) e.a(str3);
        this.f1368d = (List) e.a(list);
        this.f = this.f1365a + "-" + this.f1366b + "-" + this.f1367c;
    }

    public String a() {
        return this.f1365a;
    }

    public String b() {
        return this.f1366b;
    }

    public String c() {
        return this.f1367c;
    }

    public List<List<byte[]>> d() {
        return this.f1368d;
    }

    public int e() {
        return this.f1369e;
    }

    public String f() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f1365a + ", mProviderPackage: " + this.f1366b + ", mQuery: " + this.f1367c + ", mCertificates:");
        for (int i = 0; i < this.f1368d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f1368d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f1369e);
        return sb.toString();
    }
}
