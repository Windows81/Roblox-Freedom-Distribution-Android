package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.support.v4.media.b;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() { // from class: android.support.v4.media.MediaDescriptionCompat.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            if (Build.VERSION.SDK_INT < 21) {
                return new MediaDescriptionCompat(parcel);
            }
            return MediaDescriptionCompat.a(android.support.v4.media.a.a(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CharSequence f494c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CharSequence f495d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Bitmap f496e;
    private final Uri f;
    private final Bundle g;
    private final Uri h;
    private Object i;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f492a = str;
        this.f493b = charSequence;
        this.f494c = charSequence2;
        this.f495d = charSequence3;
        this.f496e = bitmap;
        this.f = uri;
        this.g = bundle;
        this.h = uri2;
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f492a = parcel.readString();
        this.f493b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f494c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f495d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = getClass().getClassLoader();
        this.f496e = (Bitmap) parcel.readParcelable(classLoader);
        this.f = (Uri) parcel.readParcelable(classLoader);
        this.g = parcel.readBundle(classLoader);
        this.h = (Uri) parcel.readParcelable(classLoader);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.f492a);
            TextUtils.writeToParcel(this.f493b, parcel, i);
            TextUtils.writeToParcel(this.f494c, parcel, i);
            TextUtils.writeToParcel(this.f495d, parcel, i);
            parcel.writeParcelable(this.f496e, i);
            parcel.writeParcelable(this.f, i);
            parcel.writeBundle(this.g);
            parcel.writeParcelable(this.h, i);
            return;
        }
        android.support.v4.media.a.a(a(), parcel, i);
    }

    public String toString() {
        return ((Object) this.f493b) + ", " + ((Object) this.f494c) + ", " + ((Object) this.f495d);
    }

    public Object a() {
        if (this.i != null || Build.VERSION.SDK_INT < 21) {
            return this.i;
        }
        Object objA = a.C0003a.a();
        a.C0003a.a(objA, this.f492a);
        a.C0003a.a(objA, this.f493b);
        a.C0003a.b(objA, this.f494c);
        a.C0003a.c(objA, this.f495d);
        a.C0003a.a(objA, this.f496e);
        a.C0003a.a(objA, this.f);
        Bundle bundle = this.g;
        if (Build.VERSION.SDK_INT < 23 && this.h != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.h);
        }
        a.C0003a.a(objA, bundle);
        if (Build.VERSION.SDK_INT >= 23) {
            b.a.a(objA, this.h);
        }
        Object objA2 = a.C0003a.a(objA);
        this.i = objA2;
        return objA2;
    }

    public static MediaDescriptionCompat a(Object obj) {
        Uri uri;
        Bundle bundle = null;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        a aVar = new a();
        aVar.a(android.support.v4.media.a.a(obj));
        aVar.a(android.support.v4.media.a.b(obj));
        aVar.b(android.support.v4.media.a.c(obj));
        aVar.c(android.support.v4.media.a.d(obj));
        aVar.a(android.support.v4.media.a.e(obj));
        aVar.a(android.support.v4.media.a.f(obj));
        Bundle bundleG = android.support.v4.media.a.g(obj);
        if (bundleG != null) {
            MediaSessionCompat.a(bundleG);
            uri = (Uri) bundleG.getParcelable("android.support.v4.media.description.MEDIA_URI");
        } else {
            uri = null;
        }
        if (uri == null) {
            bundle = bundleG;
        } else if (!bundleG.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || bundleG.size() != 2) {
            bundleG.remove("android.support.v4.media.description.MEDIA_URI");
            bundleG.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = bundleG;
        }
        aVar.a(bundle);
        if (uri != null) {
            aVar.b(uri);
        } else if (Build.VERSION.SDK_INT >= 23) {
            aVar.b(b.a(obj));
        }
        MediaDescriptionCompat mediaDescriptionCompatA = aVar.a();
        mediaDescriptionCompatA.i = obj;
        return mediaDescriptionCompatA;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CharSequence f498b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CharSequence f499c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CharSequence f500d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Bitmap f501e;
        private Uri f;
        private Bundle g;
        private Uri h;

        public a a(String str) {
            this.f497a = str;
            return this;
        }

        public a a(CharSequence charSequence) {
            this.f498b = charSequence;
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f499c = charSequence;
            return this;
        }

        public a c(CharSequence charSequence) {
            this.f500d = charSequence;
            return this;
        }

        public a a(Bitmap bitmap) {
            this.f501e = bitmap;
            return this;
        }

        public a a(Uri uri) {
            this.f = uri;
            return this;
        }

        public a a(Bundle bundle) {
            this.g = bundle;
            return this;
        }

        public a b(Uri uri) {
            this.h = uri;
            return this;
        }

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f497a, this.f498b, this.f499c, this.f500d, this.f501e, this.f, this.g, this.h);
        }
    }
}
