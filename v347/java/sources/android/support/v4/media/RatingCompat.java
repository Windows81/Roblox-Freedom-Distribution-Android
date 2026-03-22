package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() { // from class: android.support.v4.media.RatingCompat.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f989b;

    RatingCompat(int i, float f) {
        this.f988a = i;
        this.f989b = f;
    }

    public String toString() {
        return "Rating:style=" + this.f988a + " rating=" + (this.f989b < 0.0f ? "unrated" : String.valueOf(this.f989b));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f988a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f988a);
        parcel.writeFloat(this.f989b);
    }
}
