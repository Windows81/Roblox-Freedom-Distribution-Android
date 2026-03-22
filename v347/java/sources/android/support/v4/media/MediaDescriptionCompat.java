package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.support.v4.media.b;
import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() { // from class: android.support.v4.media.MediaDescriptionCompat.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.a(android.support.v4.media.a.a(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CharSequence f978c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CharSequence f979d;
    private final Bitmap e;
    private final Uri f;
    private final Bundle g;
    private final Uri h;
    private Object i;

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f976a = str;
        this.f977b = charSequence;
        this.f978c = charSequence2;
        this.f979d = charSequence3;
        this.e = bitmap;
        this.f = uri;
        this.g = bundle;
        this.h = uri2;
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f976a = parcel.readString();
        this.f977b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f978c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f979d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.e = (Bitmap) parcel.readParcelable(null);
        this.f = (Uri) parcel.readParcelable(null);
        this.g = parcel.readBundle();
        this.h = (Uri) parcel.readParcelable(null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.f976a);
            TextUtils.writeToParcel(this.f977b, parcel, i);
            TextUtils.writeToParcel(this.f978c, parcel, i);
            TextUtils.writeToParcel(this.f979d, parcel, i);
            parcel.writeParcelable(this.e, i);
            parcel.writeParcelable(this.f, i);
            parcel.writeBundle(this.g);
            parcel.writeParcelable(this.h, i);
            return;
        }
        android.support.v4.media.a.a(a(), parcel, i);
    }

    public String toString() {
        return ((Object) this.f977b) + ", " + ((Object) this.f978c) + ", " + ((Object) this.f979d);
    }

    public Object a() {
        if (this.i != null || Build.VERSION.SDK_INT < 21) {
            return this.i;
        }
        Object objA = a.C0020a.a();
        a.C0020a.a(objA, this.f976a);
        a.C0020a.a(objA, this.f977b);
        a.C0020a.b(objA, this.f978c);
        a.C0020a.c(objA, this.f979d);
        a.C0020a.a(objA, this.e);
        a.C0020a.a(objA, this.f);
        Bundle bundle = this.g;
        if (Build.VERSION.SDK_INT < 23 && this.h != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.h);
        }
        a.C0020a.a(objA, bundle);
        if (Build.VERSION.SDK_INT >= 23) {
            b.a.b(objA, this.h);
        }
        this.i = a.C0020a.a(objA);
        return this.i;
    }

    public static MediaDescriptionCompat a(Object obj) {
        Bundle bundle;
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
        Uri uri = bundleG == null ? null : (Uri) bundleG.getParcelable("android.support.v4.media.description.MEDIA_URI");
        if (uri == null) {
            bundle = bundleG;
        } else if (bundleG.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") && bundleG.size() == 2) {
            bundle = null;
        } else {
            bundleG.remove("android.support.v4.media.description.MEDIA_URI");
            bundleG.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = bundleG;
        }
        aVar.a(bundle);
        if (uri != null) {
            aVar.b(uri);
        } else if (Build.VERSION.SDK_INT >= 23) {
            aVar.b(b.h(obj));
        }
        MediaDescriptionCompat mediaDescriptionCompatA = aVar.a();
        mediaDescriptionCompatA.i = obj;
        return mediaDescriptionCompatA;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f980a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CharSequence f981b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CharSequence f982c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CharSequence f983d;
        private Bitmap e;
        private Uri f;
        private Bundle g;
        private Uri h;

        public a a(String str) {
            this.f980a = str;
            return this;
        }

        public a a(CharSequence charSequence) {
            this.f981b = charSequence;
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f982c = charSequence;
            return this;
        }

        public a c(CharSequence charSequence) {
            this.f983d = charSequence;
            return this;
        }

        public a a(Bitmap bitmap) {
            this.e = bitmap;
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
            return new MediaDescriptionCompat(this.f980a, this.f981b, this.f982c, this.f983d, this.e, this.f, this.g, this.h);
        }
    }
}
