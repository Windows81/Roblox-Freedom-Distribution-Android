package androidx.media;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f2159a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2160b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2161c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2162d = -1;

    c() {
    }

    public int a() {
        int i = this.f2162d;
        return i != -1 ? i : AudioAttributesCompat.a(false, this.f2161c, this.f2159a);
    }

    public int b() {
        return this.f2160b;
    }

    public int c() {
        return this.f2159a;
    }

    public int d() {
        int i = this.f2161c;
        int iA = a();
        if (iA == 6) {
            i |= 4;
        } else if (iA == 7) {
            i |= 1;
        }
        return i & 273;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2160b), Integer.valueOf(this.f2161c), Integer.valueOf(this.f2159a), Integer.valueOf(this.f2162d)});
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f2160b == cVar.b() && this.f2161c == cVar.d() && this.f2159a == cVar.c() && this.f2162d == cVar.f2162d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f2162d != -1) {
            sb.append(" stream=");
            sb.append(this.f2162d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.a(this.f2159a));
        sb.append(" content=");
        sb.append(this.f2160b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f2161c).toUpperCase());
        return sb.toString();
    }
}
