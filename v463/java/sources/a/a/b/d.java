package a.a.b;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final transient String f358a = d.class.getSimpleName();

    public static String a() {
        return "multipart/form-data;boundary=*****";
    }

    public static void a(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            a.a.f.a.b(f358a, "Output stream is null");
        } else {
            outputStream.write("--*****--\r\n".getBytes());
        }
    }

    public static void a(OutputStream outputStream, String str) throws IOException {
        if (str == null || str.isEmpty() || outputStream == null) {
            a.a.f.a.b(f358a, "JSON is null/empty or output stream is null");
            return;
        }
        outputStream.write("--*****\r\n".getBytes());
        outputStream.write(a("upload_file").getBytes());
        outputStream.write("\r\n".getBytes());
        outputStream.write(str.getBytes("utf-8"));
        outputStream.write("\r\n".getBytes());
    }

    public static void a(OutputStream outputStream, List<String> list) throws IOException {
        if (list == null || outputStream == null) {
            a.a.f.a.b(f358a, "Attachments or output stream is null");
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            c(outputStream, it.next());
        }
    }

    private static void c(OutputStream outputStream, String str) throws IOException {
        if (str == null || outputStream == null) {
            a.a.f.a.b(f358a, "Absolute path or output stream is null");
            return;
        }
        String strGuessContentTypeFromName = URLConnection.guessContentTypeFromName(c.a(str));
        outputStream.write("--*****\r\n".getBytes());
        outputStream.write(a("attachment_" + c.a(str)).getBytes());
        outputStream.write(("Content-Type: " + strGuessContentTypeFromName + "\r\n").getBytes());
        outputStream.write("\r\n".getBytes());
        b(outputStream, str);
        outputStream.write("\r\n".getBytes());
    }

    public static void b(OutputStream outputStream, String str) throws IOException {
        if (outputStream == null || str == null) {
            a.a.f.a.b(f358a, "Absolute path or output stream is null");
            return;
        }
        FileInputStream fileInputStream = new FileInputStream(str);
        byte[] bArr = new byte[4096];
        while (true) {
            int i = fileInputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    private static String a(String str) {
        return "Content-Disposition: form-data; name=\"" + str + "\";filename=\"" + str + "\"\r\n";
    }
}
