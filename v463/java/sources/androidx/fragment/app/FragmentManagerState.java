package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Parcelable.Creator<FragmentManagerState>() { // from class: androidx.fragment.app.FragmentManagerState.1
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
    FragmentState[] f1642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f1643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    BackStackState[] f1644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1646e;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FragmentManagerState() {
        this.f1645d = -1;
    }

    public FragmentManagerState(Parcel parcel) {
        this.f1645d = -1;
        this.f1642a = (FragmentState[]) parcel.createTypedArray(FragmentState.CREATOR);
        this.f1643b = parcel.createIntArray();
        this.f1644c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f1645d = parcel.readInt();
        this.f1646e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f1642a, i);
        parcel.writeIntArray(this.f1643b);
        parcel.writeTypedArray(this.f1644c, i);
        parcel.writeInt(this.f1645d);
        parcel.writeInt(this.f1646e);
    }
}
