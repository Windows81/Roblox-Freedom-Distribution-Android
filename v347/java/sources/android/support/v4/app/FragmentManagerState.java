package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Parcelable.Creator<FragmentManagerState>() { // from class: android.support.v4.app.FragmentManagerState.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    FragmentState[] f636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    BackStackState[] f638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f639d;
    int e;

    public FragmentManagerState() {
        this.f639d = -1;
    }

    public FragmentManagerState(Parcel parcel) {
        this.f639d = -1;
        this.f636a = (FragmentState[]) parcel.createTypedArray(FragmentState.CREATOR);
        this.f637b = parcel.createIntArray();
        this.f638c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f639d = parcel.readInt();
        this.e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f636a, i);
        parcel.writeIntArray(this.f637b);
        parcel.writeTypedArray(this.f638c, i);
        parcel.writeInt(this.f639d);
        parcel.writeInt(this.e);
    }
}
