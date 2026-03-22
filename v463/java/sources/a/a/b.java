package a.a;

import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f352a = "json";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Uri f355d;

    public b(String str, String str2) {
        this.f353b = str;
        this.f354c = str2;
    }

    private String b() {
        return this.f353b;
    }

    private String c() {
        return this.f354c;
    }

    private Uri d() {
        return this.f355d;
    }

    private Uri e() {
        getClass();
        return Uri.parse(String.format("%spost?format=%s&token=%s", b(), "json", c()));
    }

    public Uri a() {
        Uri uriD = d();
        return uriD != null ? uriD : e();
    }
}
