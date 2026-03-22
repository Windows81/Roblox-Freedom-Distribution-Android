package android.support.v4.e;

import android.support.v4.g.l;
import android.util.Base64;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<List<byte[]>> f873d;
    private final int e = 0;
    private final String f;

    public a(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f870a = (String) l.a(str);
        this.f871b = (String) l.a(str2);
        this.f872c = (String) l.a(str3);
        this.f873d = (List) l.a(list);
        this.f = this.f870a + "-" + this.f871b + "-" + this.f872c;
    }

    public String a() {
        return this.f870a;
    }

    public String b() {
        return this.f871b;
    }

    public String c() {
        return this.f872c;
    }

    public List<List<byte[]>> d() {
        return this.f873d;
    }

    public int e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f870a + ", mProviderPackage: " + this.f871b + ", mQuery: " + this.f872c + ", mCertificates:");
        for (int i = 0; i < this.f873d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f873d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.e);
        return sb.toString();
    }
}
