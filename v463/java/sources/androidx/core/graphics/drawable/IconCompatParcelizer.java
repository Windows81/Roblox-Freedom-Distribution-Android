package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(androidx.versionedparcelable.a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1436a = aVar.b(iconCompat.f1436a, 1);
        iconCompat.f1438c = aVar.b(iconCompat.f1438c, 2);
        iconCompat.f1439d = aVar.b(iconCompat.f1439d, 3);
        iconCompat.f1440e = aVar.b(iconCompat.f1440e, 4);
        iconCompat.f = aVar.b(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) aVar.b(iconCompat.g, 6);
        iconCompat.j = aVar.b(iconCompat.j, 7);
        iconCompat.c();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, androidx.versionedparcelable.a aVar) {
        aVar.a(true, true);
        iconCompat.a(aVar.a());
        aVar.a(iconCompat.f1436a, 1);
        aVar.a(iconCompat.f1438c, 2);
        aVar.a(iconCompat.f1439d, 3);
        aVar.a(iconCompat.f1440e, 4);
        aVar.a(iconCompat.f, 5);
        aVar.a(iconCompat.g, 6);
        aVar.a(iconCompat.j, 7);
    }
}
