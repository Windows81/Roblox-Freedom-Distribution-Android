package androidx.media;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static c read(androidx.versionedparcelable.a aVar) {
        c cVar = new c();
        cVar.f2159a = aVar.b(cVar.f2159a, 1);
        cVar.f2160b = aVar.b(cVar.f2160b, 2);
        cVar.f2161c = aVar.b(cVar.f2161c, 3);
        cVar.f2162d = aVar.b(cVar.f2162d, 4);
        return cVar;
    }

    public static void write(c cVar, androidx.versionedparcelable.a aVar) {
        aVar.a(false, false);
        aVar.a(cVar.f2159a, 1);
        aVar.a(cVar.f2160b, 2);
        aVar.a(cVar.f2161c, 3);
        aVar.a(cVar.f2162d, 4);
    }
}
