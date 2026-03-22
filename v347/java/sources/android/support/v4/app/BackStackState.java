package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.c;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: android.support.v4.app.BackStackState.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int[] f625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f628d;
    final int e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;
    final ArrayList<String> j;
    final ArrayList<String> k;
    final boolean l;

    public BackStackState(c cVar) {
        int size = cVar.f692b.size();
        this.f625a = new int[size * 6];
        if (!cVar.i) {
            throw new IllegalStateException("Not on back stack");
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c.a aVar = cVar.f692b.get(i2);
            int i3 = i + 1;
            this.f625a[i] = aVar.f695a;
            int i4 = i3 + 1;
            this.f625a[i3] = aVar.f696b != null ? aVar.f696b.mIndex : -1;
            int i5 = i4 + 1;
            this.f625a[i4] = aVar.f697c;
            int i6 = i5 + 1;
            this.f625a[i5] = aVar.f698d;
            int i7 = i6 + 1;
            this.f625a[i6] = aVar.e;
            i = i7 + 1;
            this.f625a[i7] = aVar.f;
        }
        this.f626b = cVar.g;
        this.f627c = cVar.h;
        this.f628d = cVar.k;
        this.e = cVar.m;
        this.f = cVar.n;
        this.g = cVar.o;
        this.h = cVar.p;
        this.i = cVar.q;
        this.j = cVar.r;
        this.k = cVar.s;
        this.l = cVar.t;
    }

    public BackStackState(Parcel parcel) {
        this.f625a = parcel.createIntArray();
        this.f626b = parcel.readInt();
        this.f627c = parcel.readInt();
        this.f628d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.h = parcel.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.createStringArrayList();
        this.k = parcel.createStringArrayList();
        this.l = parcel.readInt() != 0;
    }

    public c a(m mVar) {
        int i = 0;
        c cVar = new c(mVar);
        int i2 = 0;
        while (i < this.f625a.length) {
            c.a aVar = new c.a();
            int i3 = i + 1;
            aVar.f695a = this.f625a[i];
            if (m.f717a) {
                Log.v("FragmentManager", "Instantiate " + cVar + " op #" + i2 + " base fragment #" + this.f625a[i3]);
            }
            int i4 = i3 + 1;
            int i5 = this.f625a[i3];
            if (i5 >= 0) {
                aVar.f696b = mVar.f.get(i5);
            } else {
                aVar.f696b = null;
            }
            int i6 = i4 + 1;
            aVar.f697c = this.f625a[i4];
            int i7 = i6 + 1;
            aVar.f698d = this.f625a[i6];
            int i8 = i7 + 1;
            aVar.e = this.f625a[i7];
            aVar.f = this.f625a[i8];
            cVar.f693c = aVar.f697c;
            cVar.f694d = aVar.f698d;
            cVar.e = aVar.e;
            cVar.f = aVar.f;
            cVar.a(aVar);
            i2++;
            i = i8 + 1;
        }
        cVar.g = this.f626b;
        cVar.h = this.f627c;
        cVar.k = this.f628d;
        cVar.m = this.e;
        cVar.i = true;
        cVar.n = this.f;
        cVar.o = this.g;
        cVar.p = this.h;
        cVar.q = this.i;
        cVar.r = this.j;
        cVar.s = this.k;
        cVar.t = this.l;
        cVar.a(1);
        return cVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f625a);
        parcel.writeInt(this.f626b);
        parcel.writeInt(this.f627c);
        parcel.writeString(this.f628d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        TextUtils.writeToParcel(this.g, parcel, 0);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeStringList(this.j);
        parcel.writeStringList(this.k);
        parcel.writeInt(this.l ? 1 : 0);
    }
}
