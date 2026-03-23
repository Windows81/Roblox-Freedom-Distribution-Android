.class La/a/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, La/a/h/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/h/d;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;La/a/g/b/d;La/a/d/b;)La/a/g/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "La/a/g/b/d;",
            "La/a/d/b;",
            ")",
            "La/a/g/c;"
        }
    .end annotation

    const-string v0, "Disconnecting HttpUrlConnection successful"

    const-string v1, "Disconnecting HttpUrlConnection failed"

    const/4 v2, 0x0

    .line 42
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "POST"

    .line 45
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    .line 48
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 49
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/high16 v4, 0x20000

    .line 51
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    .line 52
    invoke-virtual {p0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Cache-Control"

    const-string v5, "no-cache"

    .line 53
    invoke-virtual {p0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    .line 56
    invoke-static {}, La/a/b/d;->a()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {p0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v4, La/a/h/d;->a:Ljava/lang/String;

    const-string v5, "HttpURLConnection successfully initialized"

    invoke-static {v4, v5}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    invoke-static {v4, p1}, La/a/b/d;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 62
    invoke-static {v4, p2}, La/a/b/d;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    .line 63
    invoke-static {v4}, La/a/b/d;->a(Ljava/io/OutputStream;)V

    .line 65
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 66
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 68
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 69
    sget-object p2, La/a/h/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received response status from Backtrace API for HTTP request is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 73
    invoke-static {p0}, La/a/h/d;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, La/a/b/a;->a(Ljava/lang/String;)La/a/g/c;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p3}, La/a/g/c;->a(La/a/g/b/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_4

    .line 94
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 95
    sget-object p0, La/a/h/d;->a:Ljava/lang/String;

    invoke-static {p0, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 77
    :cond_0
    :try_start_3
    invoke-static {p0}, La/a/h/d;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v4, ""

    .line 78
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    .line 80
    :cond_2
    new-instance v4, La/a/g/c/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    aput-object p2, v7, v3

    .line 80
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, La/a/g/c/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    if-eqz p4, :cond_3

    .line 86
    :try_start_4
    sget-object p0, La/a/h/d;->a:Ljava/lang/String;

    const-string p2, "Custom handler on server error"

    invoke-static {p0, p2}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-interface {p4, p1}, La/a/d/b;->a(Ljava/lang/Exception;)V

    .line 89
    :cond_3
    sget-object p0, La/a/h/d;->a:Ljava/lang/String;

    const-string p2, "Sending HTTP request failed to Backtrace API"

    invoke-static {p0, p2, p1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    invoke-static {p3, p1}, La/a/g/c;->a(La/a/g/b/d;Ljava/lang/Exception;)La/a/g/c;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_4

    .line 94
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 95
    sget-object p0, La/a/h/d;->a:Ljava/lang/String;

    invoke-static {p0, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 97
    sget-object p1, La/a/h/d;->a:Ljava/lang/String;

    invoke-static {p1, v1, p0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    invoke-static {p3, p0}, La/a/g/c;->a(La/a/g/b/d;Ljava/lang/Exception;)La/a/g/c;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1

    :goto_2
    if-eqz v2, :cond_5

    .line 94
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 95
    sget-object p0, La/a/h/d;->a:Ljava/lang/String;

    invoke-static {p0, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 97
    sget-object p2, La/a/h/d;->a:Ljava/lang/String;

    invoke-static {p2, v1, p0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    invoke-static {p3, p0}, La/a/g/c;->a(La/a/g/b/d;Ljava/lang/Exception;)La/a/g/c;

    .line 101
    :cond_5
    :goto_3
    throw p1
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    sget-object v0, La/a/h/d;->a:Ljava/lang/String;

    const-string v1, "Reading response from HTTP request"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .line 122
    :goto_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
