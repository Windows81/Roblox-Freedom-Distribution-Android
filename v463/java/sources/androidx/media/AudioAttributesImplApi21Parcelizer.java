package androidx.media;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static b read(androidx.versionedparcelable.a aVar) {
        b bVar = new b();
        bVar.f2157a = (AudioAttributes) aVar.b(bVar.f2157a, 1);
        bVar.f2158b = aVar.b(bVar.f2158b, 2);
        return bVar;
    }

    public static void write(b bVar, androidx.versionedparcelable.a aVar) {
        aVar.a(false, false);
        aVar.a(bVar.f2157a, 1);
        aVar.a(bVar.f2158b, 2);
    }
}
