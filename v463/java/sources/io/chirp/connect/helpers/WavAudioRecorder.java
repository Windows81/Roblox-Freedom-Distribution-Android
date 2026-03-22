package io.chirp.connect.helpers;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class WavAudioRecorder {
    private int bitsPerSample = 16;
    private Context context;
    private File outputDir;
    private String wavFilename;
    private File wavOutputFile;
    DataOutputStream wavOutputStream;

    public WavAudioRecorder(Context context, String str, File file) throws Exception {
        this.wavFilename = str;
        this.context = context;
        this.outputDir = file;
        if (!file.exists() && !file.mkdirs()) {
            throw new Exception("Unable to create output directory.");
        }
    }

    private static void broadCastToMediaScanner(Context context, File file) {
        Uri uriFromFile = Uri.fromFile(file);
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(uriFromFile);
        context.sendBroadcast(intent);
    }

    private int calculatePayloadSize(int i, int i2, float f) {
        return ((int) ((i * i2) * f)) / 8;
    }

    private void writeInt(DataOutputStream dataOutputStream, int i) throws IOException {
        dataOutputStream.write(i >> 0);
        dataOutputStream.write(i >> 8);
        dataOutputStream.write(i >> 16);
        dataOutputStream.write(i >> 24);
    }

    private void writeShort(DataOutputStream dataOutputStream, short s) throws IOException {
        dataOutputStream.write(s >> 0);
        dataOutputStream.write(s >> 8);
    }

    private void writeString(DataOutputStream dataOutputStream, String str) throws IOException {
        for (int i = 0; i < str.length(); i++) {
            dataOutputStream.write(str.charAt(i));
        }
    }

    public void closeWav() {
        this.wavOutputStream.close();
        broadCastToMediaScanner(this.context, this.wavOutputFile);
    }

    public void createWav(int i, float f) {
        this.wavOutputFile = new File(this.outputDir, this.wavFilename);
        this.wavOutputStream = new DataOutputStream(new FileOutputStream(this.wavOutputFile));
        int iCalculatePayloadSize = calculatePayloadSize(this.bitsPerSample, i, f);
        writeString(this.wavOutputStream, "RIFF");
        writeInt(this.wavOutputStream, iCalculatePayloadSize + 36);
        writeString(this.wavOutputStream, "WAVE");
        writeString(this.wavOutputStream, "fmt ");
        writeInt(this.wavOutputStream, 16);
        writeShort(this.wavOutputStream, (short) 1);
        writeShort(this.wavOutputStream, (short) 1);
        writeInt(this.wavOutputStream, i);
        writeInt(this.wavOutputStream, i * 2);
        writeShort(this.wavOutputStream, (short) 2);
        writeShort(this.wavOutputStream, (short) this.bitsPerSample);
        writeString(this.wavOutputStream, "data");
        writeInt(this.wavOutputStream, iCalculatePayloadSize);
    }

    public void writeWav(byte[] bArr) {
        this.wavOutputStream.write(bArr, 0, bArr.length);
    }
}
