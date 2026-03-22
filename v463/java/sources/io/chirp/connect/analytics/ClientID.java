package io.chirp.connect.analytics;

import android.content.Context;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ClientID {
    private String filename = "chirp-uuid";
    private String uuid;

    ClientID(Context context) {
        this.uuid = !uuidExists(context) ? createUuid(context) : readUuid(context);
    }

    private String createUuid(Context context) throws IOException {
        this.uuid = UUID.randomUUID().toString();
        FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(this.filename, 0);
        fileOutputStreamOpenFileOutput.write(this.uuid.getBytes());
        fileOutputStreamOpenFileOutput.close();
        return this.uuid;
    }

    private String readUuid(Context context) throws IOException {
        byte[] bArr = new byte[0];
        FileInputStream fileInputStreamOpenFileInput = context.openFileInput(this.filename);
        fileInputStreamOpenFileInput.read(bArr);
        this.uuid = bArr.toString();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStreamOpenFileInput));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                String string = sb.toString();
                this.uuid = string;
                return string;
            }
            sb.append(line);
        }
    }

    private boolean uuidExists(Context context) {
        return context.getFileStreamPath(this.filename).exists();
    }

    public String getUuid() {
        return this.uuid;
    }
}
