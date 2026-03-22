package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.b;
import android.support.v4.media.session.c;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class MediaControllerCompat {

    public static abstract class a implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f514a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        HandlerC0004a f515b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        android.support.v4.media.session.a f516c;

        public void a() {
        }

        public void a(int i) {
        }

        public void a(Bundle bundle) {
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void a(b bVar) {
        }

        public void a(PlaybackStateCompat playbackStateCompat) {
        }

        public void a(CharSequence charSequence) {
        }

        public void a(String str, Bundle bundle) {
        }

        public void a(List<MediaSessionCompat.QueueItem> list) {
        }

        public void a(boolean z) {
        }

        public void b() {
        }

        public void b(int i) {
        }

        public a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f514a = android.support.v4.media.session.c.a(new b(this));
                return;
            }
            c cVar = new c(this);
            this.f516c = cVar;
            this.f514a = cVar;
        }

        void a(int i, Object obj, Bundle bundle) {
            HandlerC0004a handlerC0004a = this.f515b;
            if (handlerC0004a != null) {
                Message messageObtainMessage = handlerC0004a.obtainMessage(i, obj);
                messageObtainMessage.setData(bundle);
                messageObtainMessage.sendToTarget();
            }
        }

        private static class b implements c.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final WeakReference<a> f519a;

            b(a aVar) {
                this.f519a = new WeakReference<>(aVar);
            }

            @Override // android.support.v4.media.session.c.a
            public void a() {
                a aVar = this.f519a.get();
                if (aVar != null) {
                    aVar.b();
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(String str, Bundle bundle) {
                a aVar = this.f519a.get();
                if (aVar != null) {
                    if (aVar.f516c == null || Build.VERSION.SDK_INT >= 23) {
                        aVar.a(str, bundle);
                    }
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(Object obj) {
                a aVar = this.f519a.get();
                if (aVar == null || aVar.f516c != null) {
                    return;
                }
                aVar.a(PlaybackStateCompat.a(obj));
            }

            @Override // android.support.v4.media.session.c.a
            public void b(Object obj) {
                a aVar = this.f519a.get();
                if (aVar != null) {
                    aVar.a(MediaMetadataCompat.a(obj));
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(List<?> list) {
                a aVar = this.f519a.get();
                if (aVar != null) {
                    aVar.a(MediaSessionCompat.QueueItem.a(list));
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(CharSequence charSequence) {
                a aVar = this.f519a.get();
                if (aVar != null) {
                    aVar.a(charSequence);
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(Bundle bundle) {
                a aVar = this.f519a.get();
                if (aVar != null) {
                    aVar.a(bundle);
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(int i, int i2, int i3, int i4, int i5) {
                a aVar = this.f519a.get();
                if (aVar != null) {
                    aVar.a(new b(i, i2, i3, i4, i5));
                }
            }
        }

        private static class c extends a.AbstractBinderC0005a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final WeakReference<a> f520a;

            @Override // android.support.v4.media.session.a
            public void a(boolean z) throws RemoteException {
            }

            c(a aVar) {
                this.f520a = new WeakReference<>(aVar);
            }

            @Override // android.support.v4.media.session.a
            public void a(String str, Bundle bundle) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(1, str, bundle);
                }
            }

            public void a() throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void a(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(2, playbackStateCompat, null);
                }
            }

            public void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(3, mediaMetadataCompat, null);
                }
            }

            public void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(5, list, null);
                }
            }

            public void a(CharSequence charSequence) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(6, charSequence, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void b(boolean z) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(11, Boolean.valueOf(z), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void a(int i) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(9, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void b(int i) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(12, Integer.valueOf(i), null);
                }
            }

            public void a(Bundle bundle) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(7, bundle, null);
                }
            }

            public void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(4, parcelableVolumeInfo != null ? new b(parcelableVolumeInfo.f533a, parcelableVolumeInfo.f534b, parcelableVolumeInfo.f535c, parcelableVolumeInfo.f536d, parcelableVolumeInfo.f537e) : null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void b() throws RemoteException {
                a aVar = this.f520a.get();
                if (aVar != null) {
                    aVar.a(13, null, null);
                }
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$a$a, reason: collision with other inner class name */
        private class HandlerC0004a extends Handler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f517a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ a f518b;

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (this.f517a) {
                    switch (message.what) {
                        case 1:
                            Bundle data = message.getData();
                            MediaSessionCompat.a(data);
                            this.f518b.a((String) message.obj, data);
                            break;
                        case 2:
                            this.f518b.a((PlaybackStateCompat) message.obj);
                            break;
                        case 3:
                            this.f518b.a((MediaMetadataCompat) message.obj);
                            break;
                        case 4:
                            this.f518b.a((b) message.obj);
                            break;
                        case 5:
                            this.f518b.a((List<MediaSessionCompat.QueueItem>) message.obj);
                            break;
                        case 6:
                            this.f518b.a((CharSequence) message.obj);
                            break;
                        case 7:
                            Bundle bundle = (Bundle) message.obj;
                            MediaSessionCompat.a(bundle);
                            this.f518b.a(bundle);
                            break;
                        case 8:
                            this.f518b.b();
                            break;
                        case 9:
                            this.f518b.a(((Integer) message.obj).intValue());
                            break;
                        case 11:
                            this.f518b.a(((Boolean) message.obj).booleanValue());
                            break;
                        case 12:
                            this.f518b.b(((Integer) message.obj).intValue());
                            break;
                        case 13:
                            this.f518b.a();
                            break;
                    }
                }
            }
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f521a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f522b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f523c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f524d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f525e;

        b(int i, int i2, int i3, int i4, int i5) {
            this.f521a = i;
            this.f522b = i2;
            this.f523c = i3;
            this.f524d = i4;
            this.f525e = i5;
        }
    }

    static class MediaControllerImplApi21 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f509a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final MediaSessionCompat.Token f510b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<a> f511c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private HashMap<a, a> f512d;

        void a() {
            if (this.f510b.a() == null) {
                return;
            }
            for (a aVar : this.f511c) {
                a aVar2 = new a(aVar);
                this.f512d.put(aVar, aVar2);
                aVar.f516c = aVar2;
                try {
                    this.f510b.a().a(aVar2);
                    aVar.a(13, null, null);
                } catch (RemoteException e2) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e2);
                }
            }
            this.f511c.clear();
        }

        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private WeakReference<MediaControllerImplApi21> f513a;

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f513a.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f509a) {
                    mediaControllerImplApi21.f510b.a(b.a.a(androidx.core.app.d.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                    mediaControllerImplApi21.f510b.a(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
                    mediaControllerImplApi21.a();
                }
            }
        }

        private static class a extends a.c {
            a(a aVar) {
                super(aVar);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }
        }
    }
}
