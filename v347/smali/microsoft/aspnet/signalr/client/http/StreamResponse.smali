.class public Lmicrosoft/aspnet/signalr/client/http/StreamResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/http/Response;


# instance fields
.field mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOriginalStream:Ljava/io/InputStream;

.field private mReader:Ljava/io/BufferedReader;

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mOriginalStream:Ljava/io/InputStream;

    .line 39
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mOriginalStream:Ljava/io/InputStream;

    sget-object v3, Lmicrosoft/aspnet/signalr/client/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mReader:Ljava/io/BufferedReader;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mHeaders:Ljava/util/Map;

    .line 41
    iput p2, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mStatus:I

    .line 42
    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mHeaders:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mStatus:I

    return v0
.end method

.method public readAllBytes()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const/16 v4, 0x400

    .line 48
    new-array v5, v4, [B

    .line 50
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mOriginalStream:Ljava/io/InputStream;

    invoke-virtual {v1, v5, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v2, v1

    .line 51
    :goto_0
    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    move v1, v0

    .line 52
    :goto_1
    if-ge v1, v2, :cond_0

    .line 53
    aget-byte v6, v5, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_0
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mOriginalStream:Ljava/io/InputStream;

    invoke-virtual {v1, v5, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [B

    move v1, v0

    .line 61
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 62
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v2, v1

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 65
    :cond_2
    return-object v2
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readToEnd()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    :goto_0
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
