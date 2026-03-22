package androidx.media;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    AudioAttributes f2157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2158b = -1;

    b() {
    }

    public int hashCode() {
        return this.f2157a.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.f2157a.equals(((b) obj).f2157a);
        }
        return false;
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f2157a;
    }
}
