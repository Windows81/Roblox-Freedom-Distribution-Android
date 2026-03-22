package org.fmod;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaDataSource;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class MediaCodec {
    private long mCodecPtr = 0;
    private long mLength = 0;
    private int mSampleRate = 0;
    private int mChannelCount = 0;
    private boolean mInputFinished = false;
    private boolean mOutputFinished = false;
    private android.media.MediaCodec mDecoder = null;
    private Object mDataSourceProxy = null;
    private MediaExtractor mExtractor = null;
    private ByteBuffer[] mInputBuffers = null;
    private ByteBuffer[] mOutputBuffers = null;
    private int mCurrentOutputBufferIndex = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public static native long fmodGetSize(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int fmodReadAt(long j, long j2, byte[] bArr, int i, int i2);

    public long getLength() {
        return this.mLength;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public int getChannelCount() {
        return this.mChannelCount;
    }

    public boolean init(long j) {
        this.mCodecPtr = j;
        if (Build.VERSION.SDK_INT < 17) {
            Log.w("fmod", "MediaCodec::init : MediaCodec unavailable, ensure device is running at least 4.2 (JellyBean).\n");
            return false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            try {
                Class<?> cls = Class.forName("android.media.DataSource");
                Method method = Class.forName("android.media.MediaExtractor").getMethod("setDataSource", cls);
                this.mExtractor = new MediaExtractor();
                Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: org.fmod.MediaCodec.1DataSource
                    @Override // java.lang.reflect.InvocationHandler
                    public Object invoke(Object obj, Method method2, Object[] objArr) {
                        if (method2.getName().equals("readAt")) {
                            return Integer.valueOf(MediaCodec.fmodReadAt(MediaCodec.this.mCodecPtr, ((Long) objArr[0]).longValue(), (byte[]) objArr[1], 0, ((Integer) objArr[2]).intValue()));
                        }
                        if (method2.getName().equals("getSize")) {
                            return Long.valueOf(MediaCodec.fmodGetSize(MediaCodec.this.mCodecPtr));
                        }
                        if (method2.getName().equals("close")) {
                            return null;
                        }
                        Log.w("fmod", "MediaCodec::DataSource::invoke : Unrecognised method found: " + method2.getName());
                        return null;
                    }
                });
                this.mDataSourceProxy = objNewProxyInstance;
                method.invoke(this.mExtractor, objNewProxyInstance);
            } catch (ClassNotFoundException e2) {
                Log.w("fmod", "MediaCodec::init : " + e2.toString());
                return false;
            } catch (IllegalAccessException e3) {
                Log.e("fmod", "MediaCodec::init : " + e3.toString());
                return false;
            } catch (NoSuchMethodException e4) {
                Log.w("fmod", "MediaCodec::init : " + e4.toString());
                return false;
            } catch (InvocationTargetException e5) {
                Log.e("fmod", "MediaCodec::init : " + e5.toString());
                return false;
            }
        } else {
            try {
                MediaExtractor mediaExtractor = new MediaExtractor();
                this.mExtractor = mediaExtractor;
                mediaExtractor.setDataSource(new MediaDataSource() { // from class: org.fmod.MediaCodec.2DataSource
                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                    }

                    @Override // android.media.MediaDataSource
                    public int readAt(long j2, byte[] bArr, int i, int i2) {
                        return MediaCodec.fmodReadAt(MediaCodec.this.mCodecPtr, j2, bArr, i, i2);
                    }

                    @Override // android.media.MediaDataSource
                    public long getSize() {
                        return MediaCodec.fmodGetSize(MediaCodec.this.mCodecPtr);
                    }
                });
            } catch (IOException e6) {
                Log.w("fmod", "MediaCodec::init : " + e6.toString());
                return false;
            }
        }
        int trackCount = this.mExtractor.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            MediaFormat trackFormat = this.mExtractor.getTrackFormat(i);
            String string = trackFormat.getString("mime");
            Log.d("fmod", "MediaCodec::init : Format " + i + " / " + trackCount + " -- " + trackFormat);
            if (string.equals("audio/mp4a-latm")) {
                try {
                    this.mDecoder = android.media.MediaCodec.createDecoderByType(string);
                    this.mExtractor.selectTrack(i);
                    this.mDecoder.configure(trackFormat, (Surface) null, (MediaCrypto) null, 0);
                    this.mDecoder.start();
                    this.mInputBuffers = this.mDecoder.getInputBuffers();
                    this.mOutputBuffers = this.mDecoder.getOutputBuffers();
                    int integer = trackFormat.containsKey("encoder-delay") ? trackFormat.getInteger("encoder-delay") : 0;
                    int integer2 = trackFormat.containsKey("encoder-padding") ? trackFormat.getInteger("encoder-padding") : 0;
                    long j2 = trackFormat.getLong("durationUs");
                    this.mChannelCount = trackFormat.getInteger("channel-count");
                    this.mSampleRate = trackFormat.getInteger("sample-rate");
                    this.mLength = (((int) (((j2 * ((long) r11)) + 999999) / 1000000)) - integer) - integer2;
                    return true;
                } catch (IOException e7) {
                    Log.e("fmod", "MediaCodec::init : " + e7.toString());
                    return false;
                }
            }
        }
        return false;
    }

    public void release() {
        android.media.MediaCodec mediaCodec = this.mDecoder;
        if (mediaCodec != null) {
            mediaCodec.stop();
            this.mDecoder.release();
            this.mDecoder = null;
        }
        MediaExtractor mediaExtractor = this.mExtractor;
        if (mediaExtractor != null) {
            mediaExtractor.release();
            this.mExtractor = null;
        }
    }

    public int read(byte[] bArr, int i) {
        int iDequeueInputBuffer;
        int i2 = (this.mInputFinished && this.mOutputFinished && this.mCurrentOutputBufferIndex == -1) ? -1 : 0;
        while (!this.mInputFinished && (iDequeueInputBuffer = this.mDecoder.dequeueInputBuffer(0L)) >= 0) {
            int sampleData = this.mExtractor.readSampleData(this.mInputBuffers[iDequeueInputBuffer], 0);
            if (sampleData >= 0) {
                this.mDecoder.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, this.mExtractor.getSampleTime(), 0);
                this.mExtractor.advance();
            } else {
                this.mDecoder.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                this.mInputFinished = true;
            }
        }
        if (!this.mOutputFinished && this.mCurrentOutputBufferIndex == -1) {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mDecoder.dequeueOutputBuffer(bufferInfo, 10000L);
            if (iDequeueOutputBuffer >= 0) {
                this.mCurrentOutputBufferIndex = iDequeueOutputBuffer;
                this.mOutputBuffers[iDequeueOutputBuffer].limit(bufferInfo.size);
                this.mOutputBuffers[iDequeueOutputBuffer].position(bufferInfo.offset);
            } else if (iDequeueOutputBuffer == -3) {
                this.mOutputBuffers = this.mDecoder.getOutputBuffers();
            } else if (iDequeueOutputBuffer == -2) {
                Log.d("fmod", "MediaCodec::read : MediaCodec::dequeueOutputBuffer returned MediaCodec.INFO_OUTPUT_FORMAT_CHANGED " + this.mDecoder.getOutputFormat());
            } else if (iDequeueOutputBuffer == -1) {
                Log.d("fmod", "MediaCodec::read : MediaCodec::dequeueOutputBuffer returned MediaCodec.INFO_TRY_AGAIN_LATER.");
            } else {
                Log.w("fmod", "MediaCodec::read : MediaCodec::dequeueOutputBuffer returned " + iDequeueOutputBuffer);
            }
            if ((bufferInfo.flags & 4) != 0) {
                this.mOutputFinished = true;
            }
        }
        int i3 = this.mCurrentOutputBufferIndex;
        if (i3 == -1) {
            return i2;
        }
        ByteBuffer byteBuffer = this.mOutputBuffers[i3];
        int iMin = Math.min(byteBuffer.remaining(), i);
        byteBuffer.get(bArr, 0, iMin);
        if (!byteBuffer.hasRemaining()) {
            byteBuffer.clear();
            this.mDecoder.releaseOutputBuffer(this.mCurrentOutputBufferIndex, false);
            this.mCurrentOutputBufferIndex = -1;
        }
        return iMin;
    }

    public void seek(int i) {
        int i2 = this.mCurrentOutputBufferIndex;
        if (i2 != -1) {
            this.mOutputBuffers[i2].clear();
            this.mCurrentOutputBufferIndex = -1;
        }
        this.mInputFinished = false;
        this.mOutputFinished = false;
        this.mDecoder.flush();
        long j = i;
        this.mExtractor.seekTo((j * 1000000) / ((long) this.mSampleRate), 0);
        long sampleTime = ((this.mExtractor.getSampleTime() * ((long) this.mSampleRate)) + 999999) / 1000000;
        int i3 = (int) ((j - sampleTime) * ((long) this.mChannelCount) * 2);
        if (i3 >= 0) {
            byte[] bArr = new byte[1024];
            while (i3 > 0) {
                i3 -= read(bArr, Math.min(1024, i3));
            }
        } else {
            Log.w("fmod", "MediaCodec::seek : Seek to " + i + " resulted in position " + sampleTime);
        }
    }
}
