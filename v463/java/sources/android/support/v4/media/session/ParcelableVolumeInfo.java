package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new Parcelable.Creator<ParcelableVolumeInfo>() { // from class: android.support.v4.media.session.ParcelableVolumeInfo.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ParcelableVolumeInfo[] newArray(int i) {
            return new ParcelableVolumeInfo[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f535c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f536d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f537e;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f533a = parcel.readInt();
        this.f535c = parcel.readInt();
        this.f536d = parcel.readInt();
        this.f537e = parcel.readInt();
        this.f534b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f533a);
        parcel.writeInt(this.f535c);
        parcel.writeInt(this.f536d);
        parcel.writeInt(this.f537e);
        parcel.writeInt(this.f534b);
    }
}
