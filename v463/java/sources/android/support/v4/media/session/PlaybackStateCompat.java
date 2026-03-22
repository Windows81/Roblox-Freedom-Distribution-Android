package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.e;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: android.support.v4.media.session.PlaybackStateCompat.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final float f541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final long f542e;
    final int f;
    final CharSequence g;
    final long h;
    List<CustomAction> i;
    final long j;
    final Bundle k;
    private Object l;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f538a = i;
        this.f539b = j;
        this.f540c = j2;
        this.f541d = f;
        this.f542e = j3;
        this.f = i2;
        this.g = charSequence;
        this.h = j4;
        this.i = new ArrayList(list);
        this.j = j5;
        this.k = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f538a = parcel.readInt();
        this.f539b = parcel.readLong();
        this.f541d = parcel.readFloat();
        this.h = parcel.readLong();
        this.f540c = parcel.readLong();
        this.f542e = parcel.readLong();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.j = parcel.readLong();
        this.k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f = parcel.readInt();
    }

    public String toString() {
        return "PlaybackState {state=" + this.f538a + ", position=" + this.f539b + ", buffered position=" + this.f540c + ", speed=" + this.f541d + ", updated=" + this.h + ", actions=" + this.f542e + ", error code=" + this.f + ", error message=" + this.g + ", custom actions=" + this.i + ", active item id=" + this.j + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f538a);
        parcel.writeLong(this.f539b);
        parcel.writeFloat(this.f541d);
        parcel.writeLong(this.h);
        parcel.writeLong(this.f540c);
        parcel.writeLong(this.f542e);
        TextUtils.writeToParcel(this.g, parcel, i);
        parcel.writeTypedList(this.i);
        parcel.writeLong(this.j);
        parcel.writeBundle(this.k);
        parcel.writeInt(this.f);
    }

    public static PlaybackStateCompat a(Object obj) {
        ArrayList arrayList;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> listH = e.h(obj);
        if (listH != null) {
            ArrayList arrayList2 = new ArrayList(listH.size());
            Iterator<Object> it = listH.iterator();
            while (it.hasNext()) {
                arrayList2.add(CustomAction.a(it.next()));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(e.a(obj), e.b(obj), e.c(obj), e.d(obj), e.e(obj), 0, e.f(obj), e.g(obj), arrayList, e.i(obj), Build.VERSION.SDK_INT >= 22 ? f.a(obj) : null);
        playbackStateCompat.l = obj;
        return playbackStateCompat;
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f543a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final CharSequence f544b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f545c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Bundle f546d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Object f547e;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f543a = str;
            this.f544b = charSequence;
            this.f545c = i;
            this.f546d = bundle;
        }

        CustomAction(Parcel parcel) {
            this.f543a = parcel.readString();
            this.f544b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f545c = parcel.readInt();
            this.f546d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f543a);
            TextUtils.writeToParcel(this.f544b, parcel, i);
            parcel.writeInt(this.f545c);
            parcel.writeBundle(this.f546d);
        }

        public static CustomAction a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(e.a.a(obj), e.a.b(obj), e.a.c(obj), e.a.d(obj));
            customAction.f547e = obj;
            return customAction;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f544b) + ", mIcon=" + this.f545c + ", mExtras=" + this.f546d;
        }
    }
}
