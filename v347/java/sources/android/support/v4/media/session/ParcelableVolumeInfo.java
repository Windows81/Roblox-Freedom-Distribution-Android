package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
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
    public int f1011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1014d;
    public int e;

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f1011a = parcel.readInt();
        this.f1013c = parcel.readInt();
        this.f1014d = parcel.readInt();
        this.e = parcel.readInt();
        this.f1012b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1011a);
        parcel.writeInt(this.f1013c);
        parcel.writeInt(this.f1014d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f1012b);
    }
}
