package android.support.v4.media;

import android.media.MediaDescription;
import android.net.Uri;
import android.support.v4.media.a;

/* JADX INFO: loaded from: classes.dex */
class b extends android.support.v4.media.a {
    public static Uri h(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }

    static class a extends a.C0020a {
        public static void b(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }
}
