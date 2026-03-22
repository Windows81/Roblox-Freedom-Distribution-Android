package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() { // from class: android.support.v4.app.FragmentState.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f643d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final Bundle i;
    final boolean j;
    Bundle k;
    Fragment l;

    FragmentState(Fragment fragment) {
        this.f640a = fragment.getClass().getName();
        this.f641b = fragment.mIndex;
        this.f642c = fragment.mFromLayout;
        this.f643d = fragment.mFragmentId;
        this.e = fragment.mContainerId;
        this.f = fragment.mTag;
        this.g = fragment.mRetainInstance;
        this.h = fragment.mDetached;
        this.i = fragment.mArguments;
        this.j = fragment.mHidden;
    }

    FragmentState(Parcel parcel) {
        this.f640a = parcel.readString();
        this.f641b = parcel.readInt();
        this.f642c = parcel.readInt() != 0;
        this.f643d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        this.h = parcel.readInt() != 0;
        this.i = parcel.readBundle();
        this.j = parcel.readInt() != 0;
        this.k = parcel.readBundle();
    }

    public Fragment a(k kVar, i iVar, Fragment fragment, n nVar) {
        if (this.l == null) {
            Context contextI = kVar.i();
            if (this.i != null) {
                this.i.setClassLoader(contextI.getClassLoader());
            }
            if (iVar != null) {
                this.l = iVar.a(contextI, this.f640a, this.i);
            } else {
                this.l = Fragment.instantiate(contextI, this.f640a, this.i);
            }
            if (this.k != null) {
                this.k.setClassLoader(contextI.getClassLoader());
                this.l.mSavedFragmentState = this.k;
            }
            this.l.setIndex(this.f641b, fragment);
            this.l.mFromLayout = this.f642c;
            this.l.mRestored = true;
            this.l.mFragmentId = this.f643d;
            this.l.mContainerId = this.e;
            this.l.mTag = this.f;
            this.l.mRetainInstance = this.g;
            this.l.mDetached = this.h;
            this.l.mHidden = this.j;
            this.l.mFragmentManager = kVar.f716d;
            if (m.f717a) {
                Log.v("FragmentManager", "Instantiated fragment " + this.l);
            }
        }
        this.l.mChildNonConfig = nVar;
        return this.l;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f640a);
        parcel.writeInt(this.f641b);
        parcel.writeInt(this.f642c ? 1 : 0);
        parcel.writeInt(this.f643d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeBundle(this.i);
        parcel.writeInt(this.j ? 1 : 0);
        parcel.writeBundle(this.k);
    }
}
