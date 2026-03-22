package android.support.v4.media;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final androidx.c.a<String, Integer> f502a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f504d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f505e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Bundle f506b;
    private Object f;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    static {
        androidx.c.a<String, Integer> aVar = new androidx.c.a<>();
        f502a = aVar;
        aVar.put("android.media.metadata.TITLE", 1);
        f502a.put("android.media.metadata.ARTIST", 1);
        f502a.put("android.media.metadata.DURATION", 0);
        f502a.put("android.media.metadata.ALBUM", 1);
        f502a.put("android.media.metadata.AUTHOR", 1);
        f502a.put("android.media.metadata.WRITER", 1);
        f502a.put("android.media.metadata.COMPOSER", 1);
        f502a.put("android.media.metadata.COMPILATION", 1);
        f502a.put("android.media.metadata.DATE", 1);
        f502a.put("android.media.metadata.YEAR", 0);
        f502a.put("android.media.metadata.GENRE", 1);
        f502a.put("android.media.metadata.TRACK_NUMBER", 0);
        f502a.put("android.media.metadata.NUM_TRACKS", 0);
        f502a.put("android.media.metadata.DISC_NUMBER", 0);
        f502a.put("android.media.metadata.ALBUM_ARTIST", 1);
        f502a.put("android.media.metadata.ART", 2);
        f502a.put("android.media.metadata.ART_URI", 1);
        f502a.put("android.media.metadata.ALBUM_ART", 2);
        f502a.put("android.media.metadata.ALBUM_ART_URI", 1);
        f502a.put("android.media.metadata.USER_RATING", 3);
        f502a.put("android.media.metadata.RATING", 3);
        f502a.put("android.media.metadata.DISPLAY_TITLE", 1);
        f502a.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        f502a.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        f502a.put("android.media.metadata.DISPLAY_ICON", 2);
        f502a.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        f502a.put("android.media.metadata.MEDIA_ID", 1);
        f502a.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        f502a.put("android.media.metadata.MEDIA_URI", 1);
        f502a.put("android.media.metadata.ADVERTISEMENT", 0);
        f502a.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        f503c = new String[]{"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};
        f504d = new String[]{"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};
        f505e = new String[]{"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
        CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: android.support.v4.media.MediaMetadataCompat.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MediaMetadataCompat createFromParcel(Parcel parcel) {
                return new MediaMetadataCompat(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MediaMetadataCompat[] newArray(int i) {
                return new MediaMetadataCompat[i];
            }
        };
    }

    MediaMetadataCompat(Parcel parcel) {
        this.f506b = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f506b);
    }

    public static MediaMetadataCompat a(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        c.a(obj, parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        MediaMetadataCompat mediaMetadataCompatCreateFromParcel = CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        mediaMetadataCompatCreateFromParcel.f = obj;
        return mediaMetadataCompatCreateFromParcel;
    }
}
